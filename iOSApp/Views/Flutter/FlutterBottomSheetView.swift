//
//  FlutterBottomSheetView.swift
//  iOSApp
//
//  Created by Diefferson Inocêncio Santos on 20/08/20.
//  Copyright © 2020 Diefferson Inocêncio Santos. All rights reserved.
//
import SwiftUI

struct FlutterBottomSheetView: UIViewControllerRepresentable {
    
    func makeUIViewController(context: Context) -> BottomSheetViewController {
        let viewController = BottomSheetViewController()
        return viewController
    }
    
    func updateUIViewController(_ uiViewController: BottomSheetViewController, context: Context) {
    
    }
}

class BottomSheetViewController: BaseFlutterViewController, FlutterUIController {
    
    var initialRoute: String = "/bottomSheet"
    
    func setupChannels() {
        
    }
}

