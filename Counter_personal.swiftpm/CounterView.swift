import SwiftUI

struct CounterView: View {
    var body: some View {
        Button(action: {}) {
            Text("0")
                .font(.system(size: 85))
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }.padding()
        Button(action: {}) {
            Text("Clear")
                .padding()
                .frame(maxWidth: .infinity)
        }
            .buttonStyle(.bordered)
            .padding()
    }
}
