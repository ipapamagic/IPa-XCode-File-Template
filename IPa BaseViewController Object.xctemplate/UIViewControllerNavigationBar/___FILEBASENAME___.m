//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import "___FILEBASENAME___.h"
#define NOTIFICATION_BAR_TITLE_KEY @"<#Title Noti Key#>"
#define NOTIFICATION_BAR_CENTERITEM_KEY @"<#Center Noti Key#>"
#define NOTIFICATION_BAR_LEFTITEM_KEY @"<#Left Noti Key#>"
#define NOTIFICATION_BAR_RIGHTITEM_KEY @"<#Right Noti Key#>"
@interface ___FILEBASENAMEASIDENTIFIER___ ()

@end

@implementation ___FILEBASENAMEASIDENTIFIER___
{
    id navigationBarNotiObserver;
    __weak IBOutlet UIView *navigationView;
    __weak IBOutlet UILabel *navigationTitleLabel;
    __weak UIView *navigationLeftButton;
    __weak UIView *navigationRightButton;
    __weak UIView *navigationCenterItem;
    __weak IBOutlet UIButton *mainMenuBtn;
}
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    navigationBarNotiObserver = [[NSNotificationCenter defaultCenter] addObserverForName:<#(NSString *)#> object:nil queue:nil usingBlock:^(NSNotification* noti) {
        NSDictionary *userInfo = noti.userInfo;
        if (userInfo[NOTIFICATION_BAR_TITLE_KEY] != nil) {
            [navigationTitleLabel setText:userInfo[NOTIFICATION_BAR_TITLE_KEY]];
        }
        else {
            [navigationTitleLabel setText:@""];
        }
        if (userInfo[NOTIFICATION_BAR_CENTERITEM_KEY] != nil) {
            if (userInfo[NOTIFICATION_BAR_CENTERITEM_KEY] != navigationCenterItem) {
                if (navigationCenterItem != nil) {
                    [navigationCenterItem removeFromSuperview];
                    navigationCenterItem = nil;
                }
                navigationCenterItem = userInfo[NOTIFICATION_BAR_CENTERITEM_KEY];
                [navigationCenterItem setTranslatesAutoresizingMaskIntoConstraints:NO];
                
                [navigationView addSubview:navigationCenterItem];
                [navigationView addConstraint:[NSLayoutConstraint constraintWithItem:navigationCenterItem attribute:NSLayoutAttributeCenterX  relatedBy:NSLayoutRelationEqual toItem:navigationView attribute:NSLayoutAttributeCenterX multiplier:1 constant:0]];
                [navigationView addConstraint:[NSLayoutConstraint constraintWithItem:navigationCenterItem attribute:NSLayoutAttributeCenterY  relatedBy:NSLayoutRelationEqual toItem:navigationView attribute:NSLayoutAttributeCenterY multiplier:1 constant:0]];
            }
        }
        else {
            if (navigationCenterItem != nil) {
                [navigationCenterItem removeFromSuperview];
                navigationCenterItem = nil;
            }
        }
        
        [mainMenuBtn setHidden:NO];
        if (userInfo[NOTIFICATION_BAR_LEFTITEM_KEY] != nil  ) {
            [mainMenuBtn setHidden:YES];
            if (userInfo[NOTIFICATION_BAR_LEFTITEM_KEY] != navigationLeftButton) {
                if (navigationLeftButton != nil) {
                    [navigationLeftButton removeFromSuperview];
                    navigationLeftButton = nil;
                }
                navigationLeftButton = userInfo[NOTIFICATION_BAR_LEFTITEM_KEY];
                [navigationLeftButton setTranslatesAutoresizingMaskIntoConstraints:NO];
                [navigationView addSubview:navigationLeftButton];
                NSDictionary *viewDict = @{@"LeftButton": navigationLeftButton,@"NavigationView":navigationView};
                
                [navigationView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[LeftButton]" options:0 metrics:nil views:viewDict]];
                [navigationView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:[NSString stringWithFormat:@"H:[LeftButton(%f)]",navigationLeftButton.frame.size.width] options:0 metrics:nil views:viewDict]];
                [navigationView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:[NSString stringWithFormat:@"V:[LeftButton(%f)]",navigationLeftButton.frame.size.height] options:0 metrics:nil views:viewDict]];
                [navigationView addConstraint:[NSLayoutConstraint constraintWithItem:navigationLeftButton attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:navigationView attribute:NSLayoutAttributeCenterY multiplier:1.f constant:0.f]];
            }
            
        }
        else {
            if (navigationLeftButton != nil) {
                [navigationLeftButton removeFromSuperview];
                navigationLeftButton = nil;
            }
        }
        
        if (userInfo[NOTIFICATION_BAR_RIGHTITEM_KEY] != nil) {
            
            if (userInfo[NOTIFICATION_BAR_RIGHTITEM_KEY] != navigationRightButton) {
                if (navigationRightButton != nil) {
                    
                    [navigationRightButton removeFromSuperview];
                    navigationRightButton = nil;
                    
                    
                }
                navigationRightButton = userInfo[NOTIFICATION_BAR_RIGHTITEM_KEY];
                [navigationRightButton setTranslatesAutoresizingMaskIntoConstraints:NO];
                [navigationView addSubview:navigationRightButton];
                NSDictionary *viewDict = @{@"RightButton": navigationRightButton,@"NavigationView":navigationView};
                [navigationView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:[RightButton]-0-|" options:0 metrics:nil views:viewDict]];
                [navigationView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:[NSString stringWithFormat:@"H:[RightButton(%f)]",navigationRightButton.frame.size.width] options:0 metrics:nil views:viewDict]];
                [navigationView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:[NSString stringWithFormat:@"V:[RightButton(%f)]",navigationRightButton.frame.size.height] options:0 metrics:nil views:viewDict]];
                [navigationView addConstraint:[NSLayoutConstraint constraintWithItem:navigationRightButton attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:navigationView attribute:NSLayoutAttributeCenterY multiplier:1.f constant:0.f]];
                
            }
        }
        else {
            if (navigationRightButton != nil) {
                
                [navigationRightButton removeFromSuperview];
                navigationRightButton = nil;
                
                
            }
        }
        
    }];
    
    
}
-(void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    [[NSNotificationCenter defaultCenter] removeObserver:navigationBarNotiObserver];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - UIStoryboard
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:<#Embeded Segue Name#>]) {
        self.___VARIABLE_currentViewController___ = segue.destinationViewController;
    }
}
@end
