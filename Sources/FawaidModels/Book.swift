//
//  Book.swift
//  FawaidModels
//
//  Created by Abdurahim Jauzee on 24/01/2018.
//

public protocol Book: Entry {

  /// Name of the author.
  var author: String { get }

  /// Name of the sharih (explainer).
  var sharih: String? { get }

  /// Name of the translator.
  var translator: String? { get }

  /// Legal info.
  var copyright: String? { get }

  /// Detailed description.
  var descriptionText: String? { get }

  /// URL for the PDF file.
  var pdfURL: String? { get }

  /// URL for the EPUB file
  var epubURL: String? { get }

  /// URL for the DOC file.
  var docURL: String? { get }

}
