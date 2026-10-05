import SwiftUI
import Observation

@Observable
public final class DashboardViewModel {
    public var isLoading: Bool = false
    public var errorMessage: String? = nil

    public init() {}

    public func loadData() async {
        isLoading = true
        errorMessage = nil
        // Simulated network / cache fetch
        try? await Task.sleep(nanoseconds: 300_000_000)
        isLoading = false
    }
}

public struct DashboardView: View {
    @State private var viewModel = DashboardViewModel()

    public init() {}

    public var body: some View {
        NavigationStack {
            ZStack {
                Color(uiColor: .systemGroupedBackground)
                    .ignoresSafeArea()

                if viewModel.isLoading {
                    ProgressView()
                } else {
                    ScrollView {
                        VStack(spacing: 20) {
                            // Aura Score Card
                            HStack {
                                VStack(alignment: .leading, spacing: 4) {
                                    Text("Daily Aura")
                                        .font(.subheadline)
                                        .foregroundStyle(.secondary)
                                    Text("92% Complete")
                                        .font(.title)
                                        .fontWeight(.heavy)
                                }
                                Spacer()
                                Text("✨ Level 4")
                                    .font(.headline)
                                    .padding(.horizontal, 12)
                                    .padding(.vertical, 6)
                                    .background(Color.indigo.opacity(0.15))
                                    .foregroundStyle(.indigo)
                                    .clipShape(Capsule())
                            }
                            .padding()
                            .background(Color(uiColor: .secondarySystemGroupedBackground))
                            .clipShape(RoundedRectangle(cornerRadius: 16))

                            // Today's Habits
                            VStack(alignment: .leading, spacing: 12) {
                                Text("Today's Rituals")
                                    .font(.headline)
                                
                                HabitCard()
                            }
                            .padding()
                            .background(Color(uiColor: .secondarySystemGroupedBackground))
                            .clipShape(RoundedRectangle(cornerRadius: 16))
                        }
                        .padding()
                    }
                }
            }
            .navigationTitle("Dashboard")
            .task {
                await viewModel.loadData()
            }
        }
    }
}

#Preview {
    DashboardView()
}
