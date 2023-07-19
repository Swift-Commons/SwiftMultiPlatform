import TokamakDOM
import MultiPlatformSharedLib

@main
struct TokamakApp: App {
    var body: some Scene {
        WindowGroup("Tokamak App") {
            ContentView()
        }
    }
}

struct ContentView: View {
    var body: some View {
        Text(MultiPlatformSharedLib.getGreeting())
            .font(.system(size: 48, weight: .thin, design: .default))
            .zIndex(1)
    }
}
