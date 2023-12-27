//
//  Coordinator.swift
//  Coordinator
//
//  Created by Macbook on 27/12/23.
//

import UIKit

enum EventType {
    case secondVC, thirdVC
}

protocol Coordinator: AnyObject {
    var navigationController: UINavigationController? { get set }
    func event(with type: EventType)
    func start()
}

protocol Coordinating: AnyObject {
    var coordinator: Coordinator? { get set }
}
