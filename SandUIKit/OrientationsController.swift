
import UIKit

class OrientationsController: UIViewController {
  let supportedOrientations: UIInterfaceOrientationMask

  override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
    supportedOrientations
  }

  init(orientations: UIInterfaceOrientationMask) {
    self.supportedOrientations = orientations
    super.init(nibName: nil, bundle: nil)
//    view.backgroundColor = [.green, .red, .blue].randomElement()!
    view.backgroundColor = .blue.withAlphaComponent(0.1)

    let button = UIButton(frame: CGRect(origin: CGPoint(x: 200, y: 200), size: CGSize(width: 50, height: 50)))
    button.backgroundColor = .gray
    button.addTarget(self, action: #selector(test), for: .touchUpInside)

    view.addSubview(button)

    if #available(iOS 16.0, *) {
      setNeedsUpdateOfSupportedInterfaceOrientations()
    }
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  @objc
  func test() {
//    navigationController?.pushViewController(OrientationsController(orientations: .portrait), animated: true)
    self.dismiss(animated: true)
  }

  override func willTransition(
    to newCollection: UITraitCollection,
    with coordinator: UIViewControllerTransitionCoordinator
  ) {
    coordinator.animate { _ in }
  }
}
