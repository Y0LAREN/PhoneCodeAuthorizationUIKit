//
//  MainViewModel.swift
//  smsLogin
//
//  Created by Илья Иванов on 27.10.2024.
//

import Foundation

final class MainViewModel: MainViewModelProtocol{
  
//  var mainCoordinator: MainCoordinator?
  var router: RouterProtocol?
  
  init(router: any RouterProtocol) {
    self.router = router
  }
  
  
  func moveToEntanceScreen(){
    router?.showEntranceViewController()
  }
  
  func moveToRegistrationScreen(){
    router?.showRegistrationViewController()
  }
  
}
