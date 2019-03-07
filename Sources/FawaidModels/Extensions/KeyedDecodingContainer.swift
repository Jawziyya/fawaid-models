//
//  KeyedDecodingContainer.swift
//  FawaidModels
//
//  Created by Abdurahim Jauzee on 29/05/2018.
//

import Foundation

extension KeyedDecodingContainer {
  
  public func decode<T: Decodable>(_ key: Key, as type: T.Type = T.self) throws -> T {
    return try decode(T.self, forKey: key)
  }
  
  public func decodeIfPresent<T: Decodable>(_ key: KeyedDecodingContainer.Key) throws -> T? {
    return try decodeIfPresent(T.self, forKey: key)
  }
  
}
