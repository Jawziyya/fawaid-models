//
//  BoardEntity.swift
//  FawaidModelsPackageDescription
//
//  Created by Abdurahim Jauzee on 15/04/2018.
//

import Foundation

public struct BoardEntity: Board, Codable {
  
  public var id: Int?
  
  public var title: String
  public let username: String
  
  public let description: String
  
  public let caption: String?
  public let imageURL: String?
  
  public let createdAt: Int
  public var updatedAt: Int
  
  public init(title: String, username: String, description: String = "") {
    self.title = title
    self.username = username
    self.description = description
    let date = Int(Date().timeIntervalSince1970)
    createdAt = date
    updatedAt = date
    
    caption = nil
    imageURL = nil
  }
  
}
