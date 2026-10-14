extension RFC_3501.Command {

    public enum Error: Swift.Error, Sendable, Equatable {

        case unquotable(String)
    }
}
