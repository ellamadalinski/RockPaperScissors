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

class ViewController: UIViewController {
    
    var myChoice : mine = .rock
    var userChoice : users = .rock
    var userWins : Int = 0
    var userTies : Int = 0
    var userLoses : Int = 0
    var name : String = ""
    var saves : [Games] = []
    @IBOutlet weak var myChoiceImageViewOutlet: UIImageView!
    @IBOutlet weak var userChoiceRock: UIButton!
    @IBOutlet weak var userChoicePaper: UIButton!
    @IBOutlet weak var userChoiceScissors: UIButton!
    
    @IBOutlet weak var myChoiceLabelOutlet: UILabel!
    @IBOutlet weak var outcomeLabelOutlet: UILabel!
    @IBOutlet weak var recordLabelOutlet: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myChoiceImageViewOutlet.image = UIImage(named: "rps")
    }

    @IBAction func rockAction(_ sender: UIButton) {
        userChoice = .rock
        userChoiceRock.backgroundColor = UIColor.yellow
        let num = Int.random(in: 1...3)
        switch num {
        case 1:
            myChoice = .rock
            myChoiceImageViewOutlet.image = UIImage(named: "rock")
            myChoiceLabelOutlet.text = "Rock"
            outcomeLabelOutlet.text = "We tied!"
            userTies += 1
            recordLabelOutlet.text = "\(userWins)-\(userTies)-\(userLoses)"
        case 2:
            myChoice = .paper
            myChoiceImageViewOutlet.image = UIImage(named: "paper")
            myChoiceLabelOutlet.text = "Paper"
            outcomeLabelOutlet.text = "You lost!"
            userLoses += 1
            recordLabelOutlet.text = "\(userWins)-\(userTies)-\(userLoses)"
        case 3:
            myChoice = .scissors
            myChoiceImageViewOutlet.image = UIImage(named: "scissors")
            myChoiceLabelOutlet.text = "Scissors"
            outcomeLabelOutlet.text = "You won!"
            userWins += 1
            recordLabelOutlet.text = "\(userWins)-\(userTies)-\(userLoses)"
        default:
            myChoice = .rock
            myChoiceImageViewOutlet.image = UIImage(named: "rock")
            myChoiceLabelOutlet.text = "Rock"
            outcomeLabelOutlet.text = "We tied!"
            userTies += 1
            recordLabelOutlet.text = "\(userWins)-\(userTies)-\(userLoses)"
        }
        
    }
    @IBAction func paperAction(_ sender: UIButton) {
        userChoice = .paper
        userChoicePaper.backgroundColor = UIColor.yellow
        let num = Int.random(in: 1...3)
        switch num {
        case 1:
            myChoice = .rock
            myChoiceImageViewOutlet.image = UIImage(named: "rock")
            myChoiceLabelOutlet.text = "Rock"
            outcomeLabelOutlet.text = "You won!"
            userWins += 1
            recordLabelOutlet.text = "\(userWins)-\(userTies)-\(userLoses)"
        case 2:
            myChoice = .paper
            myChoiceImageViewOutlet.image = UIImage(named: "paper")
            myChoiceLabelOutlet.text = "Paper"
            outcomeLabelOutlet.text = "We tied!"
            userTies += 1
            recordLabelOutlet.text = "\(userWins)-\(userTies)-\(userLoses)"
        case 3:
            myChoice = .scissors
            myChoiceImageViewOutlet.image = UIImage(named: "scissors")
            myChoiceLabelOutlet.text = "Scissors"
            outcomeLabelOutlet.text = "You lost!"
            userLoses += 1
            recordLabelOutlet.text = "\(userWins)-\(userTies)-\(userLoses)"
        default:
            myChoice = .paper
            myChoiceImageViewOutlet.image = UIImage(named: "paper")
            myChoiceLabelOutlet.text = "Paper"
            outcomeLabelOutlet.text = "We tied!"
            userTies += 1
            recordLabelOutlet.text = "\(userWins)-\(userTies)-\(userLoses)"
        }
    }
        
    @IBAction func scissorsAction(_ sender: UIButton) {
        userChoice = .scissors
        userChoiceScissors.backgroundColor = UIColor.yellow
        let num = Int.random(in: 1...3)
        switch num {
        case 1:
            myChoice = .rock
            myChoiceImageViewOutlet.image = UIImage(named: "rock")
            myChoiceLabelOutlet.text = "Rock"
            outcomeLabelOutlet.text = "You lost!"
            userLoses += 1
            recordLabelOutlet.text = "\(userWins)-\(userTies)-\(userLoses)"
        case 2:
            myChoice = .paper
            myChoiceImageViewOutlet.image = UIImage(named: "paper")
            myChoiceLabelOutlet.text = "Paper"
            outcomeLabelOutlet.text = "You win!"
            userWins += 1
            recordLabelOutlet.text = "\(userWins)-\(userTies)-\(userLoses)"
        case 3:
            myChoice = .scissors
            myChoiceImageViewOutlet.image = UIImage(named: "scissors")
            myChoiceLabelOutlet.text = "Scissors"
            outcomeLabelOutlet.text = "We tied!"
            userTies += 1
            recordLabelOutlet.text = "\(userWins)-\(userTies)-\(userLoses)"
        default:
            myChoice = .scissors
            myChoiceImageViewOutlet.image = UIImage(named: "scissors")
            myChoiceLabelOutlet.text = "Scissors"
            outcomeLabelOutlet.text = "We tied!"
            userTies += 1
            recordLabelOutlet.text = "\(userWins)-\(userTies)-\(userLoses)"
        }
    }
    
    @IBAction func restartAction(_ sender: UIButton) {
        myChoiceLabelOutlet.text = "My choice"
        outcomeLabelOutlet.text = "Outcome"
        recordLabelOutlet.text = "Record"
        userWins = 0
        userTies = 0
        userLoses = 0
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
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alert.addAction(cancelAction)
        alert.addAction(saveAction)
        present(alert, animated: true, completion: nil)
        
        
        var newSave = Games(n: name, w: userWins, t: userTies, l: userLoses)
        saves.append(newSave)
        
        myChoiceLabelOutlet.text = "My choice"
        outcomeLabelOutlet.text = "Outcome"
        recordLabelOutlet.text = "Record"
        userWins = 0
        userTies = 0
        userLoses = 0
        myChoiceImageViewOutlet.image = UIImage(named: "rps")
        userChoiceRock.backgroundColor = UIColor.black
        userChoicePaper.backgroundColor = UIColor.black
        userChoiceScissors.backgroundColor = UIColor.black
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! HistoryViewController
        nvc.incoming = saves
    }
    
}

