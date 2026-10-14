extension RFC_3501 {

    public enum Response: Sendable, Hashable {

        case tagged(RFC_3501.Tag, RFC_3501.Response.Condition)

        case untagged(RFC_3501.Response.Data)

        case continuation(String)
    }
}
