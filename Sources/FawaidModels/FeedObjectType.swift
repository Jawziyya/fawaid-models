//
//  FeedObjectType.swift
//  FawaidModelsPackageDescription
//
//  Created by Abdurahim Jauzee on 15/04/2018.
//

import Foundation

public enum FeedObjectType: String, Codable {
  case book, faida, faidaWithAudio, board
}

public protocol Identifiable {
  var id: Int? { get }
}

public extension Identifiable {
  
  public func getFeedObjectType() -> FeedObjectType {
    guard let objectType = String(describing: type(of: self)).components(separatedBy: "Entity").first else {
      return .faida
    }
    let feedObjectType = FeedObjectType(rawValue: objectType.lowercased()) ?? .faida
    return feedObjectType
  }
  
}

extension BookEntity: Identifiable { }
extension FaidaEntity: Identifiable { }
extension BoardEntity: Identifiable { }
