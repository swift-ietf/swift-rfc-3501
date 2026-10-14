import RFC_3501
import Testing

extension RFC_3501.Command {

    @Suite
    struct Test {

        @Suite
        struct Unit {}
    }
}

extension RFC_3501.Command.Test.Unit {

    @Test
    func `every command names its kind`() {
        let commands: [RFC_3501.Command] = [
            .capability, .noop, .logout,
            .login(user: "u", password: "p"),
            .list(reference: "", pattern: "*"),
            .examine(.inbox),
            .search(uid: true, [.all]),
            .fetch(uid: true, .all, [.uid]),
        ]

        #expect(Set(commands.map(\.kind)) == Set(RFC_3501.Command.Kind.allCases))
    }

    @Test
    func `a sequence set of numbers holds single ranges`() {
        #expect(RFC_3501.SequenceSet([4, 9]).ranges == [.init(lower: 4, upper: 4), .init(lower: 9, upper: 9)])
        #expect(RFC_3501.SequenceSet.all.ranges == [.init(lower: 1, upper: nil)])
    }
}
