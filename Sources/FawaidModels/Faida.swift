//
//  Entry.swift
//  FawaidModels
//
//  Created by Abdurahim Jauzee on 24/01/2018.
//

public protocol Faida: Entry {

  /// Faida text.
  var text: String { get }

  /// Source of the faida.
  var source: String { get }
  
  /// Hashtags separated by comma.
  var tags: String? { get }

  /// Description of the text. Maybe tafseer or sharh or some notes.
  var descriptionText: String? { get }
  
  /// Boolean value which determines if the faida was approved for publication.
  var approved: Bool? { get }
  
  /// Number of audio plays.
  var plays: Int { get }

  /// Number of snapshots taken.
  var screenshots: Int { get }
  
  /// URL of the audio file to play.
  var audioURL: String? { get }
  
}
