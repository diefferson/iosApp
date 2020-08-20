//
//  FlutterConfigurator.swift
//  iOSApp
//
//  Created by Diefferson Inocêncio Santos on 20/08/20.
//  Copyright © 2020 Diefferson Santos. All rights reserved.
//

import Flutter
import FlutterPluginRegistrant
import FirebaseRemoteConfig

class FlutterConfigurator: IAppConfigurator {
    
    private static let engine: FlutterEngine = FlutterEngine(name: "JunoFlutterEngine")
   
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

