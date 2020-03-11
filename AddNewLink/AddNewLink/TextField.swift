//
//  TextField.swift
//  AddNewLink
//
//  Created by Kyle Wilson on 2020-03-10.
//  Copyright © 2020 Xcode Tips. All rights reserved.
//

import Foundation
import UIKit

class TextField: UITextField {
    let padding = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 0)
    
    override open func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override open func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
}
