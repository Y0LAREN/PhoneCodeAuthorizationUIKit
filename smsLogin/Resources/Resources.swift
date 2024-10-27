import UIKit
enum R{
  
  enum Texts{
    
    static let entranceNavigationBarHeaderText = "Войти"
    static let registrationNavigationBarHeaderText = "Зарегистрироваться"
    static let passwordNavigationBarHeaderText = "Код приложения"
    
    static let entranceHeadingText = "Верификация"
    static let passwordHeadingText = "Создайте код приложения"
    static let codeNotArriveHeadingText = "Не пришел код?"
    
    static let entranceUnderHeadingText = "Введите код из смс, что мы отправили вам"
    static let codeNotArriveUnderHeadingText = "Не пришел код? Обратитесь в чат поддержки"
    
    
    static let entranceButtonGetCodeText = "Получить код"
    static let entranceButtonRegistationText = "Зарегистрироваться"
    static let entranceButtonCodeNotArrive = "Я не получил код!"
    
    static let entranceCodeHint = "Код придет на ваш номер телефона"
    static let entrancePhoneCodeTimeText = "Запросить код можно через "
    
    static let codeCreated = "Вы успешно создали код приложения"
    static let enterInApp = "Войти в приложение"
    
  }
  
  enum Images {
    static let mainScreenImage = UIImage(named: "mainScreen")
  }
  
  enum Colors {
    
    static let colorsForGradientButton = [0x9358F7, 0x7B78F2, 0x6197EE, 0x45B5E9, 0x10D7E2]
    static let backgroundColorForMainScreen = 0x0A0715
    
  }
  
}
