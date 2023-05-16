//
//  bbcCell.swift
//  動態TableViewcell(使用內建格式與自定義格式)
//
//  Created by JeffApp on 2023/5/15.
//

import UIKit

class bbcCell: UITableViewCell {

    @IBOutlet weak var categoryButton: UIButton!
    @IBOutlet weak var subjectImageView: UIImageView!
    @IBOutlet weak var topicLabel: UILabel!
    @IBOutlet weak var gradeLabel: UILabel!
    @IBOutlet weak var introTextView: UITextView!
    @IBOutlet weak var releaseDate: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    
    @IBOutlet weak var purposeLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
