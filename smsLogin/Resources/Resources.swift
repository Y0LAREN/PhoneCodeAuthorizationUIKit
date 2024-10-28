import Foundation
import UIKit

enum R{
  
  enum Floats {
    
    static let buttonWidth: CGFloat = 319
    static let buttonHeight: CGFloat = 56
    
    static let buttonForCountryCodeWidht: CGFloat = 70
    static let buttonForCountryCodeHeight: CGFloat = 50
    
    static let textFieldForPhoneNumberWidht: CGFloat = 231
    static let textFieldForPhoneNumberHeight: CGFloat = 50
    
  }
  
  enum Fonts {
    
    static func sfUIblack(with size: CGFloat) -> UIFont {
        UIFont(name: "SFUIDisplay-Black", size: size) ?? UIFont()
    }
    
    static func sfUIbold(with size: CGFloat) -> UIFont {
        UIFont(name: "SFUIDisplay-Bold", size: size) ?? UIFont()
    }
    
    static func sfUIheavy(with size: CGFloat) -> UIFont {
        UIFont(name: "SFUIDisplay-Heavy", size: size) ?? UIFont()
    }
    
    static func sfUIlight(with size: CGFloat) -> UIFont {
        UIFont(name: "SFUIDisplay-Light", size: size) ?? UIFont()
    }
    
    static func sfUImedium(with size: CGFloat) -> UIFont {
        UIFont(name: "SFUIDisplay-Medium", size: size) ?? UIFont()
    }
    
    static func sfUIsemibold(with size: CGFloat) -> UIFont {
        UIFont(name: "SFUIDisplay-Semibold", size: size) ?? UIFont()
    }
    
    static func sfUIthin(with size: CGFloat) -> UIFont {
        UIFont(name: "SFUIDisplay-Thin", size: size) ?? UIFont()
    }
    
    static func sfUIultralight(with size: CGFloat) -> UIFont {
        UIFont(name: "SFUIDisplay-Ultralight", size: size) ?? UIFont()
    }
    
    static func urbanistRomanExtraLight(with size: CGFloat) -> UIFont {
        UIFont(name: "UrbanistRoman-ExtraLight", size: size) ?? UIFont()
    }
    
    static func urbanistRomanLight(with size: CGFloat) -> UIFont {
        UIFont(name: "UrbanistRoman-Light", size: size) ?? UIFont()
    }
    
  }
  
  enum Texts{
    
    static let entranceNavigationBarHeaderText = "Войти"
    static let registrationNavigationBarHeaderText = "Зарегистрироваться"
    static let passwordNavigationBarHeaderText = "Код приложения"
    
    static let mainLargeTitleText = "SIS"
    static let mainSmallTitleText = "Выбери свою безопасность"
    static let mainRegisterLabelText = "У вас нет аккаунта?"
    static let mainRegisterButtonText = "Зарегистрируйтесь сейчас"
    
    static let entranceHeadingText = "Верификация"
    static let entrancePhoneNumber = "Номер телефона"
    static let entranceInputCodeAgain = "Запросить код можно"
    static let passwordHeadingText = "Создайте код приложения"
    static let codeNotArriveHeadingText = "Не пришел код?"
    
    static let entranceUnderHeadingText = "Введите код из смс, что мы отправили вам"
    static let codeNotArriveUnderHeadingText = "Не пришел код? Обратитесь в чат поддержки"
    
    
    static let entranceButtonGetCodeText = "Получить код"
    static let entranceButtonRegistationText = "Зарегистрироваться"
    static let entranceButtonCodeNotArrive = "Я не получил код!"
    static let mainButtonText = "Войти по номеру телефона"
    
    static let entranceCodeHint = "Код придет на ваш номер телефона"
    static let entrancePhoneCodeTimeText = "Запросить код можно через "
    
    static let codeCreated = "Вы успешно создали код приложения"
    static let enterInApp = "Войти в приложение"
    
  }
  
  enum Images {
    
    static let logoGoD = "logoGoD"
    
  }
  
  enum Colors {
    
    static let colorsForGradientButton = [0x9358F7, 0x7B78F2, 0x6197EE, 0x45B5E9, 0x10D7E2]
    static let backgroundColorForMainScreen = 0x0A0715
    static let smallTextColor = 0xE1E1E1
    
  }
  
}
