//
//  WebViewController.swift
//  ThingsToDo
//
//  Created by Mansi Shah on 3/3/16.
//  Copyright © 2016 Mansi Shah. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {

    @IBOutlet weak var WebView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let url = NSURL(string: "https://www.google.com/webhp?sourceid=chrome-instant&ion=1&espv=2&ie=UTF-8#q=berkeley+points+of+interest")
        let request = NSURLRequest(URL: url!)
        WebView.loadRequest(request)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
