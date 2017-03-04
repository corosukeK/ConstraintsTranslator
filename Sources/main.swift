import Foundation
import Commandant

public var filePath: String? = nil
var arguments = CommandLine.arguments
assert(!arguments.isEmpty)
arguments.removeFirst()


if let verb = arguments.first, verb == GenerateCommand().verb {
    arguments.removeFirst()
    if let filepath = arguments.first {
        filePath = filepath
    }
}

let registry = CommandRegistry<ConstraintsTranslatorError>()

registry.register(GenerateCommand())
registry.register(VersionCommand())

let helpCommand = HelpCommand(registry: registry)
registry.register(helpCommand)

registry.main(defaultVerb: helpCommand.verb) { (error) in
    switch error {
    case .fileNotFound:
        print("FileNotFound")
    case .fileIsNotReadable:
        print("fileIsNotReadable")
    }
}
