//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

#import "___FILEBASENAME___.h"
@interface ___FILEBASENAMEASIDENTIFIER___()<UIPickerViewDelegate,UIPickerViewDataSource>
@end
@implementation ___FILEBASENAMEASIDENTIFIER___
{
    UIPickerView *inputView;
    UIToolbar *inputAccessoryView;
}
-(BOOL)canBecomeFirstResponder
{
    return YES;
}
-(UIView*)inputView
{
    if (inputView == nil) {
        inputView = [[___VARIABLE_inputView___ alloc] initWithFrame:CGRectZero];
        inputView.delegate = self;
        inputView.dataSource = self;
        [inputView setShowsSelectionIndicator:YES];
        
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
#pragma mark - UIPickerViewDelegate

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
#warning input your title code
    return @"";
    
    
}

- (CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component {
	return 44.0f;
}

- (CGFloat)pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component {
	return 100.0f;
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    
    
}
@end
