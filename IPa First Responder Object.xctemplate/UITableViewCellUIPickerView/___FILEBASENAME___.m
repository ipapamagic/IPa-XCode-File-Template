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
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
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
@end
