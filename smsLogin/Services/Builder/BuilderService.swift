import Foundation
import UIKit

final class BuilderService: Builder {
  
  func createMainScreen(router: any RouterProtocol) -> UIViewController {
    let view = MainViewController()
    let viewModel = MainViewModel(router: router)
    view.viewModel = viewModel
    return view
  }
  
  func createEntranceScreen(router: any RouterProtocol) -> UIViewController {
    let view = EntranceViewController()
    let viewModel = EntranceViewModel(router: router)
    view.viewModel = viewModel
    return view
  }
  
  func createCodeInputScreen(router: any RouterProtocol) -> UIViewController {
    let view = CodeInputViewController()
    let viewModel = CodeInputViewModel(router: router)
    view.viewModel = viewModel
    return view
  }
  
  func createCodeNotArriveScreen(router: any RouterProtocol) -> UIViewController {
    let view = CodeNotArriveViewController()
    let viewModel = CodeNotArriveViewModel(router: router)
    view.viewModel = viewModel
    return view
  }
  
  func createPasswordScreen(router: any RouterProtocol) -> UIViewController {
    let view = PasswordViewController()
    let viewModel = PasswordViewModel(router: router)
    view.viewModel = viewModel
    return view
  }
  
}
