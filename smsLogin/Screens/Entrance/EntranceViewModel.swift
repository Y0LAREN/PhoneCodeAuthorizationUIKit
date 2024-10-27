//
//  EntranceViewModel.swift
//  smsLogin
//
//  Created by Илья Иванов on 27.10.2024.
//

import Foundation

final class EntranceViewModel: EntranceViewModelProtocol {
  
  var router: RouterProtocol?
  
  init(router: any RouterProtocol) {
    self.router = router
  }
  
}
