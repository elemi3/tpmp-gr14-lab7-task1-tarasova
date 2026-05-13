import UIKit

class GraphicsView: UIView {

    override func draw(_ rect: CGRect) {

        let path = UIBezierPath()
        path.move(to: CGPoint(x:50, y:50))
        path.addLine(to: CGPoint(x:200, y:200))

        UIColor.red.setStroke()
        path.lineWidth = 5
        path.stroke()
    }
}