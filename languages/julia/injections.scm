; Docstrings are not injected: highlights.scm captures them as @comment.doc,
; so they render in a single color (like Python docstrings).

; HTML Language Injection
((prefixed_string_literal
  prefix: (identifier) @_prefix
  (content) @injection.content)
  (#eq? @_prefix "html")
  (#set! injection.language "html"))

; LaTeX Language Injection (LaTeXStrings.jl)
((prefixed_string_literal
  prefix: (identifier) @_prefix
  (content) @injection.content)
  (#eq? @_prefix "L")
  (#set! injection.language "latex"))

; Markdown Language Injection
((prefixed_string_literal
  prefix: (identifier) @_prefix
  (content) @injection.content)
  (#eq? @_prefix "md")
  (#set! injection.language "markdown"))

; Python Language Injection (PyCall.jl)
((prefixed_string_literal
  prefix: (identifier) @_prefix
  (content) @injection.content)
  (#eq? @_prefix "py")
  (#set! injection.language "python"))

; Regex Language Injection
((prefixed_string_literal
  prefix: (identifier) @_prefix
  (content) @injection.content)
  (#eq? @_prefix "r")
  (#set! injection.language "regex"))

; SQL Language Injection (SQLStrings.jl)
((prefixed_command_literal
  prefix: (identifier) @_prefix
  (content) @injection.content)
  (#eq? @_prefix "sql")
  (#set! injection.language "sql"))
