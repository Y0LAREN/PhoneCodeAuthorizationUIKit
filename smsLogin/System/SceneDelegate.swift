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
    // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
    // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
    // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
    
    guard let scene = (scene as? UIWindowScene) else { return }
    window = UIWindow(windowScene: scene)
    
    let builderService = BuilderService()
    
    let navController = UINavigationController(rootViewController: MainViewController())
    let router = AppRouter(
      navigationController: navController,
      builder: builderService)
    
    window?.rootViewController = navController
    window?.makeKeyAndVisible()
    
  }


}

