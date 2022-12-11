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
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "testTableViewCell", for: indexPath) as? MyTableViewCell {
            cell.delegate = self
            return cell
        }
        
        return UITableViewCell()
    }
    
}

//MARK: - MyTableViewCellDelegate

extension ViewController: MyTableViewCellDelegate {

    var row: Int? {
        get {
            (delegateTestTableView.indexPathForSelectedRow?.row ?? 0) + 1
        }
        set {
            0
        }
    }
    

    func showWhatRowIsPicked(_ numberOfRow: Int, _ switchState: Bool) {
        print("Нажата ячейка под номером - \(numberOfRow), switch - \(switchState)")
    }
}

