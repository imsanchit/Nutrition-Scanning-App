//
//  ImagePickerView.swift
//  Nutrition Scanner
//
//  Created by Sanchit Mittal on 09/05/25.
//

import UIKit
import SwiftUI

struct ImagePickerView: UIViewControllerRepresentable {
    
    @Binding var isImageSelected: Bool
    @Binding var isPresented: Bool
    @State private var sourceType: UIImagePickerController.SourceType = .camera
    let imagePickerController = UIImagePickerController()
    
    func makeUIViewController(context: Context) -> UIImagePickerController {
        imagePickerController.sourceType = self.sourceType
        
        imagePickerController.delegate = context.coordinator
        return imagePickerController
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {
        uiViewController.sourceType = sourceType
        if sourceType == .camera {
            uiViewController.showsCameraControls = false
            setupCameraView(cameraOverlayView: uiViewController.cameraOverlayView ?? UIView(), context: context)
            uiViewController.cameraViewTransform = CGAffineTransform(scaleX: 2.0, y: 2.0)
        }
    }
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(picker: self)
    }
    
    func updateSourceType(_ sourceType: UIImagePickerController.SourceType) {
        self.sourceType = sourceType
    }
}

// MARK: Camera
extension ImagePickerView {
    private func setupCameraView(cameraOverlayView: UIView, context: Context) {
        let backButton = UIButton(type: .custom)
        backButton.setImage(UIImage(named: "arrow_left"), for: .normal)
        backButton.translatesAutoresizingMaskIntoConstraints = false
        backButton.addTarget(context.coordinator, action: #selector(context.coordinator.backTapped), for: .touchUpInside)
        cameraOverlayView.addSubview(backButton)
        
        let flashButton = UIButton(type: .custom)
        flashButton.setImage(UIImage(named: "flash"), for: .normal)
        flashButton.translatesAutoresizingMaskIntoConstraints = false
        flashButton.addTarget(context.coordinator, action: #selector(context.coordinator.flashTapped), for: .touchUpInside)
        cameraOverlayView.addSubview(flashButton)
        
        let titleView = getTitleView()
        titleView.translatesAutoresizingMaskIntoConstraints = false
        cameraOverlayView.addSubview(titleView)
        
        let pickPhotoButton = UIButton(type: .custom)
        pickPhotoButton.setImage(UIImage(named: "gallery"), for: .normal)
        pickPhotoButton.translatesAutoresizingMaskIntoConstraints = false
        pickPhotoButton.addTarget(context.coordinator, action: #selector(context.coordinator.pickPhotoTapped), for: .touchUpInside)
        cameraOverlayView.addSubview(pickPhotoButton)
        
        let scaleButton = UIButton(type: .custom)
        scaleButton.setImage(UIImage(named: "scale"), for: .normal)
        scaleButton.translatesAutoresizingMaskIntoConstraints = false
        cameraOverlayView.addSubview(scaleButton)
        
        let captureButton = UIButton(type: .custom)
        captureButton.setImage(UIImage(named: "capture"), for: .normal)
        captureButton.translatesAutoresizingMaskIntoConstraints = false
        captureButton.addTarget(context.coordinator, action: #selector(context.coordinator.takePhoto(_:)), for: .touchUpInside)
        cameraOverlayView.addSubview(captureButton)
        
        NSLayoutConstraint.activate([
            backButton.leadingAnchor.constraint(equalTo: cameraOverlayView.leadingAnchor, constant: 20),
            backButton.topAnchor.constraint(equalTo: cameraOverlayView.topAnchor, constant: 40),
            backButton.heightAnchor.constraint(equalToConstant: 24),
            backButton.widthAnchor.constraint(equalToConstant: 24),
            
            flashButton.trailingAnchor.constraint(equalTo: cameraOverlayView.trailingAnchor, constant: -40),
            flashButton.centerYAnchor.constraint(equalTo: backButton.centerYAnchor),
            flashButton.heightAnchor.constraint(equalToConstant: 24),
            flashButton.widthAnchor.constraint(equalToConstant: 24),
            
            titleView.centerXAnchor.constraint(equalTo: cameraOverlayView.centerXAnchor),
            titleView.leadingAnchor.constraint(equalTo: cameraOverlayView.leadingAnchor, constant: 20),
            titleView.topAnchor.constraint(equalTo: backButton.bottomAnchor, constant: 32),
            
            pickPhotoButton.leadingAnchor.constraint(equalTo: backButton.leadingAnchor),
            pickPhotoButton.bottomAnchor.constraint(equalTo: cameraOverlayView.bottomAnchor, constant: -100),
            pickPhotoButton.heightAnchor.constraint(equalToConstant: 24),
            pickPhotoButton.widthAnchor.constraint(equalToConstant: 24),
            
            scaleButton.trailingAnchor.constraint(equalTo: flashButton.trailingAnchor),
            scaleButton.centerYAnchor.constraint(equalTo: pickPhotoButton.centerYAnchor),
            scaleButton.heightAnchor.constraint(equalToConstant: 24),
            scaleButton.widthAnchor.constraint(equalToConstant: 24),
        
            captureButton.centerXAnchor.constraint(equalTo: cameraOverlayView.centerXAnchor),
            captureButton.centerYAnchor.constraint(equalTo: pickPhotoButton.centerYAnchor),
            captureButton.heightAnchor.constraint(equalToConstant: 64),
            captureButton.widthAnchor.constraint(equalToConstant: 64),
        ])
    }
    
    private func getTitleView() -> UIView {
        let horizontalStackView = UIStackView()
        horizontalStackView.axis = .horizontal
        horizontalStackView.alignment = .top
        horizontalStackView.spacing = 12
        
        let imageView = UIImageView(image: UIImage(named: "scanner_white"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.heightAnchor.constraint(equalToConstant: 32).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 32).isActive = true
        horizontalStackView.addArrangedSubview(imageView)
        
        let labelsStackView: UIStackView = {
            let labelsStackView = UIStackView()
            labelsStackView.axis = .vertical
            labelsStackView.spacing = 4
            return labelsStackView
        }()
        
        let headlineLabel = UILabel()
        headlineLabel.font = UIFont(name: "Roboto-Medium", size: 16)
        headlineLabel.textColor = .white
        headlineLabel.text = "Scan Your Food"
        
        let bodyLabel = UILabel()
        bodyLabel.font = UIFont(name: "Roboto-Regular", size: 12)
        bodyLabel.textColor = .white
        bodyLabel.numberOfLines = 0
        bodyLabel.text = "Ensure your food is well-lit and in focus for the most accurate scan."
        
        labelsStackView.addArrangedSubview(headlineLabel)
        labelsStackView.addArrangedSubview(bodyLabel)
        
        horizontalStackView.addArrangedSubview(imageView)
        horizontalStackView.addArrangedSubview(labelsStackView)
        
        let containerView: UIView = .init()
        horizontalStackView.translatesAutoresizingMaskIntoConstraints = false
        addBlurEffect(containerView)
        containerView.addSubview(horizontalStackView)
        
        horizontalStackView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 8).isActive = true
        horizontalStackView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -8).isActive = true
        horizontalStackView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 8).isActive = true
        horizontalStackView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -8).isActive = true
        
        return containerView
    }
    
    private func addBlurEffect(_ view: UIView) {
        let blurEffect = UIBlurEffect(style: .light)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        blurEffectView.alpha = 0.4
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.addSubview(blurEffectView)
    }
}
