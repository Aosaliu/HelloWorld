//
//  ViewController.swift
//  HelloWorld
//
//  Created by Abdulrasaq Saliu on 9/12/18.
//  Copyright © 2018 Abdulrasaq Saliu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //the purpose of the outlet is to modify what is displayed

    @IBOutlet weak var TextInBox: UILabel!
    @IBOutlet weak var TextBOX: UITextField!
    var backGroundColor : UIColor!
    
    //round the corners
    @IBOutlet weak var ViewBox: UIView!
    @IBOutlet weak var TEXTBUT: UIButton! //Text Changer Button
    @IBOutlet weak var TEXTCOLBUT: UIButton! //Text Color Button
    @IBOutlet weak var TEXTBACKBUT: UIButton! //View Button
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        backGroundColor = view.backgroundColor
        self.ViewBox.layer.cornerRadius = 10.0 //the higher the number the more it cuts in
        self.TEXTBUT.layer.cornerRadius = 10.0
        self.TEXTCOLBUT.layer.cornerRadius = 10.0
        self.TEXTBACKBUT.layer.cornerRadius = 10.0
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    

    @IBAction func WordInBoxC(_ sender: Any) { //change text color
        TextInBox.textColor = UIColor.white
    }
    @IBAction func BackgroundinBox(_ sender: Any) { //change view color
        view.backgroundColor = UIColor.white
    }
    @IBAction func TextChanger(_ sender: Any) { //change text
        if(TextBOX.text?.isEmpty)!{
           TextInBox.text = "Goodbye! 👋"
        }else{
            TextInBox.text = TextBOX.text
            TextBOX.text = ""
            view.endEditing(true)
        }
    }
    @IBAction func ResetBackground(_ sender: Any) { //resets
        TextInBox.text = "Hello from Abdulrasaq!"
        TextInBox.textColor = UIColor.black
        view.backgroundColor = backGroundColor
    }
    
    
 
}

