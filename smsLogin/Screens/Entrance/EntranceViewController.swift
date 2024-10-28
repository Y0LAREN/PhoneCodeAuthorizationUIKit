//
//  EntranceViewController.swift
//  smsLogin
//
//  Created by Илья Иванов on 27.10.2024.
//

import UIKit
import Combine

class EntranceViewController: UIViewController {
  
  //MARK: - properties
  var viewModel: EntranceViewModel?
  
  private lazy var labelHeaderForNumber: UILabel = {
    let labelHeaderForNumber = UILabel()
    
    labelHeaderForNumber.text = R.Texts.entrancePhoneNumber
    labelHeaderForNumber.font = R.Fonts.urbanistRomanLight(with: 13)
    labelHeaderForNumber.textColor = UIColor(rgb: R.Colors.smallTextColor)
    
    return labelHeaderForNumber
  }()
  
  private lazy var labelUnderNumber: UILabel = {
    let labelUnderNumber = UILabel()
    
    labelUnderNumber.text = R.Texts.entranceCodeHint
    labelUnderNumber.font = R.Fonts.urbanistRomanLight(with: 13)
    labelUnderNumber.textColor = UIColor(rgb: R.Colors.smallTextColor)
    
    return labelUnderNumber
  }()
  
  private lazy var buttonForGetCode: CustomGradientButton = {
    let buttonForGetCode = CustomGradientButton()
    
    buttonForGetCode.setTitle(R.Texts.entranceButtonGetCodeText, for: .normal)
    buttonForGetCode.titleLabel?.font = R.Fonts.urbanistRomanLight(with: 16)
    buttonForGetCode.layer.cornerRadius = 31
    buttonForGetCode.titleLabel?.textAlignment = .center
    buttonForGetCode.titleLabel?.numberOfLines = 0
    buttonForGetCode.addTarget(self, action: #selector(workButtonForGetCode), for: .touchUpInside)
    
    return buttonForGetCode
  }()
  
  private lazy var buttonForSelectCountryCode: PullDownButton = {
    let codes = ["+7", "+375", "+992", "+48", "+370"]
    let buttonForSelectCountryCode = PullDownButton(items: codes, defaultTitle: "+7")
    
    buttonForSelectCountryCode.titleLabel?.font = R.Fonts.urbanistRomanLight(with: 19)
    buttonForSelectCountryCode.layer.cornerRadius = 5
    buttonForSelectCountryCode.titleLabel?.textAlignment = .center
    buttonForSelectCountryCode.titleLabel?.numberOfLines = 0
    buttonForSelectCountryCode.frame = CGRect(x: 34, y: 215, width: 70, height: 50)
    
    return buttonForSelectCountryCode
  }()
  
  private lazy var gradientBackgroundViewForCountryCode: GradientView = {
    let gradientColors = [
      UIColor(rgb: 0x9358F7),
      UIColor(rgb: 0x7B78F2),
      UIColor(rgb: 0x6197EE),
      UIColor(rgb: 0x45B5E9),
      UIColor(rgb: 0x10D7E2)]
    let gradientBackgroundViewForCountryCode = GradientView(colors: gradientColors)
    
    gradientBackgroundViewForCountryCode.addSubview(buttonForSelectCountryCode)
    gradientBackgroundViewForCountryCode.layer.cornerRadius = 5
    
    return gradientBackgroundViewForCountryCode
  }()
  
  private lazy var gradientBackgroundViewForPhoneNumber: GradientView = {
    let gradientColors = [
      UIColor(rgb: 0x9358F7),
      UIColor(rgb: 0x7B78F2),
      UIColor(rgb: 0x6197EE),
      UIColor(rgb: 0x45B5E9),
      UIColor(rgb: 0x10D7E2)]
    let gradientBackgroundViewForPhoneNumber = GradientView(colors: gradientColors)
    
    gradientBackgroundViewForPhoneNumber.addSubview(textFieldForPhoneNumber)
    gradientBackgroundViewForPhoneNumber.layer.cornerRadius = 5
    
    return gradientBackgroundViewForPhoneNumber
  }()
  
  private var textFieldForPhoneNumber: UITextField = {
    let textFieldForPhoneNumber = UITextField()
    textFieldForPhoneNumber.backgroundColor = UIColor(rgb: R.Colors.backgroundColorForMainScreen)
    textFieldForPhoneNumber.textColor = .white
    textFieldForPhoneNumber.keyboardType = .numberPad
    textFieldForPhoneNumber.borderStyle = .roundedRect
    textFieldForPhoneNumber.textContentType = .telephoneNumber
    textFieldForPhoneNumber.font = UIFont.systemFont(ofSize: 19)
    return textFieldForPhoneNumber
  }()
  
  //MARK: - override methods
  override func viewDidLoad() {
    super.viewDidLoad()
    setupViewsAndConstraints()
  }
  
  //MARK: - objective methods
  @objc
  private func workButtonForGetCode(){
    viewModel?.moveToCodeInputView()
  }
  
  private func setupViewsAndConstraints(){
    view.backgroundColor = UIColor(rgb: R.Colors.backgroundColorForMainScreen)
    view.addSubview(gradientBackgroundViewForCountryCode)
    view.addSubview(gradientBackgroundViewForPhoneNumber)
    view.addSubview(labelHeaderForNumber)
    view.addSubview(buttonForGetCode)
    view.addSubview(labelUnderNumber)
    
    setGradientBackgroundViewForCountryCode()
    setGradientBackgroundViewForPhoneNumber()
    setLabelHeaderForNumber()
    setButtonForGetCode()
    setLabelUnderNumber()
    setButtonForSelectCountryCode()
    setTextFieldForPhoneNumber()
  }
  
  //MARK: - private methods
  private func setLabelHeaderForNumber(){
    labelHeaderForNumber.translatesAutoresizingMaskIntoConstraints = false
    
    NSLayoutConstraint.activate([
      labelHeaderForNumber.widthAnchor.constraint(equalToConstant: 113),
      labelHeaderForNumber.heightAnchor.constraint(equalToConstant: 15),
      labelHeaderForNumber.topAnchor.constraint(equalTo: view.topAnchor, constant: 135),
      labelHeaderForNumber.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 34)
    ])
  }
  
  private func setLabelUnderNumber(){
    labelUnderNumber.translatesAutoresizingMaskIntoConstraints = false
    
    NSLayoutConstraint.activate([
      labelUnderNumber.widthAnchor.constraint(equalToConstant: 245),
      labelUnderNumber.heightAnchor.constraint(equalToConstant: 17),
      labelUnderNumber.topAnchor.constraint(equalTo: view.topAnchor, constant: 237),
      labelUnderNumber.centerXAnchor.constraint(equalTo: view.centerXAnchor)
    ])
  }
  
  private func setButtonForGetCode(){
    buttonForGetCode.translatesAutoresizingMaskIntoConstraints = false
    
    NSLayoutConstraint.activate([
      buttonForGetCode.widthAnchor.constraint(equalToConstant: 319),
      buttonForGetCode.heightAnchor.constraint(equalToConstant: 56),
      buttonForGetCode.topAnchor.constraint(equalTo: view.topAnchor, constant: 307),
      buttonForGetCode.centerXAnchor.constraint(equalTo: view.centerXAnchor)
    ])
  }
  
  private func setButtonForSelectCountryCode(){
    buttonForSelectCountryCode.translatesAutoresizingMaskIntoConstraints = false
    
    NSLayoutConstraint.activate([
      buttonForSelectCountryCode.widthAnchor.constraint(equalToConstant: R.Floats.buttonForCountryCodeWidht),
      buttonForSelectCountryCode.heightAnchor.constraint(equalToConstant: R.Floats.buttonForCountryCodeHeight),
      buttonForSelectCountryCode.centerXAnchor.constraint(equalTo: gradientBackgroundViewForCountryCode.centerXAnchor),
      buttonForSelectCountryCode.centerYAnchor.constraint(equalTo: gradientBackgroundViewForCountryCode.centerYAnchor)
    ])
  }
  
  private func setGradientBackgroundViewForCountryCode(){
    gradientBackgroundViewForCountryCode.translatesAutoresizingMaskIntoConstraints = false
    
    NSLayoutConstraint.activate([
      gradientBackgroundViewForCountryCode.widthAnchor.constraint(equalToConstant: (R.Floats.buttonForCountryCodeWidht + 1)),
      gradientBackgroundViewForCountryCode.heightAnchor.constraint(equalToConstant: (R.Floats.buttonForCountryCodeHeight + 1)),
      gradientBackgroundViewForCountryCode.topAnchor.constraint(equalTo: view.topAnchor, constant: 175),
      gradientBackgroundViewForCountryCode.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 34)
    ])
  }
  
  private func setTextFieldForPhoneNumber(){
    textFieldForPhoneNumber.translatesAutoresizingMaskIntoConstraints = false
    
    NSLayoutConstraint.activate([
      textFieldForPhoneNumber.widthAnchor.constraint(equalToConstant: R.Floats.textFieldForPhoneNumberWidht),
      textFieldForPhoneNumber.heightAnchor.constraint(equalToConstant: R.Floats.textFieldForPhoneNumberHeight),
      textFieldForPhoneNumber.centerXAnchor.constraint(equalTo: gradientBackgroundViewForPhoneNumber.centerXAnchor),
      textFieldForPhoneNumber.centerYAnchor.constraint(equalTo: gradientBackgroundViewForPhoneNumber.centerYAnchor)
    ])
  }
  
  private func setGradientBackgroundViewForPhoneNumber(){
    gradientBackgroundViewForPhoneNumber.translatesAutoresizingMaskIntoConstraints = false
    
    NSLayoutConstraint.activate([
      gradientBackgroundViewForPhoneNumber.widthAnchor.constraint(equalToConstant: (R.Floats.textFieldForPhoneNumberWidht + 1)),
      gradientBackgroundViewForPhoneNumber.heightAnchor.constraint(equalToConstant: (R.Floats.textFieldForPhoneNumberHeight + 1)),
      gradientBackgroundViewForPhoneNumber.topAnchor.constraint(equalTo: view.topAnchor, constant: 175),
      gradientBackgroundViewForPhoneNumber.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 122)
    ])
  }
  
}
