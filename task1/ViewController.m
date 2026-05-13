#import "ViewController.h"

@implementation ViewController

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    self.lastPoint = [touch locationInView:self.view];
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {

    UITouch *touch = [touches anyObject];
    CGPoint currentPoint = [touch locationInView:self.view];

    UIGraphicsBeginImageContext(self.view.frame.size);

    [[self.canvas image] drawInRect:self.view.bounds];

    CGContextSetLineWidth(UIGraphicsGetCurrentContext(), 5.0);
    CGContextMoveToPoint(UIGraphicsGetCurrentContext(),
                         self.lastPoint.x,
                         self.lastPoint.y);

    CGContextAddLineToPoint(UIGraphicsGetCurrentContext(),
                            currentPoint.x,
                            currentPoint.y);

    CGContextStrokePath(UIGraphicsGetCurrentContext());

    self.canvas.image =
        UIGraphicsGetImageFromCurrentImageContext();

    UIGraphicsEndImageContext();

    self.lastPoint = currentPoint;
}

@end