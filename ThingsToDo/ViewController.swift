//
//  ViewController.swift
//  ThingsToDo
//
//  Created by Mansi Shah on 3/2/16.
//  Copyright © 2016 Mansi Shah. All rights reserved.
//

import UIKit
import ImageSlideshow

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {
    
var PlacesToGo = ["The Campanile", "Asian Ghetto", "Memorial Glade", "Tilden Park", "Berkeley Marina", "Sproul Plaza", "Lawrence Hall of Science"]

        var images = ["campanile","asianghetto", "memorialglade", "tildenpark", "berkeleymarina", "sathergate", "lawrencehallofscience"]
    
    var info = ["UC Berkeley's most recognized symbol is the Sather Tower, most commonly known as the Campanile. The Campanile is one of the largest bell and clock towers in the world.", "The Asian Ghetto is either an alcove of restaurants located on the South Side of the UC Berkeley campus located between Durant and Telegraph.","This expansive, sloped lawn amid academic buildings is a popular hangout for UC Berkeley students, conducive to personal reflection and fun ctivities.","One of the District's three oldest parks, Tilden has been called the jewel of the system, and its recreational activities have become a happy tradition for generations of East Bay youngsters.","On the south side of the Marina there are 3 restaurants, a small boat hoist and a 3000 foot public fishing pier.","Sproul Plaza is the main approach onto campus. It is the center of student activity at Berkeley. There's much to do, from tabling by student clubs to acapella performances.","The Lawrence Hall of Science is a public science center that offers hands-on science exhibits and offers after school science resources to students."]

var indexToPass = Int()
 
    @IBOutlet weak var ActivityView: UITableView!
    @IBOutlet var slideshow: ImageSlideshow!

 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        ActivityView.delegate = self
        ActivityView.dataSource = self
       
      slideshow.setImageInputs([ImageSource(image: UIImage(named: "slide2")!),ImageSource(image: UIImage(named: "slide3")!),])
        slideshow.slideshowInterval = 5.0
        slideshow.pageControlPosition = PageControlPosition.UnderScrollView
        slideshow.pageControl.currentPageIndicatorTintColor = UIColor.lightGrayColor();
        slideshow.backgroundColor = UIColor.whiteColor()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int)
        -> Int {
            return PlacesToGo.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = ActivityView.dequeueReusableCellWithIdentifier("activityCell", forIndexPath: indexPath) as! ActivityTableViewCell
        cell.PlaceName.text = PlacesToGo[indexPath.row]
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        indexToPass = indexPath.row
        self.performSegueWithIdentifier("toImage", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "toImage") {
            let vc = segue.destinationViewController as! ImageView
            vc.imageName = images[indexToPass] as! String
            vc.pageInfo = info[indexToPass] as! String
        }
        
    }
    

}

