//
//  FormFieldValueStoring.swift
//  nemo
//
//  Created by Andyy Hope on 19/8/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import Foundation

protocol FormFieldValueStoring {
    
    var formValue: Any? { get }
    
    func setFormValue(_ value: Any?)
}
