//
//  AnalyticsItem.swift
//  
//
//  Created by Abdurahim Jauzee on 18.04.2020.
//

public enum TrackingAction: String, Codable, CaseIterable {
    case view, play, share, download, screenshot
}

public protocol AnalyticsItem {
    var id: Int? { get }
    var action: String { get }
    var count: Int { get }
    var objectId: Int { get }
    var objectType: String { get }
}
