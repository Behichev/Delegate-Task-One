//
//  MyTableViewCell.swift
//  Delegate Task One
//
//  Created by Ivan Behichev on 11.12.2022.
//

import UIKit

protocol MyTableViewCellDelegate {
    func showWhatRowIsPicked(_ numberOfRow: Int, _ switchState: Bool)
    
    var row: Int? { get set }
}

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var switchState: UISwitch!
    
    var delegate: MyTableViewCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    @IBAction func cellButtonPressed(_ sender: UIButton) {
        delegate?.showWhatRowIsPicked(delegate?.row ?? 0, switchState.isOn)
    }
}
