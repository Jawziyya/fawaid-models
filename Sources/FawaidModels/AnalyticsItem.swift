//
//  File.swift
//  
//
//  Created by Abdurahim Jauzee on 18.04.2020.
//

public enum TrackingAction: String, Codable, CaseIterable {
    case view, play, share, download, screenshot
}

public struct AnalyticsItem: Codable {

    public let action: TrackingAction
    public let number: Int
    public let objectId: Int
    public let objectType: String

    public init(objectId: Int, objectType: String, action: TrackingAction, number: Int) {
        self.action = action
        self.number = number
        self.objectId = objectId
        self.objectType = objectType
    }

}
