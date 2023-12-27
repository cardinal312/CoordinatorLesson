//
//  ViewController.swift
//  Coordinator
//
//  Created by Macbook on 27/12/23.
//

import UIKit

final class FirstViewController: UIViewController, Coordinating {
    
    var coordinator: Coordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "First View Controller"
        view.backgroundColor = .yellow
        
        let rightButton1 = UIBarButtonItem(title: "VC 1", style: .plain, target: self, action: #selector(rightButtonTapped2(sender:)))
        let rightButton2 = UIBarButtonItem(title: "VC 2", style: .plain, target: self, action: #selector(rightButtonTapped1(sender:)))
        navigationItem.rightBarButtonItems = [rightButton2, rightButton1]
    }
    
    @objc private func rightButtonTapped1(sender: UIBarButtonItem) {
        coordinator?.event(with: .secondVC)
    }
    
    @objc private func rightButtonTapped2(sender: UIBarButtonItem) {
        coordinator?.event(with: .thirdVC)
    }
}


