//
//  ViewController.swift
//  Lab5B
//
//  Created by Michael Horie on 2018-03-06.
//  Copyright © 2018 Michael Horie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var x: UITextField!
    @IBOutlet weak var y: UITextField!
    @IBOutlet weak var result: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func exponent(base: UInt, exp: UInt) -> UInt {
        if 1 == exp {
            return base
        }
        else {
            return base * exponent(base: base, exp: exp - 1)
        }
    }

/*
    func exponent(base: UInt, exp: UInt) -> UInt {
        if 1 == exp {
            return base
        }
        else if exp % 2 == 0 {
            let tmpRes =  exponent(base: base, exp: exp / 2)
            return tmpRes * tmpRes
        }
        else {
            return base * exponent(base: base, exp: exp / 2) * exponent(base: base, exp: exp / 2)
        }
    }
*/
    
    @IBAction func equals(_ sender: Any) {
        result.text = "?"
        if let xVal = x.text, let xNum = UInt(xVal), let yVal = y.text, let yNum = UInt(yVal) {
                result.text = String(exponent(base: xNum, exp: yNum))
        }
    }
}

