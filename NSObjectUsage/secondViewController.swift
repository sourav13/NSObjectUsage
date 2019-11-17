//
//  secondViewController.swift
//  NSObjectUsage
//
//  Created by sourav sachdeva on 16/11/19.
//  Copyright © 2019 sourav sachdeva. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


}
extension secondViewController: ImagePickerDelegate {

    func didSelect(image: UIImage?) {
        self.imageView.image = image
    }
}
