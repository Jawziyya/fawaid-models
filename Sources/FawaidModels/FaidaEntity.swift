//
//  FaidaEntity.swift
//  FawaidModelsPackageDescription
//
//  Created by Abdurahim Jauzee on 15/04/2018.
//

import Foundation

public struct FaidaEntity: Codable {
  
  public var id: Int?
  
  public enum Keys: String {
    case id
    case title, caption, text, source, tags
    case hearts, plays, shares, views, screenshots
    case audioURL, username
    case description
    case approved
    case createdAt, updatedAt
    case imageURL
  }
  
  public var title: String
  public var caption: String?
  
  public var text: String
  public var source: String
  
  public var tags: String?
  public var description: String?
  
  public var approved: Bool?
  
  public var hearts: Int?
  public var plays: Int?
  public var shares: Int?
  public var views: Int?
  public var screenshots: Int?
  
  public var audioURL: String?
  public var username: String?
  public var imageURL: String?
  
  public var createdAt: Int
  public var updatedAt: Int
  
}
