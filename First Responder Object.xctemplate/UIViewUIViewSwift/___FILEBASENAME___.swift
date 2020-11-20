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
    var delegate:___FILEBASENAMEASIDENTIFIER___Delegate!
    lazy var _inputView:___VARIABLE_inputViewClass___ = {
        var _inputView = ___VARIABLE_inputViewClass___(frame:.zero)
        return _inputView
    }()
    lazy var toolBar:UIToolbar = {
        let toolBar = UIToolbar()
        toolBar.barStyle = .blackTranslucent
        toolBar.autoresizingMask = .flexibleHeight
        toolBar.sizeToFit()
        var frame = toolBar.frame
        frame.size.height = 44
        toolBar.frame = frame;
        let doneBtn = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(___FILEBASENAMEASIDENTIFIER___.onDone(_:)))
        let flexibleSpaceLeft = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let array = [flexibleSpaceLeft,doneBtn]
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
    override var canBecomeFirstResponder: Bool {
        get {
            return true
        }
    }
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)        

    }
    func onTouch(sender:AnyObject) {
        becomeFirstResponder()
    }

    func onDone(_ sender:AnyObject) {
        //MARK:insert your onDone code
        resignFirstResponder()
    }
}
