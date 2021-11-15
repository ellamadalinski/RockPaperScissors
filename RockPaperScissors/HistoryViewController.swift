//
//  HistoryViewController.swift
//  RockPaperScissors
//
//  Created by ELLA MADALINSKI on 11/11/21.
//

import UIKit

class HistoryViewController: UIViewController , UITableViewDelegate , UITableViewDataSource
{
    
    
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    var incoming : [Games] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return incoming.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableViewOutlet.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! SavedCustomCell
        cell.nameLabelOutlet.text = incoming[indexPath.row].name
        cell.winsLabelOutlet.text = String(incoming[indexPath.row].wins)
        cell.tiesLabelOutlet.text = String(incoming[indexPath.row].ties)
        cell.losesLabelOutlet.text = String(incoming[indexPath.row].loses)
        return cell
    }

}
