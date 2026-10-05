import Foundation
import Observation

public struct ItemRecord: Codable, Identifiable, Sendable {
    public let id: String
    public let title: String
    public let subtitle: String
    public let isFavorite: Bool

    public init(id: String = UUID().uuidString, name: String, email: String, avatarUrl: String = "") {
        self.id = id
        self.name = name
        self.email = email
        self.avatarUrl = avatarUrl
    }
}

@Observable
public final class ItemRecordStore {
    public var items: [ItemRecord] = [
        ItemRecord(id = "1", name = "Sample User", email = "alex@example.com")
    ]

    public init() {}

    public func add(_ item: ItemRecord) {
        items.append(item)
    }
}
