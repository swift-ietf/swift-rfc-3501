extension RFC_3501.Response {

    public struct List: Sendable, Hashable {

        public let attributes: [String]

        public let delimiter: String?

        public let mailbox: RFC_3501.Mailbox

        public init(attributes: [String], delimiter: String?, mailbox: RFC_3501.Mailbox) {
            self.attributes = attributes
            self.delimiter = delimiter
            self.mailbox = mailbox
        }
    }
}
