//
//  CodeNotArriveViewModel.swift
//  smsLogin
//
//  Created by Илья Иванов on 27.10.2024.
//

import Foundation

final class PasswordViewModel: PasswordViewModelProtocol{
  
  
  var router: RouterProtocol?
  
  init(router: any RouterProtocol) {
    self.router = router
  }
  
}
