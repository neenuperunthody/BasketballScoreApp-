//
//  MatchListModel.swift
//  Basketball Score App
//
//  Created by Neenu on 15/06/24.
//

import Foundation

// MARK: - MatchListModel
struct Tournaments: Codable {
    let matchList: [TournamentList]
}

// MARK: - MatchList
struct TournamentList: Codable {
    let match: [Match]
    let tournamentName: String

    enum CodingKeys: String, CodingKey {
        case match = "match"
        case tournamentName = "tournament_name"
    }
}

// MARK: - Match
struct Match: Codable {
    let id: String
    let details: Details
}

// MARK: - Details
struct Details: Codable {
    let matchDetails: MatchDetailsData
    let awayTeamDetail, homeTeamDetail: TeamDetails?
    let tournamentDetails: TournamentDetails


    enum CodingKeys: String, CodingKey {
        case matchDetails = "match_details"
        case awayTeamDetail = "away_team_detail"
        case homeTeamDetail = "home_team_detail"
        case tournamentDetails = "tournament_details"
    }
}

// MARK: - TeamDetail
struct TeamDetails: Codable {
    let id: String
    let name, shortName: String
    let logo: String


    enum CodingKeys: String, CodingKey {
        case id
        case name
        case shortName = "short_name"
        case logo
    }
}

// MARK: - MatchDetails
struct MatchDetailsData: Codable {
    let id: String
    let matchTime: Int
    let homeScores, awayScores: [Int]
    let stats: [[Double]]

    enum CodingKeys: String, CodingKey {
        case id
        case matchTime = "match_time"
        case homeScores = "home_scores"
        case awayScores = "away_scores"
        case stats
    }
}
