//
//  QiitaTableViewCell.swift
//  QiitaAPI
//
//  Created by 藤田優作 on 2021/05/06.
//

import UIKit

class QiitaTableViewCell: UITableViewCell {
    
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    
    func set(title:String,author:String) {
        iconImageView.backgroundColor = .red
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
