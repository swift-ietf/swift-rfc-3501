extension RFC_3501.SequenceSet {

    public struct Range: Sendable, Hashable {

        public let lower: UInt32

        public let upper: UInt32?

        public init(lower: UInt32, upper: UInt32?) {
            self.lower = lower
            self.upper = upper
        }
    }
}
