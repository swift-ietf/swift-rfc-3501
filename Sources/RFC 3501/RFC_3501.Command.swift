extension RFC_3501 {

    public enum Command: Sendable, Hashable {

        case capability

        case noop

        case logout

        case login(user: String, password: String)

        case list(reference: String, pattern: String)

        case examine(RFC_3501.Mailbox)

        case search(uid: Bool, [RFC_3501.Search.Key])

        case fetch(uid: Bool, RFC_3501.SequenceSet, [RFC_3501.Fetch.Attribute])
    }
}
