//
//  CheackableTableTableViewCell.swift
//  Sublease
//
//  Created by mithil on 10/20/21.
//  Copyright © 2021 mithil. All rights reserved.
//

import UIKit

class CheckableTableTableViewCell: UITableViewCell {
    @IBOutlet weak var label2: UILabel!
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
            super.init(style: style, reuseIdentifier: reuseIdentifier)
            self.selectionStyle = .none
        }

        required init?(coder aDecoder: NSCoder) {
            super.init(coder: aDecoder)
        }

        override func setSelected(_ selected: Bool, animated: Bool) {
            super.setSelected(selected, animated: animated)
            self.accessoryType = selected ? .checkmark : .none
        }
    
}
