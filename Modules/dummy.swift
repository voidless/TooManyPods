import Foundation

struct ModuleDependencies {
    var external: ModuleExternalDependencies?

    var name: String = "!"
}

var Dependencies = ModuleDependencies()

public struct ModuleExternalDependencies {
    public var some: Int

    public init(some: Int) {
        self.some = some
    }
}

public func SetupModule(_ external: ModuleExternalDependencies) {
    Dependencies.external = external
}
