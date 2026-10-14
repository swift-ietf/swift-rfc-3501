extension RFC_3501.SequenceSet {

    public init(_ numbers: [UInt32]) {
        self.init(ranges: numbers.map { RFC_3501.SequenceSet.Range(lower: $0, upper: $0) })
    }

    public static let all = RFC_3501.SequenceSet(ranges: [RFC_3501.SequenceSet.Range(lower: 1, upper: nil)])
}
