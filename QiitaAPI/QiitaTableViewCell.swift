//
//  QiitaTableViewCell.swift
//  QiitaAPI
//
//  Created by 藤田優作 on 2021/05/06.
//

import UIKit
import Nuke

class QiitaTableViewCell: UITableViewCell {
    
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    
    func set(title:String,author:String,imageUrl:String) {
        Nuke.loadImage(with: URL(string: imageUrl)!, into: iconImageView)
        titleLabel.text = title
        authorLabel.text = author
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
