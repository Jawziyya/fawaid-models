//
//  Book.swift
//  FawaidModels
//
//  Created by Abdurahim Jauzee on 24/01/2018.
//

public protocol Book: Entry {

    /// Name of the author.
    var author: String { get }

    /// Category of the book.
    var category: String { get }

    /// Number of pages.
    var pagesNumber: Int { get }

    /// Number of the volume.
    var volume: Int? { get }

    /// Name of the sharih (explainer).
    var sharih: String? { get }

    /// Name of the translator.
    var translator: String? { get }

    /// Legal info.
    var copyright: String? { get }

    /// Name/title of the publisher.
    var publisher: String? { get }

    /// Publishing date in ISO 8601 format (YYYY-MM-DD).
    var publishingDate: String? { get }

    /// ISBN number.
    var ISBN: String? { get }

    /// Detailed description.
    var descriptionText: String? { get }

    /// URL for the PDF file.
    var pdfURL: String? { get }

    /// URL for the EPUB file
    var epubURL: String? { get }

    /// URL for the DOC file.
    var docURL: String? { get }

}
