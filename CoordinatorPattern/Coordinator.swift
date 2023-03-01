//
//  Coordinator.swift
//  CoordinatorPattern
//
//  Created by Vinícius Flores Ribeiro on 07/02/23.
//

import Foundation
import UIKit

enum Event {
    case openSheetView
    case openNavigationView
}

protocol Coordinator {

    var navigationController: UINavigationController? { get set }

    var children: [Coordinator]? { get set }

    func eventOccurred(with type: Event)

    func start()
}

protocol Coordinating {
    var coordinator: Coordinator? { get set }
}
