//
//  Router.swift
//  GraduatedWork
//
//  Created by Илья Иванов on 04.09.2024.
//

import Foundation
import UIKit

final class AppRouter: RouterProtocol {
  
  var navigationController: UINavigationController?
  var builder: Builder?
  init (navigationController: UINavigationController, builder: Builder) {
    self.navigationController = navigationController
    self.builder = builder
  }
  
  func start() {
    showMainViewController()
  }
  
  func showMainViewController() {
    if let navigationController = navigationController {
      guard let detailViewController = builder?.createMainScreen(router: self) else { return }
      navigationController.pushViewController(detailViewController, animated: true)
    }
  }
  
  func showCodeNotArriveViewController() {
    if let navigationController = navigationController {
      guard let detailViewController = builder?.createCodeNotArriveScreen(router: self) else { return }
      navigationController.pushViewController(detailViewController, animated: true)
    }
  }
  
  func showPasswordViewController() {
    if let navigationController = navigationController {
      guard let detailViewController = builder?.createPasswordScreen(router: self) else { return }
      navigationController.pushViewController(detailViewController, animated: true)
    }
  }
  
  func showRegistrationViewController() {
    if let navigationController = navigationController {
      navigationController.title = R.Texts.registrationNavigationBarHeaderText
      guard let detailViewController = builder?.createRegistrationScreen(router: self) else { return }
      navigationController.pushViewController(detailViewController, animated: true)
    }
  }
  
  func showEntranceViewController() {
    if let navigationController = navigationController {
      navigationController.title = R.Texts.entranceNavigationBarHeaderText
      guard let detailViewController = builder?.createEntranceScreen(router: self) else { return }
      navigationController.pushViewController(detailViewController, animated: true)
    }
  }
}
