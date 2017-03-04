import Foundation
import Commandant

var arguments = CommandLine.arguments
assert(!arguments.isEmpty)
arguments.removeFirst()

let registry = CommandRegistry<ConstraintsTranslatorError>()

registry.register(GenerateCommand())
registry.register(VersionCommand())

let helpCommand = HelpCommand(registry: registry)
registry.register(helpCommand)

registry.main(defaultVerb: helpCommand.verb) { (error) in
    print("error")
}
