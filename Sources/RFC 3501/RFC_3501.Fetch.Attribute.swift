extension RFC_3501.Fetch {

    public enum Attribute: Sendable, Hashable {

        case uid

        case flags

        case internalDate

        case rfc822Size

        case envelope

        case bodyStructure

        case body(RFC_3501.Fetch.Section, peek: Bool)
    }
}
