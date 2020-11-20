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
    [destination.view setTranslatesAutoresizingMaskIntoConstraints:NO];
    NSDictionary *viewsDict = @{@"destView": destination.view};
    [source.___VARIABLE_containerView___ addSubview:destination.view];
    [source.___VARIABLE_containerView___ addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[destView]|" options:0 metrics:nil views:viewsDict]];
    [source.___VARIABLE_containerView___ addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[destView]|" options:0 metrics:nil views:viewsDict]];
    [destination didMoveToParentViewController:source];
}

@end
