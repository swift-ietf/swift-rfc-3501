extension RFC_3501 {

    public struct Body: Sendable, Equatable {
        public let type: String
        public let subtype: String
        public let parameters: [String: String]
        public let parts: [RFC_3501.Body]

        public init(type: String, subtype: String, parameters: [String: String], parts: [RFC_3501.Body]) {
            self.type = type
            self.subtype = subtype
            self.parameters = parameters
            self.parts = parts
        }
    }
}
