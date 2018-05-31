//
//  FaidaUpdateRequest.swift
//  FawaidModelsPackageDescription
//
//  Created by Abdurahim Jauzee on 31/05/2018.
//

import Foundation

/**
 This model should be used to update the existing Faida object.
 
 */
public struct FaidaUpdateRequest: Codable {
  
  public let title: String?
  public let text: String?
  public let source: String?
  
  /// Was quote approved or not.
  public let approved: Bool?
  
  /// Notify the user which proposed the quote about the changes or not.
  /// If `approved` is nil this value has no effect.
  public let notify: Bool?
  
  public init(title: String? = nil, text: String? = nil, source: String? = nil, approved: Bool? = nil, notify: Bool? = nil) {
    self.title = title
    self.text = text
    self.source = source
    self.approved = approved
    self.notify = notify
  }
  
  public init(faida: Faida, approved: Bool? = nil, notify: Bool? = nil) {
    self.title = faida.title
    self.text = faida.text
    self.source = faida.source
    self.approved = approved
    self.notify = notify
  }
  
}

