//
//  LevelProgression.swift
//  WaniKaniStatistics
//
//  Created by Amanda Chappell on 1/30/18.
//  Copyright © 2018 Amanda Chappell. All rights reserved.
//

import Foundation

struct LevelProgressions: Codable {
    var data: [LevelProgressionsData]
}

struct LevelProgressionsData: Codable {
    var data: LevelProgression
}

struct LevelProgression: Codable {
    var created_at: String
    var level: Int
    var unlocked_at: String
    var started_at: String
    var passed_at: String?
    var completed_at: String?
    var abandoned_at: String?
}