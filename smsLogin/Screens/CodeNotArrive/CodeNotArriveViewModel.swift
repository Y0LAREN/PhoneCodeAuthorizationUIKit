//
//  CodeNotArriveViewModel.swift
//  smsLogin
//
//  Created by Илья Иванов on 27.10.2024.
//

import Foundation

final class CodeNotArriveViewModel: CodeNotArriveViewModelProtocol {
  
  //MARK: - properties
  var router: RouterProtocol?
  
  //MARK: - init
  init(router: any RouterProtocol) {
    self.router = router
  }
  
}
