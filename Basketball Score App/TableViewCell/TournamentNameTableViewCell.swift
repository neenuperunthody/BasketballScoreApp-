//
//  TournamentNameTableViewCell.swift
//  Basketball Score App
//
//  Created by Neenu on 16/06/24.
//

import UIKit

class TournamentNameTableViewCell: UITableViewCell {

    @IBOutlet weak var tournamentNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setTournamentName(_ name: String) {
        self.tournamentNameLabel.text = name
    }
    
}
