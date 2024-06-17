//
//  StatsViewController.swift
//  Basketball Score App
//
//  Created by Neenu on 15/06/24.
//

import UIKit

class StatsViewController: UIViewController {
   
    // MARK: - Outlets
    @IBOutlet weak var tableViewHeight: NSLayoutConstraint!
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Variables
    var matchDetailsResponse: MatchDetails?
    let descriptions: [Int: String] = [
        1: "3-point goals",
        2: "2-point goals",
        3: "Free throw goals",
        4: "Number of pauses remaining",
        5: "Fouls",
        6: "Free throw percentage",
        7: "Total Pauses"
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTableView()
    }
    
    func setTableView() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.layer.cornerRadius = 15
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        updateTableViewHeight()
    }
    
    func updateTableViewHeight() {
        tableView.layoutIfNeeded()
        tableViewHeight.constant = tableView.contentSize.height
    }
}

// MARK: - UITableViewDataSource, UITableViewDelegate

extension StatsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return matchDetailsResponse?.stats.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "stats_cell", for: indexPath) as? StatsTableViewCell else {
            return UITableViewCell()
        }
        
        if let statsArray = matchDetailsResponse?.stats[indexPath.row] as? [Double] {
            configureCell(cell, with: statsArray)
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40
    }
    
    private func configureCell(_ cell: StatsTableViewCell, with statsArray: [Double]) {
        let homeScore = statsArray[1]
        let awayScore = statsArray[2]
        
        if homeScore == awayScore {
            cell.homeScoreView.backgroundColor = UIColor(hexString: Constants.green)
            cell.awayScoreView.backgroundColor = UIColor(hexString: Constants.green)
            cell.awayScoreStatus.textColor = UIColor(hexString: Constants.darkGreen)
            cell.homeScoreStatus.textColor = UIColor(hexString: Constants.darkGreen)
        } else if homeScore > awayScore {
            cell.homeScoreView.backgroundColor = UIColor(hexString: Constants.green)
            cell.homeScoreStatus.textColor = UIColor(hexString: Constants.darkGreen)
            cell.awayScoreView.backgroundColor = .clear
        } else {
            cell.homeScoreView.backgroundColor = .clear
            cell.awayScoreView.backgroundColor = UIColor(hexString: Constants.green)
            cell.awayScoreStatus.textColor = UIColor(hexString: Constants.darkGreen)
        }
        
        cell.homeScoreStatus.text = "\(homeScore)"
        cell.awayScoreStatus.text = "\(awayScore)"
        
        if let descriptionKey = statsArray.first.map({ Int($0) }), let description = descriptions[descriptionKey] {
            cell.descriptionLabel.text = description
        } else {
            cell.descriptionLabel.text = ""
        }
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
        let totalRows = tableView.numberOfRows(inSection: indexPath.section)
        if indexPath.row == totalRows - 1 {
            cell.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: .greatestFiniteMagnitude)
        } else {
            cell.separatorInset = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 15)
        }
    }
}
