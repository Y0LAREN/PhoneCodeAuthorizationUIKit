import UIKit

class GradientView: UIView {

    private let gradientLayer = CAGradientLayer()

  init(colors: [UIColor], startPoint: CGPoint = CGPoint(x: 0.5, y: 1), endPoint: CGPoint = CGPoint(x: 0.5, y: 0)) {
        super.init(frame: .zero)
        setupGradientLayer(colors: colors, startPoint: startPoint, endPoint: endPoint)
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupGradientLayer(colors: [], startPoint: CGPoint(x: 0, y: 0.5), endPoint: CGPoint(x: 1, y: 0.5))
    }

    // Метод для настройки градиентного слоя
    private func setupGradientLayer(colors: [UIColor], startPoint: CGPoint, endPoint: CGPoint) {
        // Конвертация UIColor в CGColor
        gradientLayer.colors = colors.map { $0.cgColor }
        gradientLayer.startPoint = startPoint
        gradientLayer.endPoint = endPoint
        gradientLayer.frame = bounds
        gradientLayer.cornerRadius = layer.cornerRadius
        layer.insertSublayer(gradientLayer, at: 0)
    }

    // Обновление градиентного слоя при изменении размера
    override func layoutSubviews() {
        super.layoutSubviews()
        gradientLayer.frame = bounds
        gradientLayer.cornerRadius = layer.cornerRadius
    }
}
