import SwiftUI

struct CounterView: View {
    @State var count = 0
    var body: some View {
        CounterButton(count: $count)
            .padding()
        ResetButton(count: $count)
            .buttonStyle(.bordered)
            .padding()
    }
}

struct CounterButton: View {
    @Binding var count: Int
    var body: some View {
        Button(action: {
            count = increaseCount(count)
        }) {
            Text("\(count)")
                .font(.system(size: 85))
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

struct ResetButton: View {
    @Binding var count: Int
    var body: some View {
        Button(action: {
            count = resetToZero(count)
        }) {
            Text("Reset")
                .padding()
                .frame(maxWidth: .infinity)
        }
    }
}
