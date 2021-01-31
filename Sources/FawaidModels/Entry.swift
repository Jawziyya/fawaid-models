//
//  Entry.swift
//  FawaidModels
//
//  Created by Abdurahim Jauzee on 24/01/2018.
//

import Foundation

/**
 Base protocol.
 */
public protocol Entry: Codable {
    
    /// Object identifier.
    var id: Int? { get }
    
    /// Entry title. Required field for all entries.
    var title: String { get }
    
    /// Optional URL of a cover image.
    var imageURL: String? { get }
    
    /// Timestamp of entry created date.
    var createdAt: Date? { get }
    
    /// Timestamp of entry updated date.
    var updatedAt: Date? { get set }
    
    /// Type of the entry. E.g.: "book"
    var type: String { get }
    
    /// Handle of the user who has created the entry.
    var username: String? { get }
    
}

public extension Entry {
    
    var type: String {
        return "\(self)"
    }
    
}
