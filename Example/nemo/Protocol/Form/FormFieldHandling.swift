//
//  FormFieldHandling.swift
//  nemo
//
//  Created by Andyy Hope on 12/8/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import Foundation

protocol FormFieldHandling {
    
    var delegate: FormCellControllerDelegate? { get set }
    
    func formElementDidUpdate(sender: Any)
    func clearFormField()
    func setInteractionEnabled(_ isInteractionEnabled: Bool)
}
