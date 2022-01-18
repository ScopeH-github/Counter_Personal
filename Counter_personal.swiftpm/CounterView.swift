import SwiftUI

struct CounterView: View {
    @State var count = 0
    var body: some View {
        Button(action: {
            count = increaseCount(count)
        }) {
            Text("\(count)")
                .font(.system(size: 85))
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }.padding()
        Button(action: {
            count = resetToZero(count)
        }) {
            Text("Reset")
                .padding()
                .frame(maxWidth: .infinity)
        }
            .buttonStyle(.bordered)
            .padding()
    }
    
    func increaseCount(_ number: Int) -> Int {
        var count = number
        count += 1
        return count
    }
    
    func resetToZero(_ number: Int) -> Int {
        return 0
    }
}
