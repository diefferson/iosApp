//
//  HomeView.swift
//  iOSApp
//
//  Created by Diefferson Inocêncio Santos on 20/08/20.
//  Copyright © 2020 Diefferson Inocêncio Santos. All rights reserved.
//
import SwiftUI

struct HomeView: View {

    @Binding var buttonClick: Bool

    var body: some View {
        VStack {
            Button(action: {
                withAnimation {
                    self.buttonClick.toggle()
                }
            }) {
                Text("Settings")
            }.buttonStyle(PlainButtonStyle())
        }
    }
}

