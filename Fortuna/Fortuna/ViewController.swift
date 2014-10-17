//
//  ViewController.swift
//  Fortuna
//
//  Created by no13bus on 14-10-17.
//  Copyright (c) 2014年 no13bus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func rootViewTapped(sender: UITapGestureRecognizer) {
        
        if UITapGestureRecognizer.accessibilityActivate()==false{
//            quotationTextView.editable = false
            displayRandomQuote()
        }else{
//            quotationTextView.editable = true
        }
    }
    
    @IBOutlet weak var quotationTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        println("Hacking in Swift, since iOS8")
        println("controller: \(self)")
        println("view: \(self.view)")
        println("view's frame: \(self.view.frame)")
        println("viewDidLoad quotationTextView: \(quotationTextView)")
        displayRandomQuote()
        


        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func displayRandomQuote() {
        var delegate1 = UIApplication.sharedApplication().delegate as AppDelegate
        var positivequotes = delegate1.positiveQuotes
        var negativequotes = delegate1.negativeQuotes
        var pos: Int
        var quote: String
        if 0 == Int(arc4random_uniform(2)){
            pos = Int(arc4random_uniform(UInt32(positivequotes.count)))
            quote = positivequotes[pos]
        }else{
            pos = Int(arc4random_uniform(UInt32(negativequotes.count)))
            quote = negativequotes[pos]
        }
        
        
        quotationTextView.text = quote
    }
    
    
    override func awakeFromNib() {
        // The super method doesn't do anything, but we call it anyway.
        super.awakeFromNib()
        println("awakeFromNib quotationTextView: \(quotationTextView)")

    }


}

