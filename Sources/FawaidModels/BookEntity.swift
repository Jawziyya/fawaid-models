//
//  BookEntity.swift
//  FawaidModels
//
//  Created by Abdurahim Jauzee on 15/04/2018.
//

import Foundation

public struct BookEntity: Book, Codable {

  public enum Keys: String, CodingKey {
    case id, title, author, descriptionText
    case caption, username
    case createdAt, updatedAt
    case hearts, shares, views
    case sharih, copyright, translator
    case imageURL, pdfURL, epubURL, docURL
  }
  
  /// The book author name.
  public var author: String

  public var sharih: String?
  public var translator: String?
  public var copyright: String?

  public var id: Int?
  public let title: String
  public var descriptionText: String?
  
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

  public init(title: String, author: String) {
    self.title = title
    self.author = author
    let timestamp = Int(Date().timeIntervalSince1970)
    createdAt = timestamp
    updatedAt = timestamp
    hearts = 0
    shares = 0
    views = 0
  }
  
  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: Keys.self)
    title = try container.decode(.title)
    author = try container.decode(.author)
    
    // MARK: Counters
    views = try container.decodeIfPresent(.views) ?? 0
    hearts = try container.decodeIfPresent(.hearts) ?? 0
    shares = try container.decodeIfPresent(.shares) ?? 0
    
    // MARK: Timestamps
    let timestamp = Int(Date().timeIntervalSince1970)
    createdAt = try container.decodeIfPresent(.createdAt) ?? timestamp
    updatedAt = try container.decodeIfPresent(.updatedAt) ?? timestamp
    
    // MARK: Optional values
    sharih = try container.decodeIfPresent(.sharih)
    translator = try container.decodeIfPresent(.translator)
    copyright = try container.decodeIfPresent(.copyright)
    caption = try container.decodeIfPresent(.caption)
    id = try container.decodeIfPresent(.id)
    username = try container.decodeIfPresent(.username)
    descriptionText = try container.decodeIfPresent(.descriptionText)
    imageURL = try container.decodeIfPresent(.imageURL)
    pdfURL = try container.decodeIfPresent(.pdfURL)
    epubURL = try container.decodeIfPresent(.epubURL)
    docURL = try container.decodeIfPresent(.docURL)
  }
  
}
