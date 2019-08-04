//
//  Feed.swift
//  FawaidModels
//
//  Created by Abdurahim Jauzee on 15/04/2018.
//

import Foundation

public typealias FeedObject = Entry & Identifiable & Encodable

public struct Feed: Codable {

  public let id: Int
  public let timestamp: Int
  public let object: FeedObject
  public let objectType: FeedObjectType

  enum CodingKeys: String, CodingKey {
    case id, timestamp, object, objectType
  }

  public init(id: Int, object: FeedObject, type: FeedObjectType? = nil, encoder: JSONEncoder = .init()) throws {
    self.id = id
    timestamp = object.createdAt
    self.object = object
    objectType = type ?? object.getFeedObjectType()
  }

  public init(id: Int, timestamp: Int, object: FeedObject, objectType: FeedObjectType) {
    self.id = id
    self.timestamp = timestamp
    self.object = object
    self.objectType = objectType
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    id = try container.decode(.id)
    timestamp = try container.decode(.timestamp)
    objectType = try container.decode(.objectType)
    if let faida: FaidaEntity = try container.decode(.object) {
      object = faida
    } else if let book: BookEntity = try container.decode(.object) {
      object = book
    } else {
      fatalError("Unexpected case.")
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(id, forKey: .id)
    try container.encode(timestamp, forKey: .timestamp)
    try container.encode(objectType, forKey: .objectType)

    if let faida = object as? FaidaEntity {
      try container.encode(faida, forKey: .object)
    } else if let book = object as? BookEntity {
      try container.encode(book, forKey: .object)
    }
  }

}
