//
//  BookEntity.swift
//  FawaidModelsPackageDescription
//
//  Created by Abdurahim Jauzee on 15/04/2018.
//

import Foundation

public struct BookEntity: Book, Codable {
  
  public var id: Int?
  
  public let title: String
  public let authorName: String
  
  /// Short description
  public var caption: String?
  
  // MARK: - Timestamps
  public var createdAt: Int
  public var updatedAt: Int
  
  // MARK: - URLS
  public var imageURL: String?
  public var pdfURL: String?
  public var epubURL: String?
  public var docURL: String?
  
}
