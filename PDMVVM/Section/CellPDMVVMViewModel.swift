//
//  CellPDMVVMViewModel.swift
//  PDMVVMExample
//
//  Created by Pavel Deminov on 06/02/2019.
//  Copyright © 2019 Pavel Deminov. All rights reserved.
//

import UIKit

open class CellPDMVVMViewModel: PDMVVMViewModel {
    public var reuseIdentifier: String!
    
    init(withModel model: Any?, withReuseidentifier reuseIdentifier: String) {
        super.init(withModel: model)
        self.reuseIdentifier = reuseIdentifier
    }
    
    required public init(withModel model: Any?) {
        super.init(withModel: model)
    }
    
    required public init() {
        super.init()
    }
}
