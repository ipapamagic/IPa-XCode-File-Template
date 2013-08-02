//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

#import "___FILEBASENAME___.h"
#import "___VARIABLE_baseViewController___.h"
@implementation ___FILEBASENAMEASIDENTIFIER___
-(___VARIABLE_baseViewController___*)baseViewController
{
    UIViewController *source = self.sourceViewController;
    
    while (source != nil && ![[source class] isSubclassOfClass:[___VARIABLE_baseViewController___ class]]) {
        source = source.parentViewController;
    }
    
    return (___VARIABLE_baseViewController___*)source;
    
}
-(void)perform
{
    ___VARIABLE_baseViewController___ *source = [self baseViewController];

    if (source == nil) {
        return;
    }
    if (source.___VARIABLE_currentViewController___ != nil) {
        UIViewController *leavingController = source.___VARIABLE_currentViewController___;
        [leavingController willMoveToParentViewController:nil];
        [leavingController.view removeFromSuperview];
        [leavingController removeFromParentViewController];
    }
    UIViewController *destination = self.destinationViewController;
    source.___VARIABLE_currentViewController___ = destination;
    [source addChildViewController:destination];
    [source.___VARIABLE_containerView___ addSubview:destination.view];
    [destination.view setFrame:(CGRect) {
        .origin = CGPointZero,
        .size = source.___VARIABLE_containerView___.frame.size,
    }];
    [destination didMoveToParentViewController:source];
}

@end
