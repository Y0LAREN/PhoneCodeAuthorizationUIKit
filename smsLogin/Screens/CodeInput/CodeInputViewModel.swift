//
//  RegistationViewModel.swift
//  smsLogin
//
//  Created by Илья Иванов on 27.10.2024.
//

import Foundation

final class CodeInputViewModel: CodeInputViewModelProtocol {
  //MARK: - properties
  var router: RouterProtocol?
  
  //MARK: - init
  init(router: RouterProtocol){
    self.router = router
  }
  
}
