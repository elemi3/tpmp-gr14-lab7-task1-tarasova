import UIKit

class AnimationViewController: UIViewController {

    @IBOutlet weak var box: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        UIView.animate(withDuration: 2.0) {
            self.box.center.x += 150
        }
    }
}