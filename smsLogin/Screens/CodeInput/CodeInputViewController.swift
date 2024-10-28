//
//  RegistationViewController.swift
//  smsLogin
//
//  Created by Илья Иванов on 27.10.2024.
//

import UIKit

class CodeInputViewController: UIViewController {
  
  //MARK: - properties
  var viewModel: CodeInputViewModel?
  
  private lazy var labelHeader: UILabel = {
    let labelHeader = UILabel()
    
    labelHeader.text = R.Texts.entranceHeadingText
    labelHeader.font = UIFont.systemFont(ofSize: 24)
    labelHeader.textColor = .white
    
    return labelHeader
  }()
  
  private lazy var labelUnderHeader: UILabel = {
    let labelUnderHeader = UILabel()
    
    labelUnderHeader.text = R.Texts.entranceUnderHeadingText
    labelUnderHeader.font = UIFont.systemFont(ofSize: 16)
    labelUnderHeader.textColor = UIColor(rgb: R.Colors.smallTextColor)
    labelUnderHeader.numberOfLines = 0
    labelUnderHeader.textAlignment = .center
    
    return labelUnderHeader
  }()
  
  private lazy var labelTime: UILabel = {
    let labelTime = UILabel()
    
    labelTime.text = R.Texts.entranceInputCodeAgain
    labelTime.font = R.Fonts.urbanistRomanLight(with: 13)
    labelTime.textColor = .white
    labelTime.numberOfLines = 0
    labelTime.textAlignment = .center
    
    return labelTime
  }()
  
  //MARK: - override methods
  override func viewDidLoad() {
    super.viewDidLoad()
    setupViewsAndConstraints()
  }
  
  //MARK: - private methods
  private func setupViewsAndConstraints(){
    view.backgroundColor = UIColor(rgb: R.Colors.backgroundColorForMainScreen)
    view.addSubview(labelHeader)
    view.addSubview(labelUnderHeader)
    view.addSubview(labelTime)
    
    setLabelHeader()
    setLabelUnderHeader()
    setLabelTime()
  }
  
  private func setLabelHeader(){
    labelHeader.translatesAutoresizingMaskIntoConstraints = false
    
    NSLayoutConstraint.activate([
      labelHeader.widthAnchor.constraint(equalToConstant: 166),
      labelHeader.heightAnchor.constraint(equalToConstant: 31),
      labelHeader.topAnchor.constraint(equalTo: view.topAnchor, constant: 169),
      labelHeader.centerXAnchor.constraint(equalTo: view.centerXAnchor)
    ])
  }
  
  private func setLabelUnderHeader(){
    labelUnderHeader.translatesAutoresizingMaskIntoConstraints = false
    
    NSLayoutConstraint.activate([
      labelUnderHeader.widthAnchor.constraint(equalToConstant: 182),
      labelUnderHeader.heightAnchor.constraint(equalToConstant: 40),
      labelUnderHeader.topAnchor.constraint(equalTo: view.topAnchor, constant: 217),
      labelUnderHeader.centerXAnchor.constraint(equalTo: view.centerXAnchor)
    ])
  }
  
  private func setLabelTime(){
    labelTime.translatesAutoresizingMaskIntoConstraints = false
    
    NSLayoutConstraint.activate([
      labelTime.widthAnchor.constraint(equalToConstant: 185),
      labelTime.heightAnchor.constraint(equalToConstant: 20),
      labelTime.topAnchor.constraint(equalTo: view.topAnchor, constant: 291),
      labelTime.centerXAnchor.constraint(equalTo: view.centerXAnchor)
    ])
  }
  
}
