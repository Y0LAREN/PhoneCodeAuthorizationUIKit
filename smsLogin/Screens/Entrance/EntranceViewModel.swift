//
//  EntranceViewModel.swift
//  smsLogin
//
//  Created by Илья Иванов on 27.10.2024.
//

import Foundation
import Combine

final class EntranceViewModel: EntranceViewModelProtocol{
  
  //MARK: - properties
  @Published var phoneNumber: String = ""
  var router: RouterProtocol?
  
  //MARK: - init
  init(router: any RouterProtocol) {
    self.router = router
  }
  
  //MARK: - methods
  func updatePhoneNumber(_ newNumber: String) {
       phoneNumber = newNumber
   }
  
  func moveToCodeInputView(){
    router?.showRegistrationViewController(navigationnBarTitle: R.Texts.entranceNavigationBarHeaderText)
  }
}
