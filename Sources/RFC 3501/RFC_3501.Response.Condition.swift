extension RFC_3501.Response {

    public struct Condition: Sendable, Hashable {

        public let status: RFC_3501.Response.Status

        public let code: RFC_3501.Response.Code?

        public let text: String

        public init(status: RFC_3501.Response.Status, code: RFC_3501.Response.Code?, text: String) {
            self.status = status
            self.code = code
            self.text = text
        }
    }
}
