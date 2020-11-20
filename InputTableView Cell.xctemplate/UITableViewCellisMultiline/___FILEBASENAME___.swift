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

class ___FILEBASENAME___: ___VARIABLE_superclass___,UITextViewDelegate {
    
    @IBOutlet weak var dataTextView: UITextView!
    @IBOutlet weak var titleLabel: UILabel!
    weak var delegate:___FILEBASENAME___Delegate?
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
        if selected {
            dataTextView.becomeFirstResponder()
        }
    }
    var parentTableView: UITableView? {
        get {
            var table: UIView? = superview
            while !(table is UITableView) && table != nil {
                table = table?.superview
            }
            
            return table as? UITableView
        }
    }
    //MARK: UITextViewDelegate
    func textViewDidChange(textView: UITextView) {
        
        let size = textView.bounds.size
        let newSize = textView.sizeThatFits(CGSize(width: size.width, height: CGFloat.max))
        
        // Resize the cell only when cell's size is changed
        if size.height != newSize.height {
            UIView.setAnimationsEnabled(false)
            parentTableView?.beginUpdates()
            parentTableView?.endUpdates()
            UIView.setAnimationsEnabled(true)
            
            if let thisIndexPath = parentTableView?.indexPathForCell(self) {
                parentTableView?.scrollToRowAtIndexPath(thisIndexPath, atScrollPosition: .Bottom, animated: false)
            }
        }
        delegate?.on___FILEBASENAME___TextDidChanged(self)
        
    }
    
}
