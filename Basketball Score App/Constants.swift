//
//  Constants.swift
//  Basketball Score App
//
//  Created by Neenu on 15/06/24.
//

import Foundation

struct Constants {
    
    // MARK: - URLs
    static let matchListUrl = "https://testmake.datasport.one/api/basketball/matchlist/live?group_by=tournament"
    static let matchDetailsUrl = "https://testmake.datasport.one/api/basketball/matchlist/match/detail/"
    static func constructFullURL(with matchId: String) -> String {
        return Constants.matchDetailsUrl + matchId
    }
    
    
    static let matchListTitle = "Live Matches"
    static let noTeamName = "No Team Name"
    
    // MARK: - Alert Messages
    static let networkError = "Something went wrong, Please try after some time"
    static let dataError = "There are currently no live matches available."
    
    // MARK: - Color Code
    static let darkGreen = "#3BE27F"
    static let lightGreen = "#003919"
    static let darkRed = "#93000A"
    static let lightRed = "#FFDAD6"
    static let textColor = "#C1C9BF"
    static let green = "#005227"
    static let barColor = "#32eb7d"
    
    // MARK: - View Pager Title
    static let overview = "Overview"
    static let stats = "Stats"
    static let odds = "Odds"
    static let h2h = "H2H"
    
    // MARK: - Tableview Cell
    static let tournamentCell = "TournamentNameTableViewCell"
    static let teamDetailsCell = "TeamDetailsTableViewCell"
    
    // MARK: - Storyboard
    static let matchDetails = "MatchDetails"
    
    // MARK: - Storyboard Identifiers
    static let overViewVC = "overview_vc"
    static let statsVC = "stats_vc"
    static let oddsVC = "odds_vc"
    static let h2hVC = "h2h_vc"
    static let matchDetailsVC = "matchDetails_vc"
}
