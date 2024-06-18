//
//  MatchDetailsModel.swift
//  Basketball Score App
//
//  Created by Neenu on 15/06/24.
//

import Foundation


// MARK: - Match Details Data
struct MatchData: Codable {
    let matchDetails: MatchDetails
    let awayTeamDetail, homeTeamDetail: TeamDetail?
    let tournamentDetails: TournamentDetails

    enum CodingKeys: String, CodingKey {
        case matchDetails = "match_details"
        case awayTeamDetail = "away_team_detail"
        case homeTeamDetail = "home_team_detail"
        case tournamentDetails = "tournament_details"
    }
}

// MARK: - MatchDetails
struct MatchDetails: Codable {
    let matchTime: Int
    let homeScores, awayScores: [Int]
    let stats: [[Double]]

    enum CodingKeys: String, CodingKey {
        case matchTime = "match_time"
        case homeScores = "home_scores"
        case awayScores = "away_scores"
        case stats
    }
}

// MARK: - Position
struct Position: Codable {
    let home, away: String
}

// MARK: - TeamDetail
struct TeamDetail: Codable {
    let name, shortName: String?
    let logo: String

    enum CodingKeys: String, CodingKey {
        case name
        case shortName = "short_name"
        case logo
    }
}

// MARK: - SeasonDetails
//struct SeasonDetails: Codable {
//    let id, competitionID, year: String?
//    let hasPlayerStats, hasTeamStats, isCurrent, updatedAt: Int?
//
//    enum CodingKeys: String, CodingKey {
//        case id
//        case competitionID = "competition_id"
//        case year
//        case hasPlayerStats = "has_player_stats"
//        case hasTeamStats = "has_team_stats"
//        case isCurrent = "is_current"
//        case updatedAt = "updated_at"
//    }
//}

// MARK: - TournamentDetails
struct TournamentDetails: Codable {
    let name: String
    let shortName: String
    let logo: String

    enum CodingKeys: String, CodingKey {
        case name
        case shortName = "short_name"
        case logo
    }
}

// MARK: - VenueDetails
struct VenueDetails: Codable {
}

