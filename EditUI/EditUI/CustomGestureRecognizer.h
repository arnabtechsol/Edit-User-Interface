//
//  DragGestureRecognizer.h
//  EditUI
//
//  Created by Arnab on 03/11/17.

#import <UIKit/UIKit.h>



@interface CustomGestureRecognizer : UILongPressGestureRecognizer <UIGestureRecognizerDelegate>
{
    
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event;
- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event;
//- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event;

@end

@protocol DragGestureRecognizerDelegate <UIGestureRecognizerDelegate>
- (void) gestureRecognizer:(UIGestureRecognizer *)gr movedWithTouches:(NSSet*)touches andEvent:(UIEvent *)event;
- (void) gestureRecognizer:(UIGestureRecognizer *)gr beganWithTouches:(NSSet*)touches andEvent:(UIEvent *)event;
//- (void) gestureRecognizer:(UIGestureRecognizer *)gr endWithTouches:(NSSet*)touches andEvent:(UIEvent *)event;


@end
