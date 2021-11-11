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
    
    @IBOutlet weak var myChoiceLabelOutlet: UILabel!
    @IBOutlet weak var outcomeLabelOutlet: UILabel!
    @IBOutlet weak var recordLabelOutlet: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func rockAction(_ sender: UIButton) {
        userChoice = .rock
        let num = Int.random(in: 1...3)
        switch num {
        case 1:
            myChoice = .rock
            myChoiceLabelOutlet.text = "Rock"
            outcomeLabelOutlet.text = "We tied!"
            userTies += 1
        case 2:
            myChoice = .paper
            myChoiceLabelOutlet.text = "Paper"
            outcomeLabelOutlet.text = "You lost!"
            userLoses += 1
        case 3:
            myChoice = .scissors
            myChoiceLabelOutlet.text = "Scissors"
            outcomeLabelOutlet.text = "You won!"
            userWins += 1
        default:
            myChoice = .rock
            myChoiceLabelOutlet.text = "Rock"
            outcomeLabelOutlet.text = "We tied!"
            userTies += 1
        }
        
    }
    @IBAction func paperAction(_ sender: UIButton) {
        userChoice = .paper
        let num = Int.random(in: 1...3)
        switch num {
        case 1:
            myChoice = .rock
            myChoiceLabelOutlet.text = "Rock"
            outcomeLabelOutlet.text = "You won!"
            userWins += 1
        case 2:
            myChoice = .paper
            myChoiceLabelOutlet.text = "Paper"
            outcomeLabelOutlet.text = "We tied!"
            userTies += 1
        case 3:
            myChoice = .scissors
            myChoiceLabelOutlet.text = "Scissors"
            outcomeLabelOutlet.text = "You lost!"
            userLoses += 1
        default:
            myChoice = .paper
            myChoiceLabelOutlet.text = "Paper"
            outcomeLabelOutlet.text = "We tied!"
            userTies += 1
        }
    }
        
    @IBAction func scissorsAction(_ sender: UIButton) {
        userChoice = .scissors
        let num = Int.random(in: 1...3)
        switch num {
        case 1:
            myChoice = .rock
            myChoiceLabelOutlet.text = "Rock"
            outcomeLabelOutlet.text = "You lost!"
            userLoses += 1
        case 2:
            myChoice = .paper
            myChoiceLabelOutlet.text = "Paper"
            outcomeLabelOutlet.text = "You win!"
            userWins += 1
        case 3:
            myChoice = .scissors
            myChoiceLabelOutlet.text = "Scissors"
            outcomeLabelOutlet.text = "We tied!"
            userTies += 1
        default:
            myChoice = .paper
            myChoiceLabelOutlet.text = "Scissors"
            outcomeLabelOutlet.text = "We tied!"
            userTies += 1
        }
    }
    
    @IBAction func restartAction(_ sender: UIButton) {
    }
    
    
}

