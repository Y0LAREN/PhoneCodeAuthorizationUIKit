//
//  EntranceViewController.swift
//  smsLogin
//
//  Created by Илья Иванов on 27.10.2024.
//

import UIKit

class EntranceViewController: UIViewController {
  
  var viewModel: EntranceViewModel?
  
  private lazy var labelHeaderForNumber: UILabel = {
    let labelHeaderForNumber = UILabel()
    
    labelHeaderForNumber.text = R.Texts.entrancePhoneNumber
    labelHeaderForNumber.font = R.Fonts.urbanistRomanLight(with: 13)
    labelHeaderForNumber.textColor = UIColor(rgb: R.Colors.smallTextColor)
    
    return labelHeaderForNumber
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setupViewsAndConstraints()
  }
  
  private func setupViewsAndConstraints(){
    view.backgroundColor = UIColor(rgb: R.Colors.backgroundColorForMainScreen)
    setLabelHeaderForNumber()
  }
  
  private func setLabelHeaderForNumber(){
    labelHeaderForNumber.translatesAutoresizingMaskIntoConstraints = false
    
    NSLayoutConstraint.activate([
      labelHeaderForNumber.widthAnchor.constraint(equalToConstant: 113),
      labelHeaderForNumber.heightAnchor.constraint(equalToConstant: 15),
      labelHeaderForNumber.topAnchor.constraint(equalTo: view.topAnchor, constant: 135),
      labelHeaderForNumber.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 34)
    ])
  }
  
  
}
