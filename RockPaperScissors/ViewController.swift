//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by Ella Madalinski on 11/9/21.
//

import UIKit

enum mine{
    case rock, paper, scissors
}

enum users{
    case rock, paper, scissors
}

struct Games : Codable{
    var name : String
    var wins : Int
    var ties : Int
    var losses : Int
}

class ViewController: UIViewController {
    
    
    var myChoice : mine = .rock
    var userChoice : users = .rock
    var userWins : Int = 0
    var userTies : Int = 0
    var userLosses : Int = 0
    var name : String = ""
    var saves : [Games] = []
    @IBOutlet weak var myChoiceImageViewOutlet: UIImageView!
    @IBOutlet weak var userChoiceRock: UIButton!
    @IBOutlet weak var userChoicePaper: UIButton!
    @IBOutlet weak var userChoiceScissors: UIButton!
    
    @IBOutlet weak var myChoiceLabelOutlet: UILabel!
    @IBOutlet weak var outcomeLabelOutlet: UILabel!
    @IBOutlet weak var userChoiceLabelOutlet: UILabel!
    @IBOutlet weak var recordLabelOutlet: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myChoiceImageViewOutlet.image = UIImage(named: "rps")
        
        if let items = UserDefaults.standard.data(forKey: "mySaves") {
                        let decoder = JSONDecoder()
                        if let decoded = try? decoder.decode([Games].self, from: items) {
                            saves = decoded
                        }
        }
        
        
    }

    @IBAction func rockAction(_ sender: UIButton) {
        userChoice = .rock
        userChoiceLabelOutlet.text = "Rock"
        userChoiceRock.backgroundColor = UIColor.yellow
        userChoicePaper.backgroundColor = UIColor.black
        userChoiceScissors.backgroundColor = UIColor.black
        let num = Int.random(in: 1...3)
        switch num {
        case 1:
            myChoice = .rock
            myChoiceImageViewOutlet.image = UIImage(named: "rock")
            myChoiceLabelOutlet.text = "Rock"
            outcomeLabelOutlet.text = "We tied!"
            userTies += 1
            recordLabelOutlet.text = "\(userWins)-\(userTies)-\(userLosses)"
        case 2:
            myChoice = .paper
            myChoiceImageViewOutlet.image = UIImage(named: "paper")
            myChoiceLabelOutlet.text = "Paper"
            outcomeLabelOutlet.text = "You lost!"
            userLosses += 1
            recordLabelOutlet.text = "\(userWins)-\(userTies)-\(userLosses)"
        case 3:
            myChoice = .scissors
            myChoiceImageViewOutlet.image = UIImage(named: "scissors")
            myChoiceLabelOutlet.text = "Scissors"
            outcomeLabelOutlet.text = "You won!"
            userWins += 1
            recordLabelOutlet.text = "\(userWins)-\(userTies)-\(userLosses)"
        default:
            myChoice = .rock
            myChoiceImageViewOutlet.image = UIImage(named: "rock")
            myChoiceLabelOutlet.text = "Rock"
            outcomeLabelOutlet.text = "We tied!"
            userTies += 1
            recordLabelOutlet.text = "\(userWins)-\(userTies)-\(userLosses)"
        }
        
    }
    @IBAction func paperAction(_ sender: UIButton) {
        userChoice = .paper
        userChoiceLabelOutlet.text = "Paper"
        userChoicePaper.backgroundColor = UIColor.yellow
        userChoiceRock.backgroundColor = UIColor.black
        userChoiceScissors.backgroundColor = UIColor.black
        let num = Int.random(in: 1...3)
        switch num {
        case 1:
            myChoice = .rock
            myChoiceImageViewOutlet.image = UIImage(named: "rock")
            myChoiceLabelOutlet.text = "Rock"
            outcomeLabelOutlet.text = "You won!"
            userWins += 1
            recordLabelOutlet.text = "\(userWins)-\(userTies)-\(userLosses)"
        case 2:
            myChoice = .paper
            myChoiceImageViewOutlet.image = UIImage(named: "paper")
            myChoiceLabelOutlet.text = "Paper"
            outcomeLabelOutlet.text = "We tied!"
            userTies += 1
            recordLabelOutlet.text = "\(userWins)-\(userTies)-\(userLosses)"
        case 3:
            myChoice = .scissors
            myChoiceImageViewOutlet.image = UIImage(named: "scissors")
            myChoiceLabelOutlet.text = "Scissors"
            outcomeLabelOutlet.text = "You lost!"
            userLosses += 1
            recordLabelOutlet.text = "\(userWins)-\(userTies)-\(userLosses)"
        default:
            myChoice = .paper
            myChoiceImageViewOutlet.image = UIImage(named: "paper")
            myChoiceLabelOutlet.text = "Paper"
            outcomeLabelOutlet.text = "We tied!"
            userTies += 1
            recordLabelOutlet.text = "\(userWins)-\(userTies)-\(userLosses)"
        }
    }
        
    @IBAction func scissorsAction(_ sender: UIButton) {
        userChoice = .scissors
        userChoiceLabelOutlet.text = "Scissors"
        userChoiceScissors.backgroundColor = UIColor.yellow
        userChoicePaper.backgroundColor = UIColor.black
        userChoiceRock.backgroundColor = UIColor.black
        let num = Int.random(in: 1...3)
        switch num {
        case 1:
            myChoice = .rock
            myChoiceImageViewOutlet.image = UIImage(named: "rock")
            myChoiceLabelOutlet.text = "Rock"
            outcomeLabelOutlet.text = "You lost!"
            userLosses += 1
            recordLabelOutlet.text = "\(userWins)-\(userTies)-\(userLosses)"
        case 2:
            myChoice = .paper
            myChoiceImageViewOutlet.image = UIImage(named: "paper")
            myChoiceLabelOutlet.text = "Paper"
            outcomeLabelOutlet.text = "You win!"
            userWins += 1
            recordLabelOutlet.text = "\(userWins)-\(userTies)-\(userLosses)"
        case 3:
            myChoice = .scissors
            myChoiceImageViewOutlet.image = UIImage(named: "scissors")
            myChoiceLabelOutlet.text = "Scissors"
            outcomeLabelOutlet.text = "We tied!"
            userTies += 1
            recordLabelOutlet.text = "\(userWins)-\(userTies)-\(userLosses)"
        default:
            myChoice = .scissors
            myChoiceImageViewOutlet.image = UIImage(named: "scissors")
            myChoiceLabelOutlet.text = "Scissors"
            outcomeLabelOutlet.text = "We tied!"
            userTies += 1
            recordLabelOutlet.text = "\(userWins)-\(userTies)-\(userLosses)"
        }
    }
    
    @IBAction func restartAction(_ sender: UIButton) {
        myChoiceLabelOutlet.text = "My choice"
        outcomeLabelOutlet.text = "Outcome"
        userChoiceLabelOutlet.text = "User choice"
        recordLabelOutlet.text = "Record"
        userWins = 0
        userTies = 0
        userLosses = 0
        myChoiceImageViewOutlet.image = UIImage(named: "rps")
        userChoiceRock.backgroundColor = UIColor.black
        userChoicePaper.backgroundColor = UIColor.black
        userChoiceScissors.backgroundColor = UIColor.black
        
    }
    
    @IBAction func saveButtonAction(_ sender: UIButton) {
        let alert = UIAlertController(title: "Name", message: "Add a Name for the Game", preferredStyle: .alert)
        alert.addTextField { (textField) in
            textField.placeholder = "Type here"
        }
        let saveAction = UIAlertAction(title: "Save", style: .default) { a in
            self.name = alert.textFields![0].text!
            var newSave = Games(name: self.name, wins: self.userWins, ties: self.userTies, losses: self.userLosses)
            self.saves.append(newSave)
            
            self.myChoiceLabelOutlet.text = "My choice"
            self.outcomeLabelOutlet.text = "Outcome"
            self.userChoiceLabelOutlet.text = "User choice"
            self.recordLabelOutlet.text = "Record"
            self.userWins = 0
            self.userTies = 0
            self.userLosses = 0
            self.myChoiceImageViewOutlet.image = UIImage(named: "rps")
            self.userChoiceRock.backgroundColor = UIColor.black
            self.userChoicePaper.backgroundColor = UIColor.black
            self.userChoiceScissors.backgroundColor = UIColor.black
            
            let encoder = JSONEncoder()
            if let encoded = try? encoder.encode(self.saves) {
                               UserDefaults.standard.set(encoded, forKey: "mySaves")
            }
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alert.addAction(cancelAction)
        alert.addAction(saveAction)
        present(alert, animated: true, completion: nil)
        
        
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! HistoryViewController
        nvc.incoming = saves
    }
    
}

