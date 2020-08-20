//
//  LoginViewController.swift
//  iOSApp
//
//  Created by Diefferson Inocêncio Santos on 20/08/20.
//  Copyright © 2020 Diefferson Inocêncio Santos. All rights reserved.
//
import SwiftUI

struct FlutterFullScreenView: UIViewControllerRepresentable {
    
    func makeUIViewController(context: Context) -> FullScreenViewController {
        let viewController = FullScreenViewController()
        return viewController
    }
    
    func updateUIViewController(_ uiViewController: FullScreenViewController, context: Context) {
    
    }
}

class FullScreenViewController: BaseFlutterViewController, FlutterUIController {
    
    var initialRoute: String = "/fullScreen"
    
    func setupChannels() {
        
    }
}

