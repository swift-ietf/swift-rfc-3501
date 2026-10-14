extension RFC_3501 {

    public struct Date: Sendable, Hashable {

        public let year: Int

        public let month: Int

        public let day: Int

        public init(year: Int, month: Int, day: Int) {
            self.year = year
            self.month = month
            self.day = day
        }
    }
}
