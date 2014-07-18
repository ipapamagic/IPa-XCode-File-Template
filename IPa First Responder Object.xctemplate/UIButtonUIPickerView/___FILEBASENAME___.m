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
}
-(void)awakeFromNib
{
    [super awakeFromNib];
    [self addTarget:self action:@selector(onTouch:) forControlEvents:UIControlEventTouchUpInside];
}
-(id)init
{
    self = [super init];
    [self addTarget:self action:@selector(onTouch:) forControlEvents:UIControlEventTouchUpInside];
    return self;
}
-(void)onTouch:(id)sender
{
    [self becomeFirstResponder];
}
-(BOOL)canBecomeFirstResponder
{
    return YES;
}
-(UIView*)inputView
{
    if (inputView == nil) {
        inputView = [[UIPickerView alloc] initWithFrame:CGRectZero];
        inputView.delegate = self;
        inputView.dataSource = self;
        [inputView setShowsSelectionIndicator:YES];
        
    }
    return inputView;
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

#pragma mark - UIPickerViewDataSource

// returns the number of 'columns' to display.
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
#warning input your number of Components
    return 0;
}

// returns the # of rows in each component..
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
#warning input your number of rows in Component
    return 0;
}

@end