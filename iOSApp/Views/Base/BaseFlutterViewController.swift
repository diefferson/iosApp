//
//  BaseFlutterViewController.swift
//  iOSApp
//
//  Created by Diefferson Inocêncio Santos on 20/08/20.
//  Copyright © 2020 Diefferson Inocêncio Santos. All rights reserved.
//
import Flutter

protocol FlutterUIController {
    var initialRoute: String { get }
    func setupChannels()
}

class BaseFlutterViewController: FlutterViewController {

    init() {
        let flutterEngine = FlutterConfigurator.engine
        super.init(engine: flutterEngine, nibName: nil, bundle: nil)
        setup()
    }

    
    private func setup() {
        if let controller = self as? FlutterUIController {
            pushRoute(controller.initialRoute)
            isViewOpaque = false
            modalPresentationStyle = .overCurrentContext
            controller.setupChannels()
        }
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
