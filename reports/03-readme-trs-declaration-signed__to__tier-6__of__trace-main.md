# Report on `03-readme-trs-declaration-signed.jsonld` at version `trace-main`

This report was written by `tro-checks`, which checks a TRO declaration against the requirements of the TRACE Specification.

Made by `tro-utils` with `readme-trs-declaration.jsonld` representing a TRS that can record internet access and provide internet isolation and is accompanied by a signing key pair, `trs-key.asc`, whose public key the TRS carries. Signed with that key pair. Describes three performances: a download of a data file, an analysis of it, and a packaging of the scripts and results; and four arrangements. The download claims its internet access was recorded; the analysis and the packaging claim they were isolated from the internet.

This candidate is expected to satisfy [`Tier 6 - STANDALONE-TRO`](#tier-6-standalone-tro) at version `trace-main`. The candidate meets every expectation in that tier and in the five tiers below it.

The sections below give the status of each tier, then the status of each expectation.

## Candidate Information

<table>
<thead>
<tr><th align="left"></th><th align="left"></th><th align="left">Declared by</th></tr>
</thead>
<tbody>
<tr><td>Candidate</td><td nowrap><samp>03-readme-trs-declaration-signed.jsonld</samp></td><td></td></tr>
<tr><td>Created&nbsp;with</td><td><code>tro-utils 0.5.1</code></td><td>the candidate</td></tr>
<tr><td>Description</td><td>Made by <code>tro-utils</code> with <code>readme-trs-declaration.jsonld</code> representing a TRS that can record internet access and provide internet isolation and is accompanied by a signing key pair, <code>trs-key.asc</code>, whose public key the TRS carries. Signed with that key pair. Describes three performances: a download of a data file, an analysis of it, and a packaging of the scripts and results; and four arrangements. The download claims its internet access was recorded; the analysis and the packaging claim they were isolated from the internet.</td><td>the candidate manifest</td></tr>
<tr><td>Target&nbsp;version</td><td><samp>trace&#8209;main</samp></td><td>the candidate manifest</td></tr>
<tr><td>Target&nbsp;tier</td><td><samp>Tier&nbsp;6&nbsp;&#8209;&nbsp;STANDALONE&#8209;TRO</samp></td><td>the candidate manifest</td></tr>
</tbody>
</table>

## Tier Assessments

<table>
<thead>
<tr><th align="left">Tier</th><th align="left">Description</th><th align="left">Status</th></tr>
</thead>
<tbody>
<tr><td><a href="#tier-1-safe-json"><samp>Tier&nbsp;1&nbsp;&#8209;&nbsp;SAFE&#8209;JSON</samp></a></td><td>JSON that every supported parser reads the same way</td><td>✅&nbsp;met</td></tr>
<tr><td><a href="#tier-2-safe-json-ld"><samp>Tier&nbsp;2&nbsp;&#8209;&nbsp;SAFE&#8209;JSON&#8209;LD</samp></a></td><td>JSON-LD that uses only those constructs our supported JSON-LD processors handle consistently, and whose interpretation depends on nothing outside the file</td><td>✅&nbsp;met</td></tr>
<tr><td><a href="#tier-3-trace-permissible-json-ld"><samp>Tier&nbsp;3&nbsp;&#8209;&nbsp;TRACE&#8209;PERMISSIBLE&#8209;JSON&#8209;LD</samp></a></td><td>JSON-LD that avoids constructs and practices TRACE disallows</td><td>✅&nbsp;met</td></tr>
<tr><td><a href="#tier-4-uses-trov-correctly"><samp>Tier&nbsp;4&nbsp;&#8209;&nbsp;USES&#8209;TROV&#8209;CORRECTLY</samp></a></td><td>JSON-LD that uses TROV terms only in ways TRACE allows</td><td>✅&nbsp;met</td></tr>
<tr><td><a href="#tier-5-defines-trs"><samp>Tier&nbsp;5&nbsp;&#8209;&nbsp;DEFINES&#8209;TRS</samp></a></td><td>JSON-LD that defines a Trusted Research System, identified by an absolute IRI</td><td>✅&nbsp;met</td></tr>
<tr><td><a href="#tier-6-standalone-tro"><samp>Tier&nbsp;6&nbsp;&#8209;&nbsp;STANDALONE&#8209;TRO</samp></a></td><td>A TRO declaration with the structure the TRACE Specification requires, whose references resolve within it</td><td>✅&nbsp;met</td></tr>
<tr style="color: var(--vscode-descriptionForeground, #767676)"><td><em><a href="#tier-7-linkable-tro"><samp>Tier&nbsp;7&nbsp;&#8209;&nbsp;LINKABLE&#8209;TRO</samp></a></em></td><td><em>A TRO declaration whose element identifiers cannot collide with those in another TRO</em></td><td><em>not&nbsp;claimed</em></td></tr>
</tbody>
</table>

## Expectation Findings by Tier

<table>
<tbody>
<tr><th colspan="3" align="left"><br><a id="tier-1-safe-json"></a><samp>Tier&nbsp;1&nbsp;&#8209;&nbsp;SAFE&#8209;JSON</samp>&nbsp;&nbsp;✅&nbsp;met</th></tr>
<tr><th align="left">Expectation</th><th align="left">Summary</th><th align="left">Status</th></tr>
<tr><td nowrap><samp>utf8-encoded</samp></td><td>The candidate is UTF-8</td><td>✅&nbsp;met</td></tr>
<tr><td nowrap><samp>json-parses</samp></td><td>The candidate parses as JSON without errors</td><td>✅&nbsp;met</td></tr>
<tr><td nowrap><samp>unicode-escapes-spell-whole-characters</samp></td><td>Every <code>\u</code> escape spells a whole Unicode character</td><td>✅&nbsp;met</td></tr>
<tr><td nowrap><samp>duplicate-member-names-absent</samp></td><td>No object repeats a member name</td><td>✅&nbsp;met</td></tr>
<tr><td nowrap><samp>numbers-within-range</samp></td><td>Every number fits a double; every integer is exact</td><td>✅&nbsp;met</td></tr>
</tbody>
<tbody>
<tr><th colspan="3" align="left"><br><a id="tier-2-safe-json-ld"></a><samp>Tier&nbsp;2&nbsp;&#8209;&nbsp;SAFE&#8209;JSON&#8209;LD</samp>&nbsp;&nbsp;✅&nbsp;met</th></tr>
<tr><th align="left">Expectation</th><th align="left">Summary</th><th align="left">Status</th></tr>
<tr><td nowrap><samp>context-at-root-only</samp></td><td>The file's only <code>@context</code> is at its top</td><td>✅&nbsp;met</td></tr>
<tr><td nowrap><samp>remote-contexts-absent</samp></td><td>The <code>@context</code> never refers by web address to a context kept elsewhere</td><td>✅&nbsp;met</td></tr>
<tr><td nowrap><samp>context-object-array-or-null</samp></td><td>The <code>@context</code>, if present, is an object, an array of objects, or <code>null</code></td><td>✅&nbsp;met</td></tr>
<tr><td nowrap><samp>context-containers-absent</samp></td><td>The <code>@context</code> never uses <code>@container</code> to tell a reader to interpret a property's array values as something other than individual values</td><td>✅&nbsp;met</td></tr>
<tr><td nowrap><samp>context-vocab-absent</samp></td><td>The <code>@context</code> never uses <code>@vocab</code> to tell a reader to interpret a name written without a prefix as a term of some vocabulary</td><td>✅&nbsp;met</td></tr>
<tr><td nowrap><samp>context-protected-absent</samp></td><td>The <code>@context</code> never uses <code>@protected</code> to lock its entries against redefinition by a later context</td><td>✅&nbsp;met</td></tr>
<tr><td nowrap><samp>context-propagate-absent</samp></td><td>The <code>@context</code> never uses <code>@propagate</code> to limit which objects it applies to</td><td>✅&nbsp;met</td></tr>
<tr><td nowrap><samp>context-import-absent</samp></td><td>The <code>@context</code> never uses <code>@import</code> to pull in entries from another context at a web address</td><td>✅&nbsp;met</td></tr>
<tr><td nowrap><samp>context-id-coercion-absent</samp></td><td>The <code>@context</code> never uses <code>"@type": "@id"</code> to tell a reader to interpret a property's bare-string <code>&lt;value&gt;</code> as <code>{ "@id": &lt;value&gt; }</code></td><td>✅&nbsp;met</td></tr>
<tr><td nowrap><samp>graph-at-root-only</samp></td><td><code>@graph</code> appears only at the root</td><td>✅&nbsp;met</td></tr>
<tr><td nowrap><samp>graph-object-or-array</samp></td><td>The <code>@graph</code>, if present, is an object or an array of objects</td><td>✅&nbsp;met</td></tr>
<tr><td nowrap><samp>ids-and-types-strings</samp></td><td>Every <code>@id</code> is a string; every <code>@type</code> a string or an array of strings</td><td>✅&nbsp;met</td></tr>
<tr><td nowrap><samp>id-segments-portable</samp></td><td>Every segment of a relative <code>@id</code> is a portable name: letters, digits, dots, hyphens and underscores, beginning and ending with a letter or digit</td><td>✅&nbsp;met</td></tr>
</tbody>
<tbody>
<tr><th colspan="3" align="left"><br><a id="tier-3-trace-permissible-json-ld"></a><samp>Tier&nbsp;3&nbsp;&#8209;&nbsp;TRACE&#8209;PERMISSIBLE&#8209;JSON&#8209;LD</samp>&nbsp;&nbsp;✅&nbsp;met</th></tr>
<tr><th align="left">Expectation</th><th align="left">Summary</th><th align="left">Status</th></tr>
<tr><td nowrap><samp>root-context-and-graph-only</samp></td><td>The file is a JSON object whose top level holds no member other than <code>@context</code> and <code>@graph</code></td><td>✅&nbsp;met</td></tr>
<tr><td nowrap><samp>composite-contexts-absent</samp></td><td>The <code>@context</code> is never composed from several parts</td><td>✅&nbsp;met</td></tr>
<tr><td nowrap><samp>disallowed-node-keywords-absent</samp></td><td>Apart from the <code>@context</code> and its contents, the only keywords in the file are <code>@graph</code>, <code>@id</code> and <code>@type</code></td><td>✅&nbsp;met</td></tr>
<tr><td nowrap><samp>disallowed-context-keywords-absent</samp></td><td><code>@base</code> is the only keyword at the top level of the <code>@context</code></td><td>✅&nbsp;met</td></tr>
<tr><td nowrap><samp>base-web-scheme</samp></td><td>The <code>@base</code>, if any, uses the <code>https</code> or <code>http</code> scheme</td><td>✅&nbsp;met</td></tr>
<tr><td nowrap><samp>base-simple-url</samp></td><td>The <code>@base</code>, if any, is a simple URL. It names a host, has a path of portable names, uses only URL characters, and ends in <code>/</code>. It has no user info, dot segments, query or fragment</td><td>✅&nbsp;met</td></tr>
<tr><td nowrap><samp>prefix-namespaces-terminated</samp></td><td>Every prefix maps to an absolute IRI ending in <code>#</code> or <code>/</code></td><td>✅&nbsp;met</td></tr>
<tr><td nowrap><samp>context-aliases-absent</samp></td><td>The <code>@context</code> never defines aliases for property names</td><td>✅&nbsp;met</td></tr>
<tr><td nowrap><samp>context-assigns-only-datatypes-to-properties</samp></td><td>The only thing the <code>@context</code> assigns to a property is the datatype of its values</td><td>✅&nbsp;met</td></tr>
<tr><td nowrap><samp>context-datatypes-named-by-iri</samp></td><td>Every datatype the <code>@context</code> gives a property is named by a prefixed or absolute IRI</td><td>✅&nbsp;met</td></tr>
<tr><td nowrap><samp>types-prefixed-or-absolute</samp></td><td>Every <code>@type</code> value is a prefixed or absolute IRI</td><td>✅&nbsp;met</td></tr>
</tbody>
<tbody>
<tr><th colspan="3" align="left"><br><a id="tier-4-uses-trov-correctly"></a><samp>Tier&nbsp;4&nbsp;&#8209;&nbsp;USES&#8209;TROV&#8209;CORRECTLY</samp>&nbsp;&nbsp;✅&nbsp;met</th></tr>
<tr><th align="left">Expectation</th><th align="left">Summary</th><th align="left">Status</th></tr>
<tr><td nowrap><samp>context-and-nonempty-graph-present</samp></td><td>The file has a non-null <code>@context</code> and an <code>@graph</code> holding at least one node</td><td>✅&nbsp;met</td></tr>
<tr><td nowrap><samp>core-prefixes-pinned</samp></td><td><code>trov</code> is declared and is the only prefix for a TROV namespace; <code>rdf</code>, <code>rdfs</code> and <code>schema</code> prefixes, if declared, are the standard ones</td><td>✅&nbsp;met</td></tr>
<tr><td nowrap><samp>trov-terms-known</samp></td><td>Every term with the <code>trov:</code> prefix is one TROV defines</td><td>✅&nbsp;met</td></tr>
<tr><td nowrap><samp>trov-version-known</samp></td><td>The TRO declares, in <code>trov:vocabularyVersion</code>, a known version of TROV</td><td>✅&nbsp;met</td></tr>
<tr><td nowrap><samp>hash-algorithms-permitted</samp></td><td>Every hash names an algorithm TRACE permits: a collision-resistant digest from the SHA-2, SHA-3 or BLAKE families</td><td>✅&nbsp;met</td></tr>
<tr><td nowrap><samp>hash-values-correct-form</samp></td><td>Every hash value is lowercase hexadecimal of the length its algorithm produces</td><td>✅&nbsp;met</td></tr>
<tr><td nowrap><samp>mime-types-two-part</samp></td><td>Every artifact's <code>trov:mimeType</code> is a string of the form <code>type/subtype</code></td><td>✅&nbsp;met</td></tr>
<tr><td nowrap><samp>times-iso-8601</samp></td><td>Every <code>trov:startedAtTime</code> and <code>trov:endedAtTime</code> is an ISO 8601 date-time; the TRO's <code>schema:dateCreated</code>, if present, an ISO 8601 date or date-time</td><td>✅&nbsp;met</td></tr>
<tr><td nowrap><samp>times-zoned</samp></td><td>Every <code>trov:startedAtTime</code> and <code>trov:endedAtTime</code> carries its time zone</td><td>✅&nbsp;met</td></tr>
<tr><td nowrap><samp>tro-name-description-text</samp></td><td>The TRO's <code>schema:name</code> and <code>schema:description</code>, if present, are Text: a string or an array of strings</td><td>✅&nbsp;met</td></tr>
<tr><td nowrap><samp>creators-person-or-organization</samp></td><td>The TRO's <code>schema:creator</code>, if present, is a node typed <code>schema:Person</code> or <code>schema:Organization</code>, never a string</td><td>✅&nbsp;met</td></tr>
<tr><td nowrap><samp>trov-capabilities-predefined</samp></td><td>A capability's <code>trov:</code> type is one TROV predefines</td><td>✅&nbsp;met</td></tr>
<tr><td nowrap><samp>trov-performance-attributes-predefined</samp></td><td>A performance attribute's <code>trov:</code> type is one TROV predefines</td><td>✅&nbsp;met</td></tr>
<tr><td nowrap><samp>trov-tro-attributes-predefined</samp></td><td>A TRO attribute's <code>trov:</code> type is one TROV predefines</td><td>✅&nbsp;met</td></tr>
<tr><td nowrap><samp>custom-terms-not-trov</samp></td><td>Every <code>trov:customTerm</code> entry declares a term outside the TROV namespace</td><td>✅&nbsp;met</td></tr>
<tr><td nowrap><samp>custom-term-superclasses-extensible</samp></td><td>Every custom term extends <code>trov:TRSCapabilityType</code> or <code>trov:TRPAttributeType</code></td><td>✅&nbsp;met</td></tr>
<tr><td nowrap><samp>trov-signing-mechanisms-predefined</samp></td><td>A signing mechanism is identified by reference, and a <code>trov:</code> one is one TROV predefines</td><td>✅&nbsp;met</td></tr>
</tbody>
<tbody>
<tr><th colspan="3" align="left"><br><a id="tier-5-defines-trs"></a><samp>Tier&nbsp;5&nbsp;&#8209;&nbsp;DEFINES&#8209;TRS</samp>&nbsp;&nbsp;✅&nbsp;met</th></tr>
<tr><th align="left">Expectation</th><th align="left">Summary</th><th align="left">Status</th></tr>
<tr><td nowrap><samp>trs-defined</samp></td><td>A TRS is defined, with an <code>@id</code>, at the top of the <code>@graph</code> or as the object of <code>trov:wasAssembledBy</code>, and nowhere else</td><td>✅&nbsp;met</td></tr>
<tr><td nowrap><samp>trs-id-absolute</samp></td><td>The TRS is identified by an absolute IRI, or a compact IRI outside the <code>trov</code> namespace</td><td>✅&nbsp;met</td></tr>
</tbody>
<tbody>
<tr><th colspan="3" align="left"><br><a id="tier-6-standalone-tro"></a><samp>Tier&nbsp;6&nbsp;&#8209;&nbsp;STANDALONE&#8209;TRO</samp>&nbsp;&nbsp;✅&nbsp;met</th></tr>
<tr><th align="left">Expectation</th><th align="left">Summary</th><th align="left">Status</th></tr>
<tr><td nowrap><samp>tro-top-level-in-graph</samp></td><td>The TRO is a top-level member of the <code>@graph</code></td><td>✅&nbsp;met</td></tr>
<tr><td nowrap><samp>trov-objects-identified</samp></td><td>Every object typed with a TROV class carries an <code>@id</code></td><td>✅&nbsp;met</td></tr>
<tr><td nowrap><samp>tro-assembled-by-trs</samp></td><td>The TRO names its assembling system, typed as a TRS</td><td>✅&nbsp;met</td></tr>
<tr><td nowrap><samp>performance-attribute-warrants-absolute</samp></td><td>Every performance attribute refers to the capability warranting it by a compact or absolute IRI</td><td>✅&nbsp;met</td></tr>
<tr><td nowrap><samp>tro-composition-single</samp></td><td>A <code>trov:hasComposition</code> is one object, not an array</td><td>✅&nbsp;met</td></tr>
<tr><td nowrap><samp>composition-has-fingerprint</samp></td><td>The TRO's composition, if any, carries one fingerprint, which carries one hash</td><td>✅&nbsp;met</td></tr>
<tr><td nowrap><samp>composition-identifies-artifacts</samp></td><td>The TRO's composition, if any, names at least one artifact in a <code>trov:hasArtifact</code> array</td><td>✅&nbsp;met</td></tr>
<tr><td nowrap><samp>artifact-hashes-present</samp></td><td>Every artifact in the composition carries a <code>trov:hash</code>, one hash or an array of at least one</td><td>✅&nbsp;met</td></tr>
<tr><td nowrap><samp>created-with-single-tool</samp></td><td>A <code>trov:createdWith</code> names one software tool, given as a node</td><td>✅&nbsp;met</td></tr>
<tr><td nowrap><samp>gpg-signing-key-present</samp></td><td>A TRO signed with <code>trov:GPGSigning</code> gives its TRS a <code>trov:publicKey</code></td><td>✅&nbsp;met</td></tr>
</tbody>
<tbody>
<tr style="color: var(--vscode-descriptionForeground, #767676)"><th colspan="3" align="left"><br><a id="tier-7-linkable-tro"></a><em><samp>Tier&nbsp;7&nbsp;&#8209;&nbsp;LINKABLE&#8209;TRO</samp>&nbsp;&nbsp;not&nbsp;claimed</em></th></tr>
<tr style="color: var(--vscode-descriptionForeground, #767676)"><th align="left">Expectation</th><th align="left">Summary</th><th align="left">Status</th></tr>
<tr style="color: var(--vscode-descriptionForeground, #767676)"><td nowrap><em><samp>base-declared</samp></em></td><td><em>The <code>@context</code> includes an <code>@base</code></em></td><td><em>not&nbsp;claimed</em></td></tr>
<tr style="color: var(--vscode-descriptionForeground, #767676)"><td nowrap><em><samp>base-has-path</samp></em></td><td><em>The <code>@base</code> names something below the host, not the host alone</em></td><td><em>not&nbsp;claimed</em></td></tr>
<tr style="color: var(--vscode-descriptionForeground, #767676)"><td nowrap><em><samp>base-host-lowercase</samp></em></td><td><em>The <code>@base</code> host is lowercase</em></td><td><em>not&nbsp;claimed</em></td></tr>
<tr style="color: var(--vscode-descriptionForeground, #767676)"><td nowrap><em><samp>base-host-ownable</samp></em></td><td><em>The <code>@base</code> host is a domain name the minter could hold, not a reserved or documentation name</em></td><td><em>not&nbsp;claimed</em></td></tr>
<tr style="color: var(--vscode-descriptionForeground, #767676)"><td nowrap><em><samp>node-ids-present</samp></em></td><td><em>Every node carries an explicit <code>@id</code></em></td><td><em>not&nbsp;claimed</em></td></tr>
<tr style="color: var(--vscode-descriptionForeground, #767676)"><td nowrap><em><samp>blank-node-ids-absent</samp></em></td><td><em>No <code>@id</code> is a blank node identifier</em></td><td><em>not&nbsp;claimed</em></td></tr>
</tbody>
</table>
