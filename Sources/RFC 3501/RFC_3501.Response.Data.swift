extension RFC_3501.Response {

    public enum Data: Sendable, Hashable {

        case condition(RFC_3501.Response.Condition)

        case capability([String])

        case list(RFC_3501.Response.List)

        case flags([String])

        case exists(UInt32)

        case recent(UInt32)

        case expunge(UInt32)

        case search([UInt32])

        case fetch(UInt32, [RFC_3501.Fetch.Item])

        case other(String)
    }
}
