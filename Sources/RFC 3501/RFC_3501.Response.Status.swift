extension RFC_3501.Response {

    public enum Status: Sendable, Hashable {

        case ok

        case no

        case bad

        case preauth

        case bye
    }
}
