//
//  ViewController.swift
//  NSObjectUsage
//
//  Created by sourav sachdeva on 16/11/19.
//  Copyright © 2019 sourav sachdeva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

extension ViewController: ImagePickerDelegate {

    func didSelect(image: UIImage?) {
        self.imageView.image = image
    }
}
