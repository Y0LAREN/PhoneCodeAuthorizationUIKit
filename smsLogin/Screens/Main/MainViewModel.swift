//
//  MainViewModel.swift
//  smsLogin
//
//  Created by Илья Иванов on 27.10.2024.
//

import Foundation

final class MainViewModel: MainViewModelProtocol{
  
  //MARK: - properties
  var router: RouterProtocol?
  
  //MARK: - init
  init(router: any RouterProtocol) {
    self.router = router
  }
  
  //MARK: -  methods
  func moveToEntanceScreen(){
    router?.showEntranceViewController()
  }
  
  func moveToRegistrationScreen(){
    router?.showRegistrationViewController()
  }
  
}
