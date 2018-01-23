//
//  Entry.swift
//  FawaidModels
//
//  Created by Abdurahim Jauzee on 24/01/2018.
//

/**
 Base protocol.
 
 All objects in the feed should implement this protocol.
 */
public protocol Entry {
  
  /// A title. Required field for all entries.
  var title: String { get }
  
  /// Short optional description of the entry.
  var caption: String? { get }
  
  /// Optional URL of a cover image.
  var imageURL: String? { get }
  
  /// UNIX timestamp of entry created date.
  var createdAt: Int { get }
  
  /// UNIX timestamp of entry updated date.
  var updatedAt: Int { get }
  
  /// Type of the entry. E.g.: "book"
  var type: String { get }
  
}

public extension Entry {
  
  var type: String {
    return "\(self)"
  }
  
}
