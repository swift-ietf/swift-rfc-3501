extension RFC_3501.Search {

    public indirect enum Key: Sendable, Hashable {

        case all

        case from(String)

        case to(String)

        case subject(String)

        case body(String)

        case text(String)

        case header(String, String)

        case since(RFC_3501.Date)

        case before(RFC_3501.Date)

        case on(RFC_3501.Date)

        case uid(RFC_3501.SequenceSet)

        case larger(UInt32)

        case smaller(UInt32)

        case not(RFC_3501.Search.Key)

        case or(RFC_3501.Search.Key, RFC_3501.Search.Key)

        case and([RFC_3501.Search.Key])
    }
}
