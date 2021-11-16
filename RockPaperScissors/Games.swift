//
//  Games.swift
//  RockPaperScissors
//
//  Created by ELLA MADALINSKI on 11/12/21.
//

import Foundation

public class Games: Codable{
    
    var name : String
    var wins : Int
    var ties : Int
    var losses : Int
    
    init(n : String, w : Int, t : Int, l : Int){
        name = n
        wins = w
        ties = t
        losses = l
    }
    
}
