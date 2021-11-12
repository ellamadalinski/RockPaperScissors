//
//  Games.swift
//  RockPaperScissors
//
//  Created by ELLA MADALINSKI on 11/12/21.
//

import Foundation

public class Games{
    
    var name : String
    var wins : Int
    var ties : Int
    var loses : Int
    
    init(n : String, w : Int, t : Int, l : Int){
        name = n
        wins = w
        ties = t
        loses = l
    }
    
}
