//
//  FaidaEntity.swift
//  FawaidModels
//
//  Created by Abdurahim Jauzee on 15/04/2018.
//

import Foundation

public struct FaidaEntity: Faida, Codable {

    public var id: Int?

    public enum Keys: String, CodingKey {
        case id
        case title, caption, text, source, tags
        case audioURL, username
        case descriptionText
        case approved
        case createdAt, updatedAt
        case imageURL
    }

    public var title: String

    public var text: String
    public var source: String

    public var tags: String?
    public var descriptionText: String?

    public var approved: Bool?

    public var audioURL: String?
    public var username: String?
    public var imageURL: String?

    public var createdAt: Int
    public var updatedAt: Int

    public init(title: String, text: String, source: String, tags: String? = nil, descriptionText: String? = nil, approved: Bool? = nil, audioURL: String? = nil, username: String? = nil, imageURL: String? = nil, createdAt: Int = Int(Date().timeIntervalSince1970), updatedAt: Int = Int(Date().timeIntervalSince1970)) {
        self.title = title
        self.text = text
        self.source = source
        self.tags = tags
        self.descriptionText = descriptionText
        self.approved = approved
        self.audioURL = audioURL
        self.username = username
        self.imageURL = imageURL
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: Keys.self)

        title = try container.decode(.title)
        text = try container.decode(.text)
        source = try container.decode(.source)

        let timestamp = Int(Date().timeIntervalSince1970)
        createdAt = try container.decodeIfPresent(.createdAt) ?? timestamp
        updatedAt = try container.decodeIfPresent(.updatedAt) ?? timestamp

        // MARK: Optional values
        id = try container.decodeIfPresent(.id)
        tags = try container.decodeIfPresent(.tags)
        descriptionText = try container.decodeIfPresent(.descriptionText)
        audioURL = try container.decodeIfPresent(.audioURL)
        imageURL = try container.decodeIfPresent(.imageURL)
        username = try container.decodeIfPresent(.username)
        approved = try container.decodeIfPresent(.approved)
    }

}
