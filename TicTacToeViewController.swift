//
//  ticTacToeViewController.swift
//  TicTacToe
//
//  Created by teacher on 8/22/16.
//  Copyright © 2016 Swastik Brahma. All rights reserved.
//

import UIKit

class TicTacToeViewController: UIViewController {
    //game is an instance of TicTacToeBrain
    var game = TicTacToeBrain()
    
    
    //"buttons" is an array of IBOutlets
    //The first buttion connected to "buttons" will be connected to the first array location, 
    //the second button connected to "buttons" will be connected to the secondary array location, and so on.
    @IBOutlet var buttons: [UIButton]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startNewGame()
       
    }
    
    //IBAction for buttons. All 9 buttons should invoke this IBAction.
    //Hint: The "tag" propery of a button can be used to find which button invoked this IBAction.
    @IBAction func buttonPressed(button: UIButton) {
        switch button.tag {
        case 0:
            if (game.getButtonTag(0) == true)
            {
                button.setTitle("X", forState: UIControlState.Normal)
                
            }
            else {
                button.setTitle("O", forState: UIControlState.Normal)
                //if game.getWinningCombo() == "first row" { //0,1,2
                //button.setTitleColor(UIColor.greenColor(), forState: UIControlState.Normal)
                //}
            }
        case 1:
            if (game.getButtonTag(1) == true)
            {
                button.setTitle("X", forState: UIControlState.Normal)
                //if (game.getWinningCombo() == "first row") { //0,1,2
                //button.setTitleColor(UIColor.greenColor(), forState: UIControlState.Normal)
                //}
            }
            else {
                button.setTitle("O", forState: UIControlState.Normal)
                //if game.getWinningCombo() == "first row" { //0,1,2
                //button.setTitleColor(UIColor.greenColor(), forState: UIControlState.Normal)
                //}
            }
        case 2:
            if (game.getButtonTag(2) == true)
            {
                button.setTitle("X", forState: UIControlState.Normal)
                //if game.getWinningCombo() == "first row" { //0,1,2
                //button.setTitleColor(UIColor.greenColor(), forState: UIControlState.Normal)
                //}
            }
            else {
                button.setTitle("O", forState: UIControlState.Normal)
                //if game.getWinningCombo() == "first row" { //0,1,2
                //button.setTitleColor(UIColor.greenColor(), forState: UIControlState.Normal)
                //}
            }
        case 3:
            if (game.getButtonTag(3) == true)
            {
                button.setTitle("X", forState: UIControlState.Normal)
            }
            else {
                button.setTitle("O", forState: UIControlState.Normal)
            }
        case 4:
            if (game.getButtonTag(4) == true)
            {
                button.setTitle("X", forState: UIControlState.Normal)
            }
            else {
                button.setTitle("O", forState: UIControlState.Normal)
            }
        case 5:
            if (game.getButtonTag(5) == true)
            {
                button.setTitle("X", forState: UIControlState.Normal)
            }
            else {
                button.setTitle("O", forState: UIControlState.Normal)
            }
        case 6:
            if (game.getButtonTag(6) == true)
            {
                button.setTitle("X", forState: UIControlState.Normal)
            }
            else {
                button.setTitle("O", forState: UIControlState.Normal)
            }
        case 7:
            if (game.getButtonTag(7) == true)
            {
                button.setTitle("X", forState: UIControlState.Normal)
            }
            else {
                button.setTitle("O", forState: UIControlState.Normal)
            }
        case 8:
            if (game.getButtonTag(8) == true)
            {
                button.setTitle("X", forState: UIControlState.Normal)
            }
            else {
                button.setTitle("O", forState: UIControlState.Normal)
            }
        default:
            break
        }
        whoWon()
        
        if game.getWinningCombo() == "first row" { //0,1,2
            buttons[0].setTitleColor(UIColor.greenColor(), forState: UIControlState.Normal)
            buttons[1].setTitleColor(UIColor.greenColor(), forState: UIControlState.Normal)
            buttons[2].setTitleColor(UIColor.greenColor(), forState: UIControlState.Normal)
        }
        if game.getWinningCombo() == "second row" { //3,4,5
            buttons[3].setTitleColor(UIColor.greenColor(), forState: UIControlState.Normal)
            buttons[4].setTitleColor(UIColor.greenColor(), forState: UIControlState.Normal)
            buttons[5].setTitleColor(UIColor.greenColor(), forState: UIControlState.Normal)
        }
        if game.getWinningCombo() == "third row" { //6,7,8
            buttons[6].setTitleColor(UIColor.greenColor(), forState: UIControlState.Normal)
            buttons[7].setTitleColor(UIColor.greenColor(), forState: UIControlState.Normal)
            buttons[8].setTitleColor(UIColor.greenColor(), forState: UIControlState.Normal)
        }
        if game.getWinningCombo() == "first column" { //0,3,6
            buttons[0].setTitleColor(UIColor.greenColor(), forState: UIControlState.Normal)
            buttons[3].setTitleColor(UIColor.greenColor(), forState: UIControlState.Normal)
            buttons[6].setTitleColor(UIColor.greenColor(), forState: UIControlState.Normal)
        }
        if game.getWinningCombo() == "second column" { //1,4,7
            buttons[1].setTitleColor(UIColor.greenColor(), forState: UIControlState.Normal)
            buttons[4].setTitleColor(UIColor.greenColor(), forState: UIControlState.Normal)
            buttons[7].setTitleColor(UIColor.greenColor(), forState: UIControlState.Normal)
        }
        if game.getWinningCombo() == "third column" { //2,5,8
            buttons[2].setTitleColor(UIColor.greenColor(), forState: UIControlState.Normal)
            buttons[5].setTitleColor(UIColor.greenColor(), forState: UIControlState.Normal)
            buttons[8].setTitleColor(UIColor.greenColor(), forState: UIControlState.Normal)
        }
        if game.getWinningCombo() == "/ diagonal" { //2,4,6
            buttons[2].setTitleColor(UIColor.greenColor(), forState: UIControlState.Normal)
            buttons[4].setTitleColor(UIColor.greenColor(), forState: UIControlState.Normal)
            buttons[6].setTitleColor(UIColor.greenColor(), forState: UIControlState.Normal)
        }
        if game.getWinningCombo() == "diagonal" { //0,4,8
            buttons[0].setTitleColor(UIColor.greenColor(), forState: UIControlState.Normal)
            buttons[4].setTitleColor(UIColor.greenColor(), forState: UIControlState.Normal)
            buttons[8].setTitleColor(UIColor.greenColor(), forState: UIControlState.Normal)
        }
    }
    
    
    //gameOverWithWinner(playerID: Int?) will need to be invoked when the game is over with the identity of
    //the winning player. If there is no winner, the function is called with nil (i.e., the function takes as input an Optional Int).
    //The function creates an UIAlertAction to notify the user of the game outcome along with
    //providing the option to start a new game
    func gameOverWithWinner(playerID: Int?) {
        let title = "Game Over"
        var message = String()
        
        if let ID = playerID {
             message = "Player \(ID) wins"
        }
        else {
             message = "No Winner"
        }
        
        let ac = UIAlertController(title: title,
                                   message: message,
                                   preferredStyle: .ActionSheet)
        
        let newGameAction = UIAlertAction(title: "New Game",
                                          style: .Default ,
                                          handler: { (action) -> Void in
                                           self.startNewGame()
                            })
        ac.addAction(newGameAction)
        
        presentViewController(ac, animated: true, completion: nil)
    }
    
    
    //startNewGame() resets the game state 
    func startNewGame() {
        game.resetGame()
        
        for i in 0...8 {
            buttons[i].setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
            buttons[i].setTitle("", forState: .Normal)
        }
    }
    
    
    /*IMPLEMENT OTHER FUNCTIONS AS NEEDED*/
    
    func whoWon() {
        if (game.winningCombos() == 1)
        {
            gameOverWithWinner(1)
        }
        else if (game.winningCombos() == 2) {
            gameOverWithWinner(2)
        }
        if (game.fullBoard() == true) {
            gameOverWithWinner(nil)
        }
    }

    
}