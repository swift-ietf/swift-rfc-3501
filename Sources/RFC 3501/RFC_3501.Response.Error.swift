extension RFC_3501.Response {

    public enum Error: Swift.Error, Sendable, Equatable {

        case malformed(String)
    }
}
