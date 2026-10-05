import Foundation

public final class HabitSyncClient {
    public static let shared = HabitSyncClient()

    private let baseURL: URL

    public init(baseURL: URL = URL(string: "http://localhost:8787")!) {
        self.baseURL = baseURL
    }

    public func fetchHabits() async throws -> [ItemRecord] {
        let url = baseURL.appendingPathComponent("/api/v1/habits")
        let (data, response) = try await URLSession.shared.data(from: url)

        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
            throw URLError(.badServerResponse)
        }

        struct ResponseWrapper: Codable {
            let data: [ItemRecord]
        }

        let decoded = try JSONDecoder().decode(ResponseWrapper.self, from: data)
        return decoded.data
    }

    public func checkHealth() async -> Bool {
        let url = baseURL.appendingPathComponent("/api/v1/health")
        do {
            let (_, response) = try await URLSession.shared.data(from: url)
            return (response as? HTTPURLResponse)?.statusCode == 200
        } catch {
            return false
        }
    }
}
