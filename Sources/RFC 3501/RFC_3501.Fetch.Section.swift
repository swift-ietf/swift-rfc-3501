extension RFC_3501.Fetch {

    public enum Section: Sendable, Hashable {

        case whole

        case header

        case headerFields([String])

        case text
    }
}
