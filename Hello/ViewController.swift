//
//  ViewController.swift
//  Hello
//
//  Created by admin on 20/8/2561 BE.
//  Copyright © 2561 admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblHello: UILabel!
    @IBOutlet weak var txtMessage: UITextField!
    var count: Int = 0;
    
    @IBAction func clickButton(_ sender: Any) {
        self.lblHello.text = "Hello \(self.txtMessage.text!) click num \(count)"
    }
    
    @IBAction func changeTheme(_ sender: Any) {
        for eachView in view.subviews {
            if(self.count % 2 == 0){
                view.backgroundColor = UIColor.black
                eachView.backgroundColor = UIColor.black
                if let uiLebel = eachView as? UILabel {
                    uiLebel.textColor = UIColor.white
                }
            }else{
                view.backgroundColor = UIColor.white
                eachView.backgroundColor = UIColor.white
                if let uiLebel = eachView as? UILabel {
                    uiLebel.textColor = UIColor.black
                }
            }
            
        }
        self.count += 1
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.lblHello.text = "Hello World!"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

