import Foundation
import UIKit

protocol Router {
  var navigationController: UINavigationController? { get set }
  var builder: Builder? { get set }
}

protocol RouterProtocol: Router {
  
  func showMainViewController()
  func showCodeNotArriveViewController()
  func showPasswordViewController()
  func showRegistrationViewController()
  func showEntranceViewController()
  
}
