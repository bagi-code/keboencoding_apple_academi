//
//  ViewController.swift
//  KBHariPertama
//
//  Created by Robby Dianputra on 30/03/19.
//  Copyright © 2019 bagicode. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textfieldusername: UITextField!
    @IBOutlet weak var textfieldpassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func tapButtonLogin(_ sender: Any) {
        
        var susername:String = textfieldusername.text!
        var spassword:String = textfieldpassword.text!
        
        if isEmailValid(susername) {
            
            textfieldusername.attributedPlaceholder = NSAttributedString(string: "Please enter Your Email ID", attributes: [NSAttributedString.Key.foregroundColor: UIColor.red])
            
        } else {
            textfieldusername.attributedPlaceholder = NSAttributedString(string: "Please enter Your Email ID", attributes: [NSAttributedString.Key.foregroundColor: UIColor.red])
        }
        
    }
    
    func isEmailValid(_ value: String) -> Bool {
        do {
            if try NSRegularExpression(pattern: "^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}$", options: .caseInsensitive).firstMatch(in: value, options: [], range: NSRange(location: 0, length: value.count)) == nil {
                return false
            }
        } catch {
            return false
        }
        return true
    }
    
}

