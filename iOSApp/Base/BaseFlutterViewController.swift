//
//  BaseFlutterViewController.swift
//  iOSApp
//
//  Created by Diefferson Inocêncio Santos on 20/08/20.
//  Copyright © 2020 Diefferson Santos. All rights reserved.
//

import UIKit
import Flutter
import ContactsUI
import Crashlytics

protocol FlutterUIController {
    var initialRoute: String { get }
    func setupChannels()
}

class BaseFlutterViewController: FlutterViewController, CNContactPickerDelegate {

    init() {
        let flutterEngine = FlutterConfigurator.engine
        super.init(engine: flutterEngine, nibName: nil, bundle: nil)
        setup()
    }
    
    
    private func setup() {
        if let controller = self as? FlutterUIController {
            pushRoute(controller.initialRoute)
            setupBaseFlutterChannel()
            modalPresentationStyle = .overCurrentContext
            controller.setupChannels()
        }
    }
    
        
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

