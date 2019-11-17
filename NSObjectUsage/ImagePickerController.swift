//
//  ImagePickerController.swift
//  NSObjectUsage
//
//  Created by sourav sachdeva on 16/11/19.
//  Copyright © 2019 sourav sachdeva. All rights reserved.
//

import UIKit
 class ImagePickerController: NSObject{
        var pickerController: UIImagePickerController
        @IBOutlet  weak var presentationController: UIViewController!//view controller should be linked to this
        @IBOutlet weak var imagePlacer: UIImageView!
        @IBAction func showImagePicker(_ sender: UIButton) {
            self.present(from: sender)
        }
        
    override public init() {
        self.pickerController = UIImagePickerController()
        super.init()
        self.pickerController.delegate = self
        self.pickerController.allowsEditing = true
        self.pickerController.mediaTypes = ["public.image"]
    }
    
    private func action(for type: UIImagePickerController.SourceType, title: String) -> UIAlertAction? {
        guard UIImagePickerController.isSourceTypeAvailable(type) else {
            return nil
        }
        
        return UIAlertAction(title: title, style: .default) { [unowned self] _ in
            self.pickerController.sourceType = type
            self.presentationController?.present(self.pickerController, animated: true)
        }
    }
    
    public func present(from sourceView: UIView) {

        let alertController = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        
        if let action = self.action(for: .camera, title: "Take photo") {
            alertController.addAction(action)
        }
        if let action = self.action(for: .savedPhotosAlbum, title: "Camera roll") {
            alertController.addAction(action)
        }
        if let action = self.action(for: .photoLibrary, title: "Photo library") {
            alertController.addAction(action)
        }
        
        alertController.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))

        self.presentationController?.present(alertController, animated: true)
    }
    
    private func pickerController(_ controller: UIImagePickerController, didSelect image: UIImage?) {
        controller.dismiss(animated: true, completion: nil)
              self.imagePlacer.image = image
    }
}
extension ImagePickerController:UIImagePickerControllerDelegate,UINavigationControllerDelegate{
        public func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            self.pickerController(picker, didSelect: nil)
        }

        public func imagePickerController(_ picker: UIImagePickerController,
                                          didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
            guard let image = info[.editedImage] as? UIImage else {
                return self.pickerController(picker, didSelect: nil)
            }
            self.pickerController(picker, didSelect: image)
        }
}
