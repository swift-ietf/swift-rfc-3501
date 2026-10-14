extension RFC_3501 {

    public struct Mailbox: Sendable, Hashable {

        public let rawValue: String

        public init(rawValue: String) {
            self.rawValue = rawValue
        }
    }
}
