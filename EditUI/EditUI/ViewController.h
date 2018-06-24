//
//  ViewController.h
//  EditUI
//
//  Created by Arnab on 03/11/17.
//

#import <UIKit/UIKit.h>
#import "CustomGestureRecognizer.h"

@interface ViewController : UIViewController<DragGestureRecognizerDelegate, UITextFieldDelegate>
{
    CustomGestureRecognizer * grCustom;
    id obj;
}

@property (weak, nonatomic) IBOutlet UITextField *name;
@property (weak, nonatomic) IBOutlet UITextField *roll;
@property (weak, nonatomic) IBOutlet UIButton *btnEnter;
@property (weak, nonatomic) IBOutlet UIButton *btnEdit;
@property (weak, nonatomic) IBOutlet UILabel *lblName;
@property (weak, nonatomic) IBOutlet UILabel *lblRoll;
@property (weak, nonatomic) IBOutlet UIImageView *imgView;

- (IBAction)btnEditPress:(id)sender;
@end

