//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//


class ___FILEBASENAMEASIDENTIFIER___
{

    class var sharedInstance : ___FILEBASENAMEASIDENTIFIER___ {
        struct Static {
            static var onceToken : dispatch_once_t = 0
            static var instance : ___FILEBASENAMEASIDENTIFIER___? = nil
        }
        dispatch_once(&Static.onceToken) {
                Static.instance = ___FILEBASENAMEASIDENTIFIER___()
        }
        return Static.instance!
    }
}

