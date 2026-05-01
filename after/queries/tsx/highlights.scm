; Slipstream override: imported bindings should be teal.

(import_clause
  (identifier) @variable.import
  (#set! priority 110))

(import_specifier
  name: (identifier) @variable.import
  (#set! priority 110))

(import_specifier
  name: (type_identifier) @variable.import
  (#set! priority 110))

(import_specifier
  alias: (identifier) @variable.import
  (#set! priority 110))

(namespace_import
  (identifier) @variable.import
  (#set! priority 110))
