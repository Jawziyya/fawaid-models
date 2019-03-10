//
//  Feed.swift
//  FawaidModels
//
//  Created by Abdurahim Jauzee on 15/04/2018.
//

import Foundation

internal extension Encodable {
  func jsonData(encoder: JSONEncoder = .init()) throws -> Data {
    return try encoder.encode(self)
  }
}

public typealias FeedObject = Entry & Identifiable & Encodable

public struct Feed: Codable {
  
  public let id: Int
  public let timestamp: Int
  public let object: Data
  public let objectType: FeedObjectType
  
  public init(id: Int, object: FeedObject, type: FeedObjectType? = nil, encoder: JSONEncoder = .init()) throws {
    self.id = id
    timestamp = object.createdAt
    self.object = try object.jsonData(encoder: encoder)
    objectType = type ?? object.getFeedObjectType()
  }

  public init(id: Int, timestamp: Int, object: Data, objectType: FeedObjectType) {
    self.id = id
    self.timestamp = timestamp
    self.object = object
    self.objectType = objectType
  }
  
}
