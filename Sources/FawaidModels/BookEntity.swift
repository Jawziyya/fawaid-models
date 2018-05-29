//
//  BookEntity.swift
//  FawaidModelsPackageDescription
//
//  Created by Abdurahim Jauzee on 15/04/2018.
//

import Foundation

public struct BookEntity: Book, Codable {
  
  public enum Keys: String, CodingKey {
    case id, title, authorName, fileName
    case caption, username
    case createdAt, updatedAt
    case hearts, shares, views
    case imageURL, pdfURL, epubURL, docURL
  }
  
  public var id: Int?
  
  public let title: String
  public let authorName: String
  
  public let fileName: String
  
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
  
  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: Keys.self)
    id = try container.decodeIfPresent(.id)
    title = try container.decode(.title)
    authorName = try container.decode(.authorName)
    fileName = try container.decode(.title)
    
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
