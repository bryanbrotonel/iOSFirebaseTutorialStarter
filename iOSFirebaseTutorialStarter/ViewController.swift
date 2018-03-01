//
//  ViewController.swift
//  iOSFirebaseTutorialStarter
//
//  Created by Bryan Brotonel on 2018-02-23.
//  Copyright © 2018 Bryan Brotonel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
//     override func viewDidAppear(_ animated: Bool) {
//      super.viewDidAppear(animated)
//      rootRef.observe(DataEventType.value, with: { (snapshot) in
//          let value = snapshot.value as? NSDictionary
//          self.ChildLabel.text = value?["parent"] as? String ?? ""
//      }) { (error) in
//          print(error.localizedDescription)
//      }        
        
}



}

