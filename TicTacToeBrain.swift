//
//  TicTacToe.swift
//  TicTacToe
//
//  Created by teacher on 8/22/16.
//  Copyright © 2016 Swastik Brahma. All rights reserved.
//

import UIKit

class TicTacToeBrain {

    //the game board as a 2D array
    //the board is intialized to all zeroes
    //each cell of the board can be made to store the playerIdentity (i.e., 1 or 2) depending on which player occupies that cell.
    var board = [[0, 0, 0],
                 [0, 0, 0],
                 [0, 0, 0]]
    
    
    //playerIdentity is the identity of the current player.
    //playerIdentity is intially set to 1 (for player playing "X")
    //playerIdentity will toggle between 1 (for player playing "X") and 2 (for player playing "O")
    var playerIdentity: Int = 1
    
    //resetGame() resets the game state
    func resetGame() {
        //code to reset the board to all zeroes and the playerIdentity to 1
        board = [[0, 0, 0],
                 [0, 0, 0],
                 [0, 0, 0]]
    }
    
    
    /*IMPLEMENT OTHER FUNCTIONS AS NEEDED*/
    
    func getButtonTag(tag: Int) -> Bool {
        switch tag {
        case 0:
            if playerIdentity == 1 {
                board[0][0] = 1
                playerIdentity += 1
                return true
            }
            else {
                board[0][0] = 2
                playerIdentity -= 1
                return false
            }
        case 1:
            if playerIdentity == 1 {
                board[0][1] = 1
                playerIdentity += 1
                return true
            }
            else {
                board[0][1] = 2
                playerIdentity -= 1
                return false
            }
        case 2:
            if playerIdentity == 1 {
                board[0][2] = 1
                playerIdentity += 1
                return true
            }
            else {
                board[0][2] = 2
                playerIdentity -= 1
                return false
            }
        case 3:
            if playerIdentity == 1 {
                board[1][0] = 1
                playerIdentity += 1
                return true
            }
            else {
                board[1][0] = 2
                playerIdentity -= 1
                return false
            }
        case 4:
            if playerIdentity == 1 {
                board[1][1] = 1
                playerIdentity += 1
                return true
            }
            else {
                board[1][1] = 2
                playerIdentity -= 1
                return false
            }
        case 5:
            if playerIdentity == 1 {
                board[1][2] = 1
                playerIdentity += 1
                return true
            }
            else {
                board[1][2] = 2
                playerIdentity -= 1
                return false
            }
        case 6:
            if playerIdentity == 1 {
                board[2][0] = 1
                playerIdentity += 1
                return true
            }
            else {
                board[2][0] = 2
                playerIdentity -= 1
                return false
            }
        case 7:
            if playerIdentity == 1 {
                board[2][1] = 1
                playerIdentity += 1
                return true
            }
            else {
                board[2][1] = 2
                playerIdentity -= 1
                return false
            }
        case 8:
            if playerIdentity == 1 {
                board[2][2] = 1
                playerIdentity += 1
                return true
            }
            else {
                board[2][2] = 2
                playerIdentity -= 1
                return false
            }
        default:
            break
        }
        return false
    }
    
    func winningCombos() -> Int? {
        
        if (board[0][0] == 1 && board[0][1] == 1 && board[0][2] == 1) || //first row
           (board[1][0] == 1 && board[1][1] == 1 && board[1][2] == 1) || //second row
           (board[2][0] == 1 && board[2][1] == 1 && board[2][2] == 1) || //third row
           (board[0][0] == 1 && board[1][0] == 1 && board[2][0] == 1) || //first column
           (board[0][1] == 1 && board[1][1] == 1 && board[2][1] == 1) || //second column
           (board[0][2] == 1 && board[1][2] == 1 && board[2][2] == 1) || //third column
           (board[0][2] == 1 && board[1][1] == 1 && board[2][0] == 1) || // / diagonal
           (board[0][0] == 1 && board[1][1] == 1 && board[2][2] == 1) {  // \ diagonal
                return 1
           }
        else if (board[0][0] == 2 && board[0][1] == 2 && board[0][2] == 2) || //first row
                (board[1][0] == 2 && board[1][1] == 2 && board[1][2] == 2) || //second row
                (board[2][0] == 2 && board[2][1] == 2 && board[2][2] == 2) || //third row
                (board[0][0] == 2 && board[1][0] == 2 && board[2][0] == 2) || //first column
                (board[0][1] == 2 && board[1][1] == 2 && board[2][1] == 2) || //second column
                (board[0][2] == 2 && board[1][2] == 2 && board[2][2] == 2) || //third column
                (board[0][2] == 2 && board[1][1] == 2 && board[2][0] == 2) || // / diagonal
                (board[0][0] == 2 && board[1][1] == 2 && board[2][2] == 2) {  // \ diagonal
                    return 2
                }
        else {
            //draw
            return nil
        }
        return nil
    }
    
    func fullBoard() -> Bool {
        if board[0][0] != 0 && board[0][1]  != 0 && board[0][2] != 0 &&
           board[1][0] != 0 && board[1][1]  != 0 && board[1][2] != 0 &&
           board[2][0] != 0 && board[2][1]  != 0 && board[2][2] != 0
        {
            return true
        }
        return false
    }
    
    func getWinningCombo() -> String {
        if (board[0][0] == 1 && board[0][1] == 1 && board[0][2] == 1) ||
           (board[0][0] == 2 && board[0][1] == 2 && board[0][2] == 2) { // 0,1,2
            return "first row"
        }
        else if (board[1][0] == 1 && board[1][1] == 1 && board[1][2] == 1) ||  //3,4,5
                (board[1][0] == 2 && board[1][1] == 2 && board[1][2] == 2) {
            return "second row"
        }
        
        else if (board[2][0] == 1 && board[2][1] == 1 && board[2][2] == 1) || //6,7,8
                (board[2][0] == 2 && board[2][1] == 2 && board[2][2] == 2) {
            return "third row"
        }
        else if (board[0][0] == 1 && board[1][0] == 1 && board[2][0] == 1) || //0,3,6
                (board[0][0] == 2 && board[1][0] == 2 && board[2][0] == 2) {
                return "first column"
        }
        else if (board[0][1] == 1 && board[1][1] == 1 && board[2][1] == 1) ||  //1,4,7
                (board[0][1] == 2 && board[1][1] == 2 && board[2][1] == 2) {
            return "second column"
        }
        else if (board[0][2] == 1 && board[1][2] == 1 && board[2][2] == 1) || //2,5,8
                (board[0][2] == 2 && board[1][2] == 2 && board[2][2] == 2) {
            return "third column"
        }
        else if (board[0][2] == 1 && board[1][1] == 1 && board[2][0] == 1) || //2,4,6
                (board[0][2] == 2 && board[1][1] == 2 && board[2][0] == 2) {
            return "/ diagonal"
        }
        else if (board[0][0] == 1 && board[1][1] == 1 && board[2][2] == 1) || //0,4,8
                (board[0][0] == 2 && board[1][1] == 2 && board[2][2] == 2) {
            return "diagonal"
        }
        return ""
    }
}
