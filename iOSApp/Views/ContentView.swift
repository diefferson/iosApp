//
//  ContentView.swift
//  iOSApp
//
//  Created by Diefferson Inocêncio Santos on 20/08/20.
//  Copyright © 2020 Diefferson Inocêncio Santos. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.viewController) private var viewControllerHolder: ViewControllerHolder
      private var viewController: UIViewController? {
          self.viewControllerHolder.value
      }
    
    @State var showingFullScreen = false
    @State var showingBottomSheet = false

    var body: some View {
        VStack{
            Spacer()
            
            Button(action: {
                self.viewController?.present(presentationStyle: .fullScreen,  builder: FlutterFullScreenView.init)
            }) {
                Text("Flutter Full Screen")
            }
            
            Spacer()
            
            Button(action: {
                self.viewController?.present(presentationStyle: .overCurrentContext, builder: FlutterBottomSheetView.init)
            }) {
                Text("Flutter Bottom Sheet")
            }
            
                 Spacer()
        }.edgesIgnoringSafeArea(.top)
           
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


