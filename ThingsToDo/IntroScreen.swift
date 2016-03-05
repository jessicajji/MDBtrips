//
//  IntroScreen.swift
//  ThingsToDo
//
//  Created by Jessica Ji on 3/4/16.
//  Copyright © 2016 Mansi Shah. All rights reserved.
//

import UIKit

class IntroScreen: UIViewController {

    @IBOutlet var getStarted: UIButton!
    @IBOutlet var welcome: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getStarted.layer.cornerRadius = 8.0
        getStarted.layer.masksToBounds = true
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        welcome.center.x -= view.bounds.width
        UIView.animateWithDuration(0.5, animations: {
            self.welcome.center.x += self.view.bounds.width
            })
    }

}
