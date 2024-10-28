import UIKit

class PullDownButton: UIButton {

    // Инициализатор для создания кнопки с выпадающим меню
    init(items: [String], defaultTitle: String) {
        super.init(frame: .zero)
        setupButton(items: items, defaultTitle: defaultTitle)
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupButton(items: [], defaultTitle: "")
    }

    // Метод для настройки кнопки
    private func setupButton(items: [String], defaultTitle: String) {
        // Настройка внешнего вида кнопки
        setTitle(defaultTitle, for: .normal)
        setTitleColor(.white, for: .normal)
      backgroundColor = UIColor(rgb: R.Colors.backgroundColorForMainScreen)
        layer.cornerRadius = 3
        clipsToBounds = true

        // Создание элементов меню
        let menuItems = items.map { item in
            UIAction(title: item, handler: { _ in self.setTitle(item, for: .normal) })
        }

        let menu = UIMenu(title: "Выберите код", children: menuItems)
        self.menu = menu
        self.showsMenuAsPrimaryAction = true
    }
}
