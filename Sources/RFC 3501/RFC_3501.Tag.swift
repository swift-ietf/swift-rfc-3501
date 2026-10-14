extension RFC_3501 {

    public struct Tag: Sendable, Hashable {

        public let rawValue: String

        public init(rawValue: String) {
            self.rawValue = rawValue
        }
    }
}
