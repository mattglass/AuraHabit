import SwiftUI

public struct HabitCard: View {
    @State private var isCompleted: Bool = false

    public init() {}

    public var body: some View {
        VStack {
            HStack {
                VStack {
                    Text("Morning Deep Focus")
                    Text("Daily Ritual • 45 min")
                }
                Text("🔥 14 days")
            }
            .padding(16)
            Button("Complete Habit") {
                isCompleted.toggle()
            }
            .padding(12)
            .cornerRadius(12)
            .pressScale()
        }
        .padding(16)
        .cornerRadius(16)
    }
}
