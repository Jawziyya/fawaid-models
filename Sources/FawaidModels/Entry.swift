//
//  Entry.swift
//  FawaidModels
//
//  Created by Abdurahim Jauzee on 24/01/2018.
//

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
    
    /// UNIX timestamp of entry created date (seconds since 1970).
    var createdAt: Int { get }
    
    /// UNIX timestamp of entry updated date (seconds since 1970).
    var updatedAt: Int { get set }
    
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
