import UIKit
import Combine

class CustomGradientButton: UIButton, ObservableObject {
  
  private let gradientLayer = CAGradientLayer()
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    setupButton()
  }
  
  required init?(coder: NSCoder) {
    super.init(coder: coder)
    setupButton()
  }
  
  private func setupButton() {
    
    gradientLayer.colors = [
      UIColor(rgb: 0x9358F7).cgColor,
      UIColor(rgb: 0x7B78F2).cgColor,
      UIColor(rgb: 0x6197EE).cgColor,
      UIColor(rgb: 0x45B5E9).cgColor,
      UIColor(rgb: 0x10D7E2).cgColor
    ]
    gradientLayer.startPoint = CGPoint(x: 0.5, y: 1)
    gradientLayer.endPoint = CGPoint(x: 0.5, y: 0)
    gradientLayer.cornerRadius = 31
    layer.insertSublayer(gradientLayer, at: 0)
    
    layer.cornerRadius = 31
    setTitleColor(.white, for: .normal)
  }
  
  override func layoutSubviews() {
    super.layoutSubviews()
    gradientLayer.frame = bounds
  }
}
