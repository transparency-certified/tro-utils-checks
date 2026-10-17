# tro-utils-checks

This repository makes TRO declarations with
[`tro-utils`](https://github.com/transparency-certified/tro-utils), checks them using
[`tro-checks`](https://github.com/transparency-certified/tro-checks), and reports what it
found. The report for each target is listed in [`reports/README.md`](reports/README.md).

This repository does not define its own checks. It performs those defined by the
`tro-checks` module on candidates `tro-utils` makes from the arrangements and resources in this repository.

The image installs the release of `tro-utils` named by `TRO_UTILS_VERSION` in
[`Dockerfile`](Dockerfile), and the candidates change with that release only when it is changed
there. Moving that one line is the whole of a version bump: the candidates and the reports that go
with it are made by CI, in the image that line describes. See [Updating
`tro-utils`](#updating-tro-utils).

## Key files

| File | What it is |
| --- | --- |
| [`arrangements/`](arrangements/README.md) | The sets of files the candidates record as arrangements. |
| [`resources/`](resources/README.md) | The other files the candidates are made from. |
| [`make-candidates`](make-candidates) | Script that uses `tro-utils` to create the candidates from the arrangements and resources. |
| [`candidates/`](candidates) | The candidates created by `make-candidates` and assessed by `tro-checks`. |
| [`candidates/manifest.json`](candidates/manifest.json) | Describes each candidate and lists the versions and tiers it targets. |
| [`reports/`](reports) | The reports of what the checks found. |
| [`Dockerfile`](Dockerfile) | Installs `tro-checks` and a particular release of `tro-utils`. |
| [`.github/workflows/`](.github/workflows) | Remake the candidates and the reports, check that the committed ones are the ones the image makes, and publish the image. |

## Running it

In the top-level directory of this repository, check the candidates and regenerate the reports:

```
make build-reports
```

This checks the candidates as they are, so a candidate edited by hand is checked as edited. To remake the candidates with `tro-utils`, discarding any such edits:

```
make build-candidates
```

These commands automatically download the Docker image they depend on if it isn't already on your machine. To later ensure you have the latest image, run `make pull-image`. After changing the `Dockerfile` locally, rebuild the image with `make build-image`.

## Updating `tro-utils`

Change the version in the one place it is named, and open a pull request with just that change:

```
ARG TRO_UTILS_VERSION=0.5.1
```

Everything else is done for you, in this order:

1. **Regenerate** runs on the push, builds the image from the `Dockerfile` on your branch, remakes
   the candidates and the reports in it, and commits them to your branch. Your pull request then
   holds the moved pin and the candidates and reports that go with it. Review what it committed:
   that diff is what the new release of `tro-utils` changed.
2. **Check candidates** runs on the default branch and on pull requests from forks. It remakes the
   candidates and the reports the same way and fails where they differ from the committed ones, so
   a candidate or a report made anywhere but in this image cannot reach the default branch.
3. **Publish image** runs when the merge reaches the default branch and pushes the image to
   ghcr.io, tagged `latest` and `tro-utils-<version>`, so the published image never lags the pin.

Nothing has to be remade by hand. Remaking locally is still worth doing to see the change before
pushing, but it has to happen in the image — `make build-candidates` runs `tro-utils` there, and
the candidates record the types `libmagic` names in that image and the timestamps the fixed clock
and zone in [`make-candidates`](make-candidates) give it. A candidate made against a different
`tro-utils`, a different `libmagic` or a different zone is not the one this repository checks, and
**Check candidates** rejects it.

`REVIEWS.md` is left alone by CI: it records who reviewed what rather than what the checks found,
and it names the commit it was written at, so it would differ on every run. Update it with `make
update-reviews`.
