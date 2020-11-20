//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

class ___FILEBASENAMEASIDENTIFIER___ :UIStoryboardSegue
{
    var baseViewController:___VARIABLE_baseViewController___? {
        get {
            var source:UIViewController? = sourceViewController
            while source != nil && !(source is ___VARIABLE_baseViewController___) {
                source = source?.parentViewController
            }
           
            
            return source as? ___VARIABLE_baseViewController___
        }
    }
    override func perform()
    {
        guard let source = baseViewController else {
            return
        }
        if let leavingController = source.___VARIABLE_currentViewController___ {
            leavingController.willMoveToParentViewController(nil)
            leavingController.view.removeFromSuperview()
            leavingController.removeFromParentViewController()

        }
        let destination = destinationViewController
        source.___VARIABLE_currentViewController___ = destination
        source.addChildViewController(destination)
        destination.view.translatesAutoresizingMaskIntoConstraints = false
        let viewsDict = ["destView": destination.view]
        
        source.___VARIABLE_containerView___.addSubview(destination.view)
        source.___VARIABLE_containerView___.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|[destView]|",options:NSLayoutFormatOptions(rawValue: 0),metrics:nil,views:viewsDict))
        source.___VARIABLE_containerView___.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|[destView]|",options:NSLayoutFormatOptions(rawValue: 0),metrics:nil,views:viewsDict))
        destination.didMoveToParentViewController(source)
    }
}

