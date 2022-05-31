//
//  ListTableViewController.swift
//  list-storyboard
//
//  Created by Carlos Amaral on 26/05/22.
//

import UIKit

class ListTableViewController: UITableViewController {
    var list : [ProductModel] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        list = productList
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "productCellIdentifier", for: indexPath)
        cell.textLabel?.text = list[indexPath.row].name
        cell.accessoryType = .disclosureIndicator
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .disclosureIndicator
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }

}
