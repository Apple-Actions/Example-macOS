import ExampleKit
import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var count = 0

    var body: some View {
        VStack(spacing: 16) {
            TextField("Name", text: $name)
                .textFieldStyle(.roundedBorder)
            Text(Greeting.message(for: name, count: count))
                .font(.title2)
            Button("Greet") { count += 1 }
        }
        .padding()
        .frame(minWidth: 320, minHeight: 160)
    }
}

#Preview {
    ContentView()
}
