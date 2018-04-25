//
//  Book.swift
//  FawaidModels
//
//  Created by Abdurahim Jauzee on 24/01/2018.
//

public protocol Book: Entry {
  
  var title: String { get }
  var authorName: String { get }
  var fileName: String { get }
  
  var pdfURL: String? { get }
  var epubURL: String? { get }
  var docURL: String? { get }
  
}
