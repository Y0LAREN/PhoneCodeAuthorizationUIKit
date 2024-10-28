import UIKit

protocol Builder {
  
  func createCodeNotArriveScreen(router: RouterProtocol) -> UIViewController
  func createMainScreen(router: any RouterProtocol) -> UIViewController
  func createPasswordScreen(router: any RouterProtocol) -> UIViewController
  func createRegistrationScreen(router: any RouterProtocol) -> UIViewController
  func createEntranceScreen(router: any RouterProtocol) -> UIViewController
  
}