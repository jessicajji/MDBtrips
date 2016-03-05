//
//  ImageView.swift
//  ThingsToDo
//
//  Created by Mansi Shah on 3/4/16.
//  Copyright © 2016 Mansi Shah. All rights reserved.
//

import UIKit


class ImageView: UIViewController {
    
    var imageName = ""
    var pageInfo = ""

    @IBOutlet weak var Picture: UIImageView!
    @IBOutlet weak var Info: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        Picture.image = UIImage (named: imageName)
        Info.text = pageInfo
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    


}
