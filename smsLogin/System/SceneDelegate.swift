//
//  SceneDelegate.swift
//  smsLogin
//
//  Created by Илья Иванов on 27.10.2024.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

  var window: UIWindow?


  func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
    
    let navController = UINavigationController()
//    var appCoordinator: AppCoordinator = AppCoordinator(navigationController: navController)
//    appCoordinator.start()
    guard let scene = (scene as? UIWindowScene) else { return }
    window = UIWindow(windowScene: scene)
    
    let builderService = BuilderService()
    let router = AppRouter(
      navigationController: navController,
      builder: builderService)
    router.start()
    
    
    window?.rootViewController = navController
    window?.makeKeyAndVisible()
    
  }


}

