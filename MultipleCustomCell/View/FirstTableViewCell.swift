//
//  FirstTableViewCell.swift
//  MultipleCustomCell
//
//  Created by Begum Unal on 28.06.2022.
//

import UIKit

class FirstTableViewCell: UITableViewCell {

    static let id = "FirstTableViewCell"
    
    @IBOutlet var collectionView : UICollectionView!
    

    static func nib() ->UINib{
        return UINib(nibName: "FirstTableViewCell", bundle: nil)
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




