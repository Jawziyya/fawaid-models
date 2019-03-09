//
//  BookEntity.swift
//  FawaidModels
//
//  Created by Abdurahim Jauzee on 15/04/2018.
//

import Foundation

public struct BookEntity: Book, Codable {
  
  public enum Keys: String, CodingKey {
    case id, title, authorName
    case caption, username
    case createdAt, updatedAt
    case hearts, shares, views
    case imageURL, pdfURL, epubURL, docURL
  }
  
  public var id: Int?
  
  public let title: String
  public let authorName: String
  
  /// Short description
  public var caption: String?
  public var username: String?
  
  // MARK: - Timestamps
  public var createdAt: Int
  public var updatedAt: Int
  
  // MARK: - URLS
  public var imageURL: String?
  public var pdfURL: String?
  public var epubURL: String?
  public var docURL: String?
  
  // MARK: - Counters
  public var hearts: Int
  public var shares: Int
  public var views: Int

  public init(id: Int? = nil, title: String, authorName: String, caption: String? = nil, username: String? = nil, createdAt: Int, updatedAt: Int, imageURL: String? = nil, pdfURL: String? = nil, epubURL: String? = nil, docURL: String? = nil, hearts: Int = 0, shares: Int = 0, views: Int = 0) {
    self.id = id
    self.title = title
    self.authorName = authorName
    self.caption = caption
    self.username = username
    self.createdAt = createdAt
    self.updatedAt = updatedAt
    self.imageURL = imageURL
    self.pdfURL = pdfURL
    self.epubURL = epubURL
    self.docURL = docURL
    self.hearts = hearts
    self.shares = shares
    self.views = views
  }
  
  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: Keys.self)
    title = try container.decode(.title)
    authorName = try container.decode(.authorName)
    
    // MARK: Counters
    views = try container.decodeIfPresent(.views) ?? 0
    hearts = try container.decodeIfPresent(.hearts) ?? 0
    shares = try container.decodeIfPresent(.shares) ?? 0
    
    // MARK: Timestamps
    let timestamp = Int(Date().timeIntervalSince1970)
    createdAt = try container.decodeIfPresent(.createdAt) ?? timestamp
    updatedAt = try container.decodeIfPresent(.updatedAt) ?? timestamp
    
    // MARK: Optional values
    id = try container.decodeIfPresent(.id)
    username = try container.decodeIfPresent(.username)
    caption = try container.decodeIfPresent(.caption)
    imageURL = try container.decodeIfPresent(.imageURL)
    pdfURL = try container.decodeIfPresent(.pdfURL)
    epubURL = try container.decodeIfPresent(.epubURL)
    docURL = try container.decodeIfPresent(.docURL)
  }
  
}
