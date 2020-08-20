//
//  ViewControllerHolder.swift
//  iOSApp
//
//  Created by Diefferson Inocêncio Santos on 20/08/20.
//  Copyright © 2020 Diefferson Inocêncio Santos. All rights reserved.
//
import SwiftUI

struct ViewControllerHolder {
    weak var value: UIViewController?
    init(_ value: UIViewController?) {
        self.value = value
    }
}

struct ViewControllerKey: EnvironmentKey {
    static var defaultValue: ViewControllerHolder { return ViewControllerHolder(UIApplication.shared.windows.first?.rootViewController ) }
}

extension EnvironmentValues {
    var viewController: ViewControllerHolder {
        get { return self[ViewControllerKey.self] }
        set { self[ViewControllerKey.self] = newValue }
    }
}

extension UIViewController {
    func present<Content: View>(presentationStyle: UIModalPresentationStyle = .automatic, transitionStyle: UIModalTransitionStyle = .coverVertical, animated: Bool = true, completion: @escaping () -> Void = {}, @ViewBuilder builder: () -> Content) {
        let toPresent = UIHostingController(rootView: AnyView(EmptyView()))
        toPresent.modalPresentationStyle = presentationStyle
        toPresent.rootView = AnyView(
            builder().edgesIgnoringSafeArea(.all)
                .environment(\.viewController, ViewControllerHolder(toPresent))
        )

        toPresent.view.backgroundColor = .clear // This line is modified
        self.present(toPresent, animated: animated, completion: completion)
    }
}

