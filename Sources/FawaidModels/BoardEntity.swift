//
//  BoardEntity.swift
//  FawaidModels
//
//  Created by Abdurahim Jauzee on 15/04/2018.
//

import Foundation

public struct BoardEntity: Board, Codable {
  
  public var id: Int?
  public var title: String

  public var hearts: Int
  public var shares: Int
  public var views: Int
  
  public let createdAt: Int
  public var updatedAt: Int

  public var username: String?
  public let caption: String?
  public let imageURL: String?

}
