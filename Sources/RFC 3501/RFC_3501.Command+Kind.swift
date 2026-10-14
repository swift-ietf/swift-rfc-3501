extension RFC_3501.Command {

    public var kind: RFC_3501.Command.Kind {
        switch self {
        case .capability: .capability
        case .noop: .noop
        case .logout: .logout
        case .login: .login
        case .list: .list
        case .examine: .examine
        case .search: .search
        case .fetch: .fetch
        }
    }
}
