//
//  Coordinator.swift
//  Nutrition Scanner
//
//  Created by Sanchit Mittal on 09/05/25.
//

import UIKit

class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    let picker: ImagePickerView
    
    init(picker: ImagePickerView) {
        self.picker = picker
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let selectedImage = info[.originalImage] as? UIImage else { return }
        self.picker.isImageSelected = true
        self.picker.isPresented = false
    }
    
    @objc func takePhoto(_ sender: UIButton) {
        picker.imagePickerController.takePicture()
    }
    
    @objc func pickPhotoTapped(_ sender: UIButton) {
        picker.updateSourceType(.photoLibrary)
    }
    
    @objc func backTapped() {
        picker.isPresented = false
    }
    
    @objc func flashTapped() {
        picker.imagePickerController.cameraFlashMode = picker.imagePickerController.cameraFlashMode == .on ? .off : .on
    }
}
