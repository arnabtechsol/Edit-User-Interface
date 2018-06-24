//
//  DragGestureRecognizer.m
//  EditUI
//
//  Created by Arnab on 03/11/17.
//

#import "CustomGestureRecognizer.h"

@implementation CustomGestureRecognizer

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    
   // [super touchesMoved:touches withEvent:event];
    
    if ([self.delegate respondsToSelector:@selector(gestureRecognizer:movedWithTouches:andEvent:)]) {
        [(id)self.delegate gestureRecognizer:self movedWithTouches:touches andEvent:event];
    }
    
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    if ([self.delegate respondsToSelector:@selector(gestureRecognizer:beganWithTouches:andEvent:)]) {
        [(id)self.delegate gestureRecognizer:self beganWithTouches:touches andEvent:event];
    }
}

//- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
//{
//    if ([self.delegate respondsToSelector:@selector(gestureRecognizer:endWithTouches:andEvent:)]) {
//        [(id)self.delegate gestureRecognizer:self endWithTouches:touches andEvent:event];
//    }
//}

@end
