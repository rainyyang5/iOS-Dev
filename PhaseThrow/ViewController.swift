//
//  ViewController.swift
//  PhaseThrow
//
//  Created by Rainy Yang on 1/17/15.
//  Copyright (c) 2015 Rainy Yang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nextWordLabel: UILabel!
    
    @IBAction func nextButton(sender: UIButton) {
        var word: String? = nounDict.randomWord()
        if word != nil {
            self.nextWordLabel.text = word!
        }
    }
    
    var nounDict: NounDictionary!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.nounDict = NounDictionary()
        // Initial text
        self.nextWordLabel.text = "Press the button!"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

