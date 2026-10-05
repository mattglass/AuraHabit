import SwiftUI
import Observation

@Observable
public final class AnalyticsViewModel {
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

public struct AnalyticsView: View {
    @State private var viewModel = AnalyticsViewModel()

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
                            // Metric Counters Row
                            HStack(spacing: 12) {
                                VStack(alignment: .leading, spacing: 4) {
                                    Text("Current Streak")
                                        .font(.caption)
                                        .foregroundStyle(.secondary)
                                    Text("14 Days")
                                        .font(.title2)
                                        .fontWeight(.bold)
                                }
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding()
                                .background(Color(uiColor: .secondarySystemGroupedBackground))
                                .clipShape(RoundedRectangle(cornerRadius: 16))

                                VStack(alignment: .leading, spacing: 4) {
                                    Text("Completion Rate")
                                        .font(.caption)
                                        .foregroundStyle(.secondary)
                                    Text("89.4%")
                                        .font(.title2)
                                        .fontWeight(.bold)
                                        .foregroundStyle(.indigo)
                                }
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding()
                                .background(Color(uiColor: .secondarySystemGroupedBackground))
                                .clipShape(RoundedRectangle(cornerRadius: 16))
                            }

                            // Weekly Streak Matrix
                            VStack(alignment: .leading, spacing: 12) {
                                Text("This Week's Activity")
                                    .font(.headline)
                                HStack {
                                    ForEach(["M", "T", "W", "T", "F", "S", "S"], id: \.self) { day in
                                        VStack(spacing: 6) {
                                            Text(day)
                                                .font(.caption2)
                                                .foregroundStyle(.secondary)
                                            Circle()
                                                .fill(Color.indigo)
                                                .frame(width: 28, height: 28)
                                                .overlay(
                                                    Image(systemName: "checkmark")
                                                        .font(.system(size: 12, weight: .bold))
                                                        .foregroundStyle(.white)
                                                )
                                        }
                                        .frame(maxWidth: .infinity)
                                    }
                                }
                                .padding(.vertical, 8)
                            }
                            .padding()
                            .background(Color(uiColor: .secondarySystemGroupedBackground))
                            .clipShape(RoundedRectangle(cornerRadius: 16))
                        }
                        .padding()
                    }
                }
            }
            .navigationTitle("Analytics")
            .task {
                await viewModel.loadData()
            }
        }
    }
}

#Preview {
    AnalyticsView()
}
