//
//  RollViewController.swift
//  Dice
//
//  Created by Jason Schatz on 11/6/14.
//  Copyright (c) 2014 Udacity. All rights reserved.
//

import UIKit

class RollViewController: UIViewController {
    /**
    * Randomly generates a Int from 1 to 6
    */
    func randomDiceValue() -> Int {
        // Generate a random Int32 using arc4Random
        let randomValue = 1 + arc4random() % 6
        
        // Return a more convenient Int, initialized with the random value
        return Int(randomValue)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let controller = segue.destinationViewController as! DiceViewController
        
        controller.firstValue = self.randomDiceValue()
        controller.secondValue = self.randomDiceValue()
        /* BETTER FOUNDATION FOR MULTTIPLE SEGUES
        When my apps get more complex and there is more than one potential segue, using an if statement will help the app determine which segue (and which necessary data) to send and where.
        
        if segue.identifier == "rollDice" {
        
        let controller = segue.destinationViewController as!
        DiceViewController
        
        controller.firstValue = self.randomDiceValue()
        controller.secondValue = self.randomDiceValue()
        }
        */
        
    }
    

    @IBAction func rollTheDice() {
        
        //performSegueWithIdentifier("rollDice", sender: self)
        
        
        /* PROGRAMMATIC SEGUE
        var controller: DiceViewController
        
        controller = self.storyboard?.instantiateViewControllerWithIdentifier("DiceViewController") as! DiceViewController
        
        controller.firstValue = self.randomDiceValue()
        controller.secondValue = self.randomDiceValue()
        
        self.presentViewController(controller, animated: true, completion: nil)
        */
    }
    
    
}

