extension RFC_3501.Response {

    public enum Code: Sendable, Hashable {

        case alert

        case readOnly

        case readWrite

        case uidValidity(UInt32)

        case uidNext(UInt32)

        case unseen(UInt32)

        case capability([String])

        case other(String)
    }
}
