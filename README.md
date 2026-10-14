# swift-rfc-3501

![Development Status](https://img.shields.io/badge/status-active--development-blue.svg)

Foundation-free Swift implementation of RFC 3501: the Internet Message Access Protocol, version 4rev1.

The package models the IMAP4rev1 commands a reading client needs (CAPABILITY, NOOP, LOGOUT, LOGIN, LIST, EXAMINE, SEARCH and FETCH, with or without UID), their search keys, fetch attributes and sequence sets, and the server responses: tagged and untagged conditions with response codes, CAPABILITY, LIST, FLAGS, EXISTS, RECENT, EXPUNGE, SEARCH and FETCH. Commands that change a mailbox are not modelled. Serializing and parsing live in swift-rfc-3501-coder.

## License

Apache 2.0. See [LICENSE.md](LICENSE.md).
