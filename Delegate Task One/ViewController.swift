//
//  ViewController.swift
//  Delegate Task One
//
//  Created by Ivan Behichev on 09.12.2022.
//

import UIKit



class ViewController: UIViewController {
    
    @IBOutlet weak var delegateTestTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        delegateTestTableView.dataSource = self
    }
}

//MARK: - UITableViewDataSource

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "testTableViewCell", for:
                                                        indexPath) as? MyTableViewCell {
            cell.delegate = self
            return cell
        }
        return UITableViewCell()
    }
    
}

//MARK: - MyTableViewCellDelegate

extension ViewController: MyTableViewCellDelegate {
    func showWhatRowIsPicked(cell: UITableViewCell) {
        let numberOfcell = delegateTestTableView.indexPath(for: cell)
        print("Нажата ячейка под номером - \(String(describing: numberOfcell))")
    }
    
    
    func showSwitchState(_ switchState: Bool) {
        switch switchState {
        case true:
            print("Свитч включен")
        case false:
            print("Свитч выключен")
        }
    }
    
    
}

