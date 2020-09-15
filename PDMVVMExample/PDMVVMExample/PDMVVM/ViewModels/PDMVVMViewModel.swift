//
//  PDMVVMViewModel.swift
//  PDMVVMExample
//
//  Created by Pavel Deminov on 03/02/2019.
//  Copyright © 2019 Pavel Deminov. All rights reserved.
//

import UIKit

class PDMVVMViewModel: NSObject {

    var model: Any?
    
    var title: String? {
        get {
            if let modelInfo = model as? PDMVVMModelInfo {
                if (modelInfo.mvvmTitle != nil) {
                    return modelInfo.mvvmTitle
                } else {
                    return "Model with empty title"
                }
            } else {
                return "Model hasn't found"
            }
        }
    }
    
    class func viewModelsArray(fromArrayOfModels models: [Any]?) -> [PDMVVMViewModel]? {
        var array = [PDMVVMViewModel]()
        for model: Any? in models ?? [] {
            let viewModel = self.init(withModel: model)
            viewModel.model = model
            array.append(viewModel)
            
        }
        return array
    }
    
    required init(withModel model: Any?) {
        super.init()
        self.model = model
         setup()
    }
    
    internal func setup() {
        
    }
    
}