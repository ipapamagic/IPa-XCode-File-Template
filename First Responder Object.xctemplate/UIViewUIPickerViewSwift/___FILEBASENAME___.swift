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

class ___FILEBASENAMEASIDENTIFIER___ :___VARIABLE_superclass___,UIPickerViewDelegate,UIPickerViewDataSource {
    var delegate:___FILEBASENAMEASIDENTIFIER___Delegate!
    lazy var pickerView:UIPickerView = {
        var _pickerView = UIPickerView(frame:.zero)
        _pickerView.delegate = self
        _pickerView.dataSource = self
        _pickerView.showsSelectionIndicator = true
        return _pickerView
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
            return pickerView as UIView
            
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
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
    func onTouch(sender:AnyObject) {
        becomeFirstResponder()
    }
    
    func onDone(_ sender:AnyObject) {
        //MARK:insert your onDone code
        resignFirstResponder()
    }
    //MARK: UIPickerViewDataSource
    // returns the number of 'columns' to display.
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // returns the # of rows in each component..
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 0
    }
    //MARK: UIPickerViewDelegate
    // returns width of column and height of row for each component.
    func pickerView(_ pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat
    {
        return 100
    }
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat
    {
        return 44
    }
    
    // these methods return either a plain NSString, a NSAttributedString, or a view (e.g UILabel) to display the row for the component.
    // for the view versions, we cache any hidden and thus unused views and pass them back for reuse.
    // If you return back a different object, the old one will be released. the view will be centered in the row rect
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        return ""
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
    }
}
