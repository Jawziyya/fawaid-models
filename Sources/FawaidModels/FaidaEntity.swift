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
    case hearts, plays, shares, views, screenshots
    case audioURL, username
    case descriptionText
    case approved
    case createdAt, updatedAt
    case imageURL
  }
  
  public var title: String
  public var caption: String?
  
  public var text: String
  public var source: String
  
  public var tags: String?
  public var descriptionText: String?
  
  public var approved: Bool?
  
  public var hearts: Int
  public var plays: Int
  public var shares: Int
  public var views: Int
  public var screenshots: Int
  
  public var audioURL: String?
  public var username: String?
  public var imageURL: String?
  
  public var createdAt: Int
  public var updatedAt: Int

  public init(title: String, text: String, source: String, caption: String? = nil, tags: String? = nil, descriptionText: String? = nil, approved: Bool? = nil, hearts: Int = 0, plays: Int = 0, shares: Int = 0, views: Int = 0, screenshots: Int = 0, audioURL: String? = nil, username: String? = nil, imageURL: String? = nil, createdAt: Int = Int(Date().timeIntervalSince1970), updatedAt: Int = Int(Date().timeIntervalSince1970)) {
    self.title = title
    self.caption = caption
    self.text = text
    self.source = source
    self.tags = tags
    self.descriptionText = descriptionText
    self.approved = approved
    self.hearts = hearts
    self.plays = plays
    self.shares = shares
    self.views = views
    self.screenshots = screenshots
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
    
    views = try container.decodeIfPresent(.views) ?? 0
    hearts = try container.decodeIfPresent(.hearts) ?? 0
    shares = try container.decodeIfPresent(.shares) ?? 0
    plays = try container.decodeIfPresent(.plays) ?? 0
    screenshots = try container.decodeIfPresent(.screenshots) ?? 0
    
    let timestamp = Int(Date().timeIntervalSince1970)
    createdAt = try container.decodeIfPresent(.createdAt) ?? timestamp
    updatedAt = try container.decodeIfPresent(.updatedAt) ?? timestamp
    
    // MARK: Optional values
    id = try container.decodeIfPresent(.id)
    tags = try container.decodeIfPresent(.tags)
    descriptionText = try container.decodeIfPresent(.descriptionText)
    caption = try container.decodeIfPresent(.caption)
    audioURL = try container.decodeIfPresent(.audioURL)
    imageURL = try container.decodeIfPresent(.imageURL)
    username = try container.decodeIfPresent(.username)
    approved = try container.decodeIfPresent(.approved)
  }
  
}
