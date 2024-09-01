//
//  CoordinatorProtocol.swift
//  Core
//
//  Created by Gustavo Araujo Santos on 17/06/24.
//

import UIKit
import Foundation

public enum CoordinatorType {
    case tab, journey1, journey2, journey3, journey4
}

public protocol CoordinatorFinishDelegate: AnyObject {
    func coordinatorDidFinish(childCoordinator: CoordinatorProtocol)
}

public protocol CoordinatorProtocol: AnyObject {
    var finishDelegate: CoordinatorFinishDelegate? { get set }
    var navigationController: UINavigationController { get set }
    var childCoordinators: [CoordinatorProtocol] { get set }
    var parentCoordinator: CoordinatorProtocol? { get set }
    var type: CoordinatorType { get }
    
    init(_ navigationController: UINavigationController)
    
    func start()
    func finish()
}

public extension CoordinatorProtocol {
    func finish() {
        navigationController.popToRootViewController(animated: true)
        childCoordinators.removeAll()
        parentCoordinator = nil
        finishDelegate?.coordinatorDidFinish(childCoordinator: self)
    }
    
    func popToSpecificViewController<T: UIViewController>(ofType type: T.Type, animated: Bool) {
        let viewControllers = navigationController.viewControllers
        if let targetViewController = viewControllers.last(where: { $0 is T }) {
            navigationController.popToViewController(targetViewController, animated: animated)
        }
    }
}
