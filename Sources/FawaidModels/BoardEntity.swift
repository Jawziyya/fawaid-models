//
//  BoardEntity.swift
//  FawaidModelsPackageDescription
//
//  Created by Abdurahim Jauzee on 15/04/2018.
//

import Foundation

public struct BoardEntity: Board, Codable {
  
  public var hearts: Int
  public var shares: Int
  public var views: Int
  
  public var id: Int?
  
  public var title: String
  
  public let description: String
  
  public var username: String?
  public let caption: String?
  public let imageURL: String?
  
  public let createdAt: Int
  public var updatedAt: Int
  
}
