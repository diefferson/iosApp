//
//  FlutterConfigurator.swift
//  iOSApp
//
//  Created by Diefferson Inocêncio Santos on 20/08/20.
//  Copyright © 2020 Diefferson Inocêncio Santos. All rights reserved.
//

import Flutter
import FlutterPluginRegistrant

class FlutterConfigurator: IAppConfigurator {
    
    static let engine = FlutterEngine(name: "iOSAppFlutterEngine")
    
    func configure() {
        FlutterConfigurator.engine.run(withEntrypoint: getFlutterEnvironment())
        
        GeneratedPluginRegistrant.register(with: FlutterConfigurator.engine)
    }
    
    private func getFlutterEnvironment() -> String {
        #if DEBUG
            return "mainDev"
        #elseif SANDBOX
            return "mainSandbox"
        #else
            return "mainProd"
        #endif
    }
}
