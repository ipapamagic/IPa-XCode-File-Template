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

@end
