//
//  ViewController.swift
//  Tic-Tac-Toe
//
//  Created by John Gadbois on 11/18/15.
//  Copyright © 2015 John Gadbois. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var turnLabel: UILabel!
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var labelThree: UILabel!
    @IBOutlet weak var labelFour: UILabel!
    @IBOutlet weak var labelFive: UILabel!
    @IBOutlet weak var labelSix: UILabel!
    @IBOutlet weak var labelSeven: UILabel!
    @IBOutlet weak var labelEight: UILabel!
    @IBOutlet weak var labelNine: UILabel!
    
    
    var turns = 0
    var currentPlayer = "X"
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    @IBAction func squareOneTap(sender: UITapGestureRecognizer)
    {
        if(labelOne.text == "" || labelOne.text == nil)
        {
            labelOne.text = currentPlayer
            ++turns
            checkForWinner()
            checkForCatsGame()
            updateTurnLabel()
        }
        else
        {
        }
    }
    
    @IBAction func squareTwoTap(sender: UITapGestureRecognizer)
    {
        if(labelTwo.text == "" || labelTwo.text == nil)
        {
            labelTwo.text = currentPlayer
            ++turns
            checkForWinner()
            checkForCatsGame()
            updateTurnLabel()
        }
        else
        {
        }
    }
    
    @IBAction func squareThreeTap(sender: UITapGestureRecognizer)
    {
        if(labelThree.text == "" || labelThree.text == nil)
        {
            labelThree.text = currentPlayer
            ++turns
            checkForWinner()
            checkForCatsGame()
            updateTurnLabel()
        }
        else
        {
        }
    }
    
    @IBAction func squareFourTap(sender: UITapGestureRecognizer)
    {
        if(labelFour.text == "" || labelFour.text == nil)
        {
            labelFour.text = currentPlayer
            ++turns
            checkForWinner()
            checkForCatsGame()
            updateTurnLabel()
        }
        else
        {
        }
    }
    
    @IBAction func squareFiveTap(sender: UITapGestureRecognizer)
    {
        if(labelFive.text == "" || labelFive.text == nil)
        {
            labelFive.text = currentPlayer
            ++turns
            checkForWinner()
            checkForCatsGame()
            updateTurnLabel()
        }
        else
        {
        }
    }
    
    @IBAction func squareSixTap(sender: UITapGestureRecognizer)
    {
        if(labelSix.text == "" || labelSix.text == nil)
        {
            labelSix.text = currentPlayer
            ++turns
            checkForWinner()
            checkForCatsGame()
            updateTurnLabel()
        }
        else
        {
        }
    }
    
    @IBAction func squareSevenTap(sender: UITapGestureRecognizer)
    {
        if(labelSeven.text == "" || labelSeven.text == nil)
        {
            labelSeven.text = currentPlayer
            ++turns
            checkForWinner()
            checkForCatsGame()
            updateTurnLabel()
        }
        else
        {
        }
    }
    
    @IBAction func squareEightTap(sender: UITapGestureRecognizer)
    {
        if(labelEight.text == "" || labelEight.text == nil)
        {
            labelEight.text = currentPlayer
            ++turns
            checkForWinner()
            checkForCatsGame()
            updateTurnLabel()
        }
        else
        {
        }
    }
    
    @IBAction func squareNineTap(sender: UITapGestureRecognizer)
    {
        if(labelNine.text == "" || labelNine.text == nil)
        {
            labelNine.text = currentPlayer
            ++turns
            checkForWinner()
            checkForCatsGame()
            updateTurnLabel()
        }
        else
        {
        }
    }
    
    func updateTurnLabel()
    {
        if (turns % 2 == 0)
        {
            turnLabel.text = "Player One (X)"
            currentPlayer = "X"
        }
        else
        {
            turnLabel.text = "Player Two (O)"
            currentPlayer = "O"
        }
    }
    
    func checkForWinner() -> Bool
    {
        if(labelOne.text == currentPlayer && labelFour.text == currentPlayer && labelSeven.text == currentPlayer)
        {
            turnLabel.text = currentPlayer + "'s Win!"
            endGame()
            return true
        }
        if(labelTwo.text == currentPlayer && labelFive.text == currentPlayer && labelEight.text == currentPlayer)
        {
            turnLabel.text = currentPlayer + "'s Win!"
            endGame()
            return true
        }
        if(labelThree.text == currentPlayer && labelSix.text == currentPlayer && labelNine.text == currentPlayer)
        {
            turnLabel.text = currentPlayer + "'s Win!"
            endGame()
            return true
        }
        if(labelOne.text == currentPlayer && labelTwo.text == currentPlayer && labelThree.text == currentPlayer)
        {
            turnLabel.text = currentPlayer + "'s Win!"
            endGame()
            return true
        }
        if(labelFour.text == currentPlayer && labelFive.text == currentPlayer && labelSix.text == currentPlayer)
        {
            turnLabel.text = currentPlayer + "'s Win!"
            endGame()
            return true
        }
        if(labelSeven.text == currentPlayer && labelEight.text == currentPlayer && labelNine.text == currentPlayer)
        {
            turnLabel.text = currentPlayer + "'s Win!"
            endGame()
            return true
        }
        if(labelOne.text == currentPlayer && labelFive.text == currentPlayer && labelNine.text == currentPlayer)
        {
            turnLabel.text = currentPlayer + "'s Win!"
            endGame()
            return true
        }
        if(labelThree.text == currentPlayer && labelFive.text == currentPlayer && labelSeven.text == currentPlayer)
        {
            turnLabel.text = currentPlayer + "'s Win!"
            endGame()
            return true
        }
        return false
    }
    func checkForCatsGame() -> Bool
    {
        if (checkForWinner() == false && turns >= 9)
        {
            turnLabel.text = "Cat's Game"
            let alert = UIAlertController(title: "Cat's Game", message: "", preferredStyle: UIAlertControllerStyle.Alert)
            let resetButton = UIAlertAction(title: "Play Again", style: UIAlertActionStyle.Default, handler: nil)
            alert.addAction((resetButton))
            self.presentViewController(alert, animated: true, completion: nil)
            labelOne.text = ""
            labelTwo.text = ""
            labelThree.text = ""
            labelFour.text = ""
            labelFive.text = ""
            labelSix.text = ""
            labelSeven.text = ""
            labelEight.text = ""
            labelNine.text = ""
            turns = 0
            currentPlayer = "X"

            return true
        }
        
        return false
    }
    
    func endGame()
    {
        let alert = UIAlertController(title: currentPlayer + "'s Win!", message: "Congrats!", preferredStyle: UIAlertControllerStyle.Alert)
        let resetButton = UIAlertAction(title: "Play Again", style: UIAlertActionStyle.Default, handler: nil)
        alert.addAction((resetButton))
        self.presentViewController(alert, animated: true, completion: nil)
        labelOne.text = ""
        labelTwo.text = ""
        labelThree.text = ""
        labelFour.text = ""
        labelFive.text = ""
        labelSix.text = ""
        labelSeven.text = ""
        labelEight.text = ""
        labelNine.text = ""
        turns = 0
        currentPlayer = "X"
    }
    
}

