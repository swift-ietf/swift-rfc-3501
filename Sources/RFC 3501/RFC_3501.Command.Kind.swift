extension RFC_3501.Command {

    public enum Kind: Sendable, Hashable, CaseIterable {

        case capability

        case noop

        case logout

        case login

        case list

        case examine

        case search

        case fetch
    }
}
