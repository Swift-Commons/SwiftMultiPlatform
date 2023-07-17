import Vapor
import MultiPlatformSharedLib

func routes(_ app: Application) throws {
    app.get { req async in
        "\(MultiPlatformSharedLib.getGreeting())"
    }

    app.get("hello") { req async -> String in
        "Hello, world!"
    }
}
