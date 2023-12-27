//
//  MainCoordinator.swift
//  Coordinator
//
//  Created by Macbook on 27/12/23.
//

import UIKit

final class MainCoordinator: Coordinator {
    var navigationController: UINavigationController?
    
    func event(with type: EventType) {
        switch type {
        case .secondVC:
            let vc: UIViewController & Coordinating = SecondViewController()
            vc.coordinator = self
            let nav = UINavigationController(rootViewController: vc)
            nav.navigationBar.prefersLargeTitles = true
            navigationController?.present(nav, animated: true)
        case .thirdVC:
            let vc: UIViewController & Coordinating = ThirdViewController()
            vc.coordinator = self
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    func start() {
        let vc: UIViewController & Coordinating = FirstViewController()
        vc.coordinator = self
        navigationController?.setViewControllers([vc], animated: false)
    }
}
