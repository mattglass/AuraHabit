import SwiftUI
import Observation

@Observable
public final class SettingsViewModel {
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

public struct SettingsView: View {
    @State private var viewModel = SettingsViewModel()

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
                            // Header Card
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Settings")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                Text("Feature view generated autonomously by Native Ready.")
                                    .font(.subheadline)
                                    .foregroundStyle(.secondary)
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
                            .background(Color(uiColor: .secondarySystemGroupedBackground))
                            .clipShape(RoundedRectangle(cornerRadius: 16))

                            // Edge Cloud Sync Section
                            VStack(alignment: .leading, spacing: 12) {
                                Text("Edge Cloud Sync")
                                    .font(.headline)
                                Text("Connects to Cloudflare Worker & local Node mock server.")
                                    .font(.subheadline)
                                    .foregroundStyle(.secondary)
                                
                                Button(action: {
                                    Task {
                                        _ = await HabitSyncClient.shared.checkHealth()
                                        await viewModel.loadData()
                                    }
                                }) {
                                    HStack {
                                        Image(systemName: "antenna.radiowaves.left.and.right")
                                        Text("Test Cloud Connection")
                                    }
                                    .frame(maxWidth: .infinity)
                                }
                                .buttonStyle(.borderedProminent)
                                .controlSize(.large)
                            }
                            .padding()
                            .background(Color(uiColor: .secondarySystemGroupedBackground))
                            .clipShape(RoundedRectangle(cornerRadius: 16))

                            // App Info
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Engine Info")
                                    .font(.headline)
                                HStack {
                                    Text("Engine Architecture")
                                    Spacer()
                                    Text("v0.8.0 Universal")
                                        .foregroundStyle(.secondary)
                                }
                                HStack {
                                    Text("Dual Platform Parity")
                                    Spacer()
                                    Text("SwiftUI + Compose")
                                        .foregroundStyle(.secondary)
                                }
                            }
                            .padding()
                            .background(Color(uiColor: .secondarySystemGroupedBackground))
                            .clipShape(RoundedRectangle(cornerRadius: 16))
                        }
                        .padding()
                    }
                }
            }
            .navigationTitle("Settings")
            .task {
                await viewModel.loadData()
            }
        }
    }
}

#Preview {
    SettingsView()
}
