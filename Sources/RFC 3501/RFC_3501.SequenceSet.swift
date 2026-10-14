extension RFC_3501 {

    public struct SequenceSet: Sendable, Hashable {

        public let ranges: [RFC_3501.SequenceSet.Range]

        public init(ranges: [RFC_3501.SequenceSet.Range]) {
            self.ranges = ranges
        }
    }
}
