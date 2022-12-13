//
//  MyTableViewCell.swift
//  Delegate Task One
//
//  Created by Ivan Behichev on 11.12.2022.
//

import UIKit

protocol MyTableViewCellDelegate {
    func showWhatRowIsPicked(cell: UITableViewCell)
    func showSwitchState(_ switchState: Bool)
    
}

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var mySwitch: UISwitch!
    
    var delegate: MyTableViewCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    @IBAction func cellButtonPressed(_ sender: UIButton) {
        delegate?.showWhatRowIsPicked(cell: self)
        delegate?.showSwitchState(mySwitch.isOn)
    }
}
