# swift-rfc-3501

Use this package when you need to write IMAP4rev1 command lines or read server responses yourself, for a client that reads mail without changing it. Start from `RFC_3501.Command` to build a command and `RFC_3501.Response` to read one, with `RFC_3501.Response.Stream` to split incoming bytes into responses. If you want a client that sends the commands, tags them and turns failures into errors for you, use swift-imap.

## Laws

- A command is written as its tag, a space, the command and CRLF. The tag must be non-empty printable ASCII without IMAP's atom specials, so a tag can't carry a line break.
- A string is written as an atom when it can be, and otherwise quoted with `"` and `\` escaped. The package never writes literals, so a string that would need one, such as non-ASCII text or text with a line break, is refused.
- `LIST` writes an empty reference or pattern as `""` and keeps the `%` and `*` wildcards in the pattern unquoted.
- Search dates are written as day, English month abbreviation and year, as in `1-Mar-2024`. Search keys are joined by spaces, and `RFC_3501.Search.Key.and(_:)` is wrapped in parentheses.
- A sequence set is written as comma-separated ranges: a single number, `lower:upper`, or `lower:*` for an open range.
- A `FETCH` with one attribute is written without parentheses. Header field names in a `HEADER.FIELDS` section must be printable ASCII without IMAP's special characters, so a name can't smuggle in a second command.
- `RFC_3501.Response.init(binary:)` reads one response, including any literals in it. An unknown status is refused, and so is a `SEARCH` result with anything but positive numbers, and a literal longer than the bytes given. Untagged data it doesn't know is kept as text, and fetch items it doesn't know are kept as their raw bytes.
- `RFC_3501.Response.Stream` splits bytes into responses at line ends, but not inside a literal announced with `{n}` at the end of a line. A response that hasn't fully arrived stays buffered until more bytes are appended.
- `RFC_3501.Body.init(binary:)` lowercases the media type, subtype and parameter names and keeps parameter values as written. A multipart body has the type `multipart`. Disposition parameters, such as an attachment's `filename`, are merged into the body's parameters.
