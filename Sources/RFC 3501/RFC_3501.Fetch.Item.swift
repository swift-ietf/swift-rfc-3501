public import Byte

extension RFC_3501.Fetch {

    public enum Item: Sendable, Hashable {

        case uid(UInt32)

        case flags([String])

        case internalDate(String)

        case rfc822Size(UInt32)

        case body(RFC_3501.Fetch.Section, origin: UInt32?, data: [Byte]?)

        case other(String, [Byte])
    }
}
