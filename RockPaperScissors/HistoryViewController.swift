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
    //var path : [IndexPath] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
        
//        var count = 0
//        for save in incoming {
//            tableView(tableViewOutlet, cellForRowAt: path[count])
//            count+=1
//        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return incoming.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableViewOutlet.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! SavedCustomCell
        cell.nameLabelOutlet.text = "\(incoming[indexPath.row].name)"
        cell.winsLabelOutlet.text = "Wins: \(String(incoming[indexPath.row].wins))"
        cell.tiesLabelOutlet.text = "Ties: \(String(incoming[indexPath.row].ties))"
        cell.lossesLabelOutlet.text = "Losses: \(String(incoming[indexPath.row].losses))"
        
        //path.append(indexPath)

        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 88
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        tableViewOutlet.reloadData()
    }
    
}
