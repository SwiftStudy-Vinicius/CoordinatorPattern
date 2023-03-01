//
//  MainCoordinator.swift
//  CoordinatorPattern
//
//  Created by Vinícius Flores Ribeiro on 07/02/23.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    var navigationController: UINavigationController?

    var children: [Coordinator]? = nil


    func eventOccurred(with type: Event) {
        var vc: UIViewController & Coordinating = SecondViewController()
        vc.coordinator = self
        switch type {
        case .openSheetView:
            navigationController?.present(vc, animated: true)
        case .openNavigationView:
            navigationController?.pushViewController(vc, animated: true)
        }
    }

    func start() {
        var vc: UIViewController & Coordinating = ViewController()
        vc.coordinator = self
        navigationController?.setViewControllers([vc], animated: false)
    }


}
