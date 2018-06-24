//
//  ViewController.m
//  EditUI
//
//  Created by Arnab on 03/11/17.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _btnEdit.tag = 0;
    _btnEdit.accessibilityValue = @"edit1";
    _btnEnter.accessibilityValue = @"enter";
    _name.accessibilityValue = @"txtName";
    _roll.accessibilityValue = @"txtRoll";
    _lblName.accessibilityValue = @"lblName";
    _lblRoll.accessibilityValue = @"lblRoll";
    _imgView.accessibilityValue = @"imgView";
    
    grCustom = [[CustomGestureRecognizer alloc] init];
    grCustom.minimumPressDuration = 0.15;
    grCustom.delegate = self;
    
    [self.view addGestureRecognizer:grCustom];
    
}

- (void) gestureRecognizer:(UIGestureRecognizer *)gr beganWithTouches:(NSSet*)touches andEvent:(UIEvent *)event{
    
    if(_btnEdit.tag == 1)
    {
        UITouch * touch = [touches anyObject];
        obj = [self getObjectWithAccessibilityValue:touch.view.accessibilityValue callInatance:self];
        CGPoint mTouchPoint = [touch locationInView:self.view];
        [self setNewPosition:obj newPoint:mTouchPoint];
    }
    
    
}

- (void) gestureRecognizer:(UIGestureRecognizer *)gr movedWithTouches:(NSSet*)touches andEvent:(UIEvent *)event{
    
    if(_btnEdit.tag == 1)
    {
        UITouch * touch = [touches anyObject];
        CGPoint mTouchPoint = [touch locationInView:self.view];
        obj = [self getObjectWithAccessibilityValue:touch.view.accessibilityValue callInatance:self];
        [self setNewPosition:obj newPoint:mTouchPoint];
    }
    
    
}

-(id)getObjectWithAccessibilityValue:(NSString *)accessibilityValue callInatance:(ViewController *)classObject
{
    if ([accessibilityValue isEqualToString:@"Edit"])
    {
        return classObject.btnEdit;
    }
    else if ([accessibilityValue isEqualToString:@"txtName"])
    {
        return classObject.name;
    }
    else if ([accessibilityValue isEqualToString:@"txtRoll"])
    {
        return classObject.roll;
    }
    else if ([accessibilityValue isEqualToString:@"enter"])
    {
        return classObject.btnEnter;
    }
    else if ([accessibilityValue isEqualToString:@"lblName"])
    {
        return classObject.lblName;
    }
    else if ([accessibilityValue isEqualToString:@"lblRoll"])
    {
        return classObject.lblRoll;
    }
    else if ([accessibilityValue isEqualToString:@"imgView"])
    {
        return classObject.imgView;
    }
    else
    {
        return classObject.view;
    }
}

-(void)setNewPosition:(id)sender newPoint:(CGPoint)point
{
    if ([sender isKindOfClass:[UIButton class]])
    {
        UIButton *newObj = (UIButton *)sender;
        newObj.center = point;
    }
    if ([sender isKindOfClass:[UITextField class]])
    {
        UITextField *newObj = (UITextField *)sender;
        newObj.center = point;
    }
    if ([sender isKindOfClass:[UILabel class]])
    {
        UILabel *newObj = (UILabel *)sender;
        newObj.center = point;
    }
    if ([sender isKindOfClass:[UIImageView class]])
    {
        UIImageView *newObj = (UIImageView *)sender;
        newObj.center = point;
    }
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)btnEditPress:(id)sender {
    
    if (_btnEdit.tag == 0)
    {
        _btnEdit.tag = 1;
        [_btnEdit setTitle:@"Done" forState:UIControlStateNormal];
    }
    else
    {
        _btnEdit.tag = 0;
        [_btnEdit setTitle:@"Edit" forState:UIControlStateNormal];
    }

}

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

@end
