import Foundation
import Observation

public struct UserProfile: Codable, Identifiable, Sendable {
    public let id: String
    public let name: String
    public let email: String
    public let avatarUrl: String

    public init(id: String = UUID().uuidString, name: String, email: String, avatarUrl: String = "") {
        self.id = id
        self.name = name
        self.email = email
        self.avatarUrl = avatarUrl
    }
}

@Observable
public final class UserProfileStore {
    public var items: [UserProfile] = [
        UserProfile(id = "1", name = "Sample User", email = "alex@example.com")
    ]

    public init() {}

    public func add(_ item: UserProfile) {
        items.append(item)
    }
}
