//
//  BookEntity.swift
//  FawaidModels
//
//  Created by Abdurahim Jauzee on 15/04/2018.
//

import Foundation

public struct BookEntity: Book, Codable {

    public enum Keys: String, CodingKey {
        case id, title, author, descriptionText
        case caption, username
        case createdAt, updatedAt
        case sharih, copyright, translator
        case imageURL, pdfURL, epubURL, docURL
        case pagesNumber, category
        case publisher, publishingDate, ISBN
        case volume
    }

    public var id: Int?

    // MARK: - Basic data.
    public let title: String
    public var author: String
    public var category: String
    public var pagesNumber: Int
    public var descriptionText: String?
    public var volume: Int?

    // MARK: - Meta & publishing related data.
    public var publisher: String?
    public var publishingDate: String?
    public var ISBN: String?
    public var copyright: String?
    public var sharih: String?
    public var translator: String?
    public var username: String?

    // MARK: - Timestamps
    public var createdAt: Date?
    public var updatedAt: Date?
    
    // MARK: - URLS
    public var imageURL: String?
    public var pdfURL: String?
    public var epubURL: String?
    public var docURL: String?

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: Keys.self)
        title = try container.decode(.title)
        author = try container.decode(.author)

        category = try container.decode(.category)
        pagesNumber = try container.decode(.pagesNumber)
        volume = try container.decodeIfPresent(.volume)

        publisher = try container.decodeIfPresent(.publisher)
        publishingDate = try container.decodeIfPresent(.publishingDate)
        ISBN = try container.decodeIfPresent(.ISBN)

        // MARK: Timestamps
        let timestamp = Date()
        createdAt = try container.decodeIfPresent(.createdAt) ?? timestamp
        updatedAt = try container.decodeIfPresent(.updatedAt) ?? timestamp
        
        // MARK: Optional values
        sharih = try container.decodeIfPresent(.sharih)
        translator = try container.decodeIfPresent(.translator)
        copyright = try container.decodeIfPresent(.copyright)
        id = try container.decodeIfPresent(.id)
        username = try container.decodeIfPresent(.username)
        descriptionText = try container.decodeIfPresent(.descriptionText)
        imageURL = try container.decodeIfPresent(.imageURL)
        pdfURL = try container.decodeIfPresent(.pdfURL)
        epubURL = try container.decodeIfPresent(.epubURL)
        docURL = try container.decodeIfPresent(.docURL)
    }
    
}
