//
//  SecondViewController.swift
//  Coordinator
//
//  Created by Macbook on 27/12/23.
//

import UIKit

final class SecondViewController: UIViewController, Coordinating {

    var coordinator: Coordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Second View Controller"
        view.backgroundColor = .purple
    }
}
