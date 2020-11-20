//
//  ___FILEBASENAME___TableViewCell.swift
//
//  Created by IPa Chen on 2015/9/22.
//  Copyright © 2015年 SleepNova. All rights reserved.
//

import UIKit
@objc protocol ___FILEBASENAME___Delegate {
    func on___FILEBASENAME___TextDidChanged(cell: ___FILEBASENAME___)
}
class ___FILEBASENAME___: ___VARIABLE_superclass___ ,UITextFieldDelegate{
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var inputField: UITextField!
    var delegate:___FILEBASENAME___Delegate?
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
        if selected {
            inputField.becomeFirstResponder()
        }
    }
    
    //MARK: UITextFieldDelegate
    func textFieldDidEndEditing(textField: UITextField) {
        delegate?.on___FILEBASENAME___TextDidChanged(self)
    }
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        inputField.resignFirstResponder()
        return true
    }
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        // allow backspace
        if (string.characters.count == 0)
        {
            return true
        }
        
        // Prevent invalid character input, if keyboard is numberpad
        if (textField.keyboardType == .NumberPad)
        {
            if let _ = string.rangeOfCharacterFromSet(NSCharacterSet.decimalDigitCharacterSet().invertedSet)
            {
                // BasicAlert(@"", @"This field accepts only numeric entries.");
                return false
            }
        }
        return true
    }
}
