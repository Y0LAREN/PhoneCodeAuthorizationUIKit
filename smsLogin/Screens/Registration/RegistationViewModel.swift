//
//  RegistationViewModel.swift
//  smsLogin
//
//  Created by Илья Иванов on 27.10.2024.
//

import Foundation

final class RegistationViewModel: RegistrationViewModelProtocol {
  
  var router: RouterProtocol?
  
  init(router: RouterProtocol){
    self.router = router
  }
  
}
