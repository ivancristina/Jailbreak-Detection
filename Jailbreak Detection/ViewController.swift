//
//  ViewController.swift
//  Jailbreak Detection
//
//  Created by Ivan Cristina on 31/01/2019.
//  Copyright © 2019 Ivan Cristina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func jailbreakTestMethod(_ sender: Any) {
        
        let filePath = "/Applications/Cydia.app"
        if FileManager.default.fileExists(atPath: filePath) {
            
            NSLog("Currently jailbroken");
            
            let jbAlert = UIAlertController(title: "YOU BITCH!", message: "How dare you jailbreak your iPhone you little cunt", preferredStyle: .alert)
            
            let noAction = UIAlertAction(title: "Sorry :(", style: .default, handler: nil)
            let yesAction = UIAlertAction(title: "Run", style: .destructive) { _ in
                NSLog("Bye");
                exit(0)
            }
            jbAlert.addAction(noAction)
            jbAlert.addAction(yesAction)
            present(jbAlert, animated: true)
        } else {
            
            NSLog("Currently jailed");
            
            let Alert = UIAlertController(title: "You got it bro", message: "But I'm still keeping an eye open", preferredStyle: .alert)
            
            let defaultAction = UIAlertAction(title: "Yeeeyy", style: .default, handler: { action in
            })
            
            Alert.addAction(defaultAction)
            present(Alert, animated: true)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

