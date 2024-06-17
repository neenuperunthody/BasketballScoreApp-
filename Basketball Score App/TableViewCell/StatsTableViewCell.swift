//
//  StatsTableViewCell.swift
//  Basketball Score App
//
//  Created by Neenu on 15/06/24.
//

import UIKit

class StatsTableViewCell: UITableViewCell {

    //Mark:- Oulets
    @IBOutlet weak var awayScoreStatus: UILabel!
    @IBOutlet weak var awayScoreView: UIView!
    @IBOutlet weak var homeScoreStatus: UILabel!
    @IBOutlet weak var homeScoreView: UIView!
    @IBOutlet weak var descriptionLabel: UILabel!

    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
