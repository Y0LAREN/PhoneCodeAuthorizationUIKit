//
//  ViewController.swift
//  smsLogin
//
//  Created by Илья Иванов on 27.10.2024.
//

import UIKit
import Foundation

class MainViewController: UIViewController {

  //MARK: - properties
  var viewModel: MainViewModel?
  private let gradientLayer = CAGradientLayer()
  
  private lazy var logoImage: UIImageView = {
    let logoImage = UIImageView()
    
    logoImage.image = UIImage(named: R.Images.logoGoD)
    
    return logoImage
  }()
  
  private lazy var buttonForEnter: CustomGradientButton = {
    let buttonForEnter = CustomGradientButton()
    
    buttonForEnter.setTitle(R.Texts.mainButtonText, for: .normal)
    buttonForEnter.titleLabel?.font = R.Fonts.urbanistRomanLight(with: 16)
    buttonForEnter.layer.cornerRadius = 31
    buttonForEnter.titleLabel?.textAlignment = .center
    buttonForEnter.titleLabel?.numberOfLines = 0
    buttonForEnter.addTarget(self, action: #selector(workButtonForEnter), for: .touchUpInside)
    
    
    return buttonForEnter
  }()
  
  private lazy var labelForLargeTitle: UILabel = {
    let labelForLargeTitle = UILabel()
    
    labelForLargeTitle.textColor = .white
    labelForLargeTitle.text = R.Texts.mainLargeTitleText
    labelForLargeTitle.font = R.Fonts.sfUImedium(with: 34)
    
    return labelForLargeTitle
  }()
  
  private lazy var labelForSmallTitle: UILabel = {
    let labelForSmallTitle = UILabel()
    
    labelForSmallTitle.textColor = .white
    labelForSmallTitle.text = R.Texts.mainSmallTitleText
    labelForSmallTitle.font = R.Fonts.sfUIlight(with: 17)
    labelForSmallTitle.numberOfLines = 0
    
    return labelForSmallTitle
  }()
  
  private lazy var labelForRegistrationTitle: UILabel = {
    let labelForRegistrationTitle = UILabel()
    
    labelForRegistrationTitle.textColor = .white
    labelForRegistrationTitle.text = R.Texts.mainRegisterLabelText
    labelForRegistrationTitle.font = R.Fonts.urbanistRomanLight(with: 14)
    labelForRegistrationTitle.textAlignment = .center
    
    return labelForRegistrationTitle
  }()
  
  private lazy var buttonForRegister: UIButton = {
    let buttonForRegister = UIButton()
    
    buttonForRegister.setTitle(R.Texts.mainRegisterButtonText, for: .normal)
    buttonForRegister.titleLabel?.textAlignment = .center
    buttonForRegister.titleLabel?.numberOfLines = 0
    buttonForRegister.titleLabel?.font = R.Fonts.urbanistRomanLight(with: 14)
    buttonForRegister.setTitleColor(.systemBlue, for: .normal)
    buttonForRegister.addTarget(self, action: #selector(workButtonForRegistration), for: .touchUpInside)
    
    
    return buttonForRegister
  }()
  
  //MARK: - override methods
  override func viewDidLoad() {
    super.viewDidLoad()
    setupViewsAndConstraints()
  }
  
  //MARK: -  objective methods
  @objc
  private func workButtonForEnter(){
    viewModel?.moveToEntanceScreen()
  }
  
  @objc
  private func workButtonForRegistration(){
    viewModel?.moveToRegistrationScreen()
  }
  
  //MARK: - private methods
  private func setLogoImageConstraints(){
    logoImage.translatesAutoresizingMaskIntoConstraints = false
    
    NSLayoutConstraint.activate([
      logoImage.widthAnchor.constraint(equalToConstant: 80),
      logoImage.heightAnchor.constraint(equalToConstant: 80),
      logoImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 265),
      logoImage.centerXAnchor.constraint(equalTo: view.centerXAnchor)
    ])
  }
  
  private func setButtonForEnter(){
    buttonForEnter.translatesAutoresizingMaskIntoConstraints = false
    
    NSLayoutConstraint.activate([
      buttonForEnter.widthAnchor.constraint(equalToConstant: 319),
      buttonForEnter.heightAnchor.constraint(equalToConstant: 56),
      buttonForEnter.topAnchor.constraint(equalTo: view.topAnchor, constant: 559),
      buttonForEnter.centerXAnchor.constraint(equalTo: view.centerXAnchor)
    ])
  }
  
  private func setLabelForLargeTitle(){
    labelForLargeTitle.translatesAutoresizingMaskIntoConstraints = false
    
    NSLayoutConstraint.activate([
      labelForLargeTitle.widthAnchor.constraint(equalToConstant: 53),
      labelForLargeTitle.heightAnchor.constraint(equalToConstant: 43),
      labelForLargeTitle.topAnchor.constraint(equalTo: view.topAnchor, constant: 376),
      labelForLargeTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor)
    ])
  }
  
  private func setLabelForSmallTitle(){
    labelForSmallTitle.translatesAutoresizingMaskIntoConstraints = false
    
    NSLayoutConstraint.activate([
      labelForSmallTitle.widthAnchor.constraint(equalToConstant: 220),
      labelForSmallTitle.heightAnchor.constraint(equalToConstant: 23),
      labelForSmallTitle.topAnchor.constraint(equalTo: view.topAnchor, constant: 436),
      labelForSmallTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor)
    ])
  }
  
  private func setLabelForRegistrationTitle(){
    labelForRegistrationTitle.translatesAutoresizingMaskIntoConstraints = false
    
    NSLayoutConstraint.activate([
      labelForRegistrationTitle.widthAnchor.constraint(equalToConstant: 187),
      labelForRegistrationTitle.heightAnchor.constraint(equalToConstant: 40),
      labelForRegistrationTitle.topAnchor.constraint(equalTo: view.topAnchor, constant: 710),
      labelForRegistrationTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor)
    ])
  }
  
  private func setButtonForRegister(){
    buttonForRegister.translatesAutoresizingMaskIntoConstraints = false
    
    NSLayoutConstraint.activate([
      buttonForRegister.widthAnchor.constraint(equalToConstant: 187),
      buttonForRegister.heightAnchor.constraint(equalToConstant: 40),
      buttonForRegister.topAnchor.constraint(equalTo: view.topAnchor, constant: 735),
      buttonForRegister.centerXAnchor.constraint(equalTo: view.centerXAnchor)
    ])
  }
  
  private func setupViewsAndConstraints(){
    view.backgroundColor = UIColor(rgb: R.Colors.backgroundColorForMainScreen)
    view.addSubview(logoImage)
    view.addSubview(buttonForEnter)
    view.addSubview(labelForLargeTitle)
    view.addSubview(labelForSmallTitle)
    view.addSubview(labelForRegistrationTitle)
    view.addSubview(buttonForRegister)
    
    setLogoImageConstraints()
    setButtonForEnter()
    setLabelForLargeTitle()
    setLabelForSmallTitle()
    setLabelForRegistrationTitle()
    setButtonForRegister()
  }
}

