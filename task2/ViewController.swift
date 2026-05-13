import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var gestureIndicator: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        gestureIndicator.textAlignment = .center
        gestureIndicator.numberOfLines = 2
        gestureIndicator.text = "Используйте жесты"
        gestureIndicator.backgroundColor = .yellow
    }

    @IBAction func tap(_ sender: Any) {
        gestureIndicator.text = "Жест: касание"
        gestureIndicator.backgroundColor = .green
    }

    @IBAction func pinch(_ sender: Any) {
        gestureIndicator.text = "Жест: масштабирование"
        gestureIndicator.backgroundColor = .red
    }

    @IBAction func rotation(_ sender: Any) {
        gestureIndicator.text = "Жест: вращение"
        gestureIndicator.backgroundColor = .blue
    }

    @IBAction func swipe(_ sender: Any) {
        gestureIndicator.text = "Жест: свайп"
        gestureIndicator.backgroundColor = .gray
    }

    @IBAction func longPress(_ sender: Any) {
        gestureIndicator.text = "Жест: долгое нажатие"
        gestureIndicator.backgroundColor = .orange
    }
}