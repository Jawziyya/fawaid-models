//
//  Entry.swift
//  FawaidModels
//
//  Created by Abdurahim Jauzee on 24/01/2018.
//

public protocol Faida: Entry {
  
  var text: String { get }
  var source: String { get }
  
  var tags: String? { get }
  var descriptionText: String? { get }
  
  var approved: Bool? { get }
  
  var plays: Int { get }
  var screenshots: Int { get }
  
  var audioURL: String? { get }
  var username: String? { get }
  var imageURL: String? { get }
  
}
