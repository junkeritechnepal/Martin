//
//  FixedField.swift
//  TigaseSwift
//
//  Created by Andrzej Wójcik on 30.09.2016.
//  Copyright © 2016 Tigase, Inc. All rights reserved.
//

import Foundation

open class FixedField: Field, SingleField {
    
    open var value: String? {
        get {
            return rawValue
        }
        set {
            self.rawValue = newValue;
        }
    }
    
    public override init?(from: Element) {
        super.init(from: from);
    }
    
    public convenience init(name: String, label: String? = nil, desc: String? = nil, required: Bool = false) {
        let elem = Field.createFieldElement(name: name, type: "fixed", label: label, desc: desc, required: required);
        self.init(from: elem)!;
    }
    
}
