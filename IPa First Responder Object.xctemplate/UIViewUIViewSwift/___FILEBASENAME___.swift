//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol ___FILEBASENAMEASIDENTIFIER___Delegate {
    <#methods#>
}

class ___FILEBASENAMEASIDENTIFIER___ :___VARIABLE_superclass___ {
    lazy var _inputView:___VARIABLE_inputViewClass___ = {
        var _inputView = ___VARIABLE_inputViewClass___(frame:CGRectZero)
        return _inputView
    }()
    lazy var toolBar:UIToolbar = {
        let toolBar = UIToolbar()
        toolBar.barStyle = .BlackTranslucent
        toolBar.autoresizingMask = .FlexibleHeight
        toolBar.sizeToFit()
        var frame = toolBar.frame
        frame.size.height = 44
        toolBar.frame = frame;
        let doneBtn = UIBarButtonItem(title: "Done", style: .Done, target: self, action: "onDone:")
        let flexibleSpaceLeft = UIBarButtonItem(barButtonSystemItem: .FlexibleSpace, target: nil, action: nil)
        let array:[AnyObject] = [flexibleSpaceLeft,doneBtn]
        toolBar.items = array
        return toolBar
        }()
    override var inputView:UIView! {
        get {
            return _inputView as UIView
            
        }
    }
    override var inputAccessoryView:UIView! {
        get {
            return toolBar as UIView
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()

    }
    override func canBecomeFirstResponder() -> Bool {
        return true
    }
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)        

    }
    func onTouch(sender:AnyObject) {
        becomeFirstResponder()
    }

    func onDone(sender:AnyObject) {
        //MARK:insert your onDone code
        resignFirstResponder()
    }
}
