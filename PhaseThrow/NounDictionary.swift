
//
//  NounDictionary.swift
//  PhaseThrow
//
//  Created by Rainy Yang on 1/17/15.
//  Copyright (c) 2015 Rainy Yang. All rights reserved.
//

import UIKit

class NounDictionary: NSObject {
    var wordList : [String]?
    
    override init() {
        super.init()
        
        var mainBundle = NSBundle.mainBundle()
        var filePath : String? = mainBundle.pathForResource("nounlist", ofType: ".txt")
        
        // Make sure the file exists!
        if (filePath != nil) {
            var words: String? = String(contentsOfFile: filePath!, encoding: NSUTF8StringEncoding, error: nil)
            
            // Create an array by separation gon newline characters.
            self.wordList = words!.componentsSeparatedByString("\n")
        }
    }
    
    // Is called wen the button is pressed.
    // Randomly picks a word from the word list and returns it.
    func randomWord() -> String? {
        // Check to make sure we have a valid word list. If initialization fialed, we
        // might not have one!
        if (self.wordList != nil) {
            // Picks a random UInt32 between 0 and self.wordList.count.
            var index = arc4random_uniform(UInt32(self.wordList!.count))
            var word: String = self.wordList![Int(index)]
            return word
        }
        return nil
    }
}
