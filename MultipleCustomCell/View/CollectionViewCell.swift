//
//  CollectionViewCell.swift
//  MultipleCustomCell
//
//  Created by Begum Unal on 28.06.2022.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    static let id = "CollectionViewCell"
    
    static func nib() ->UINib{
        return UINib(nibName: "CollectionViewCell", bundle: nil)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    public func configure(with model: Model){
        self.label.text = model.userName
        self.imageView.image = UIImage(named: model.image)
    }
}
