//
//  SecondViewController.swift
//  CoordinatorPattern
//
//  Created by Vinícius Flores Ribeiro on 07/02/23.
//

import UIKit

class SecondViewController: UIViewController, Coordinating {

    var coordinator: Coordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        title = "Second"

        let secondView = UILabel()
        view.addSubview(secondView)
        secondView.text = "Second View"
        secondView.frame = CGRect(x: view.frame.midX - 60, y: view.frame.midY - 60, width: 120, height: 120)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
