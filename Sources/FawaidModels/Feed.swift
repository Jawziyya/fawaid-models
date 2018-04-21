//
//  Feed.swift
//  FawaidModelsPackageDescription
//
//  Created by Abdurahim Jauzee on 15/04/2018.
//

import Foundation


internal extension Encodable {
  
  func jsonData() throws -> Data {
    return try JSONEncoder().encode(self)
  }
  
}


public typealias FeedObject = Entry & Identifiable & Encodable

public struct Feed: Codable {
  
  public let id: Int
  public let timestamp: Int
  public let object: Data
  public let objectType: FeedObjectType
  
  public init(object: FeedObject) throws {
    id = object.id!
    timestamp = object.createdAt
    self.object = try object.jsonData()
    objectType = object.getFeedObjectType()
  }
  
  enum CodingKeys: String, CodingKey {
    case id, timestamp, object, objectType
  }
  
  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    id = try container.decode(Int.self, forKey: .id)
    timestamp = try container.decode(Int.self, forKey: .timestamp)
    objectType = try container.decode(FeedObjectType.self, forKey: .objectType)
    if let book = try? container.decode(BookEntity.self, forKey: .object) {
      object = try book.jsonData()
    } else if let faida = try? container.decode(FaidaEntity.self, forKey: .object) {
      object = try faida.jsonData()
    } else if let board = try? container.decode(BoardEntity.self, forKey: .object) {
      object = try board.jsonData()
    } else {
      object = Data()
    }
  }
  
  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(id, forKey: .id)
    try container.encode(timestamp, forKey: .timestamp)
    try container.encode(objectType, forKey: .objectType)
    
    let decoder = JSONDecoder()
    
    if let book = try? decoder.decode(BookEntity.self, from: object) {
      try container.encode(book, forKey: .object)
    } else if let faida = try? decoder.decode(FaidaEntity.self, from: object) {
      try container.encode(faida, forKey: .object)
    } else if let board = try? decoder.decode(BoardEntity.self, from: object) {
      try container.encode(board, forKey: .object)
    }
  }
  
}
