//
//  SearchBarContainerTableViewCell.swift
//  AirBnb-iOS-UIKit
//
//  Created by Swantan Barua on 08/03/26.
//

import UIKit

class SearchBarContainerTableViewCell: UITableViewCell {

    // MARK: - IBOUTLETS
    @IBOutlet weak var searchBarView: UIView!
    
    // MARK: - LIFECYCLE METHODS
    override func awakeFromNib() {
        super.awakeFromNib()
        
        searchBarView.layer.cornerRadius = 43
    }

    override func setSelected(
        _ selected: Bool,
        animated: Bool
    ) {
        super.setSelected(selected, animated: animated)
    }
}
