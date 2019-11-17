//
//  ViewController.swift
//  NSObjectUsage
//
//  Created by sourav sachdeva on 16/11/19.
//  Copyright © 2019 sourav sachdeva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        guard imageView.image != nil else{
            print("no image at start")
            return
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
       
        guard imageView.image != nil else{
                 print("no image at start")
                 return
             }
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        guard imageView.image != nil else{
                      print("no image at start")
                      return
                  }
    }
    
}

