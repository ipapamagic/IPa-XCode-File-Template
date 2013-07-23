//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

#import "___FILEBASENAME___.h"
@interface ___FILEBASENAMEASIDENTIFIER___()
@end
@implementation ___FILEBASENAMEASIDENTIFIER___
{
    ___VARIABLE_inputViewClass___ *inputView;
    UIToolbar *inputAccessoryView;
}
-(BOOL)canBecomeFirstResponder
{
    return YES;
}
-(UIView*)inputView
{
    if (inputView == nil) {
        inputView = [[___VARIABLE_inputViewClass___ alloc] initWithFrame:CGRectZero];
      
    }
    return inputView;
}
- (UIView *)inputAccessoryView {
    if (!inputAccessoryView) {
        inputAccessoryView = [[UIToolbar alloc] init];
        inputAccessoryView.barStyle = UIBarStyleBlackTranslucent;
        inputAccessoryView.autoresizingMask = UIViewAutoresizingFlexibleHeight;
        [inputAccessoryView sizeToFit];
        CGRect frame = inputAccessoryView.frame;
        frame.size.height = 44.0f;
        inputAccessoryView.frame = frame;
        UIBarButtonItem *doneBtn=[[UIBarButtonItem alloc] initWithTitle:@"Done" style:UIBarButtonItemStyleDone target:self action:@selector(onDone:)];
        
        UIBarButtonItem *flexibleSpaceLeft = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
        
        NSArray *array = [NSArray arrayWithObjects:flexibleSpaceLeft, doneBtn, nil];
        [inputAccessoryView setItems:array];
    }
    return inputAccessoryView;
}
-(void)onDone:(id)sender
{
#warning insert your onDone code
    [self resignFirstResponder];
}

@end
