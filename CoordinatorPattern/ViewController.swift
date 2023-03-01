//
//  ViewController.swift
//  CoordinatorPattern
//
//  Created by Vinícius Flores Ribeiro on 07/02/23.
//

import UIKit

class ViewController: UIViewController, Coordinating {
    
    var coordinator: Coordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .red
        title = "Home"

        let sheetViewButton = UIButton(frame: CGRect(x: 0, y: 0, width: 220, height: 55))
        view.addSubview(sheetViewButton)
        sheetViewButton.center = view.center
        sheetViewButton.backgroundColor = .systemGreen
        sheetViewButton.setTitleColor(.white, for: .normal)
        sheetViewButton.setTitle("Open Modal", for: .normal)
        sheetViewButton.addTarget(self, action: #selector(tapOpenSheetView), for: .touchUpInside)

        let navigationViewButton = UIButton(frame: CGRect(x: sheetViewButton.frame.minX, y: sheetViewButton.frame.maxY + 32, width: 220, height: 55))
        view.addSubview(navigationViewButton)
        navigationViewButton.backgroundColor = .systemGreen
        navigationViewButton.setTitleColor(.white, for: .normal)
        navigationViewButton.setTitle("Open Navigation", for: .normal)
        navigationViewButton.addTarget(self, action: #selector(tapOepnNavigationView), for: .touchUpInside)
    }

    @objc func tapOpenSheetView() {
        coordinator?.eventOccurred(with: .openSheetView)
    }

    @objc func tapOepnNavigationView() {
        coordinator?.eventOccurred(with: .openNavigationView)
    }

}

