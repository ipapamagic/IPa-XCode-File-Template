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
static ___FILEBASENAMEASIDENTIFIER___ *instance;
+ (id)allocWithZone:(NSZone *)zone {
    @synchronized(self) {
        if (instance == nil) {
            instance = [super allocWithZone:zone];
            return instance;  // assignment and return on first allocation
        }
    }
    return nil; // on subsequent allocation attempts return nil
}
+ (id)getInstance
{
    @synchronized(self) {
        if (instance == nil){
            instance = [[___FILEBASENAMEASIDENTIFIER___ alloc] init];
        }
    }
    
    return instance;
}
- (id)copyWithZone:(NSZone *)zone
{
    return self;
}
-(id)init
{
    self = [super init];
    
    return self;
}
@end
