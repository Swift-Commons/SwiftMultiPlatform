import SwiftCrossUI
import MultiPlatformSharedLib

class CounterState: AppState {
    @Observed var count = 0
}

@main
struct GtkApp: App {
    let identifier = "co.swiftcommons"

    let state = CounterState()
    
    let windowProperties = WindowProperties(title: "CounterApp")
    
    var body: some ViewContent {
        VStack {
            Text("Greeting: \(MultiPlatformSharedLib.getGreeting())")
            HStack {
                Button("-") { state.count -= 1 }
                Text("Count: \(state.count)")
                Button("+") { state.count += 1 }
            }
        }
    }
}