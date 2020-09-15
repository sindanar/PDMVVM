//
//  MainViewModel.swift
//  PDMVVMExample
//
//  Created by Pavel Deminov on 07/02/2019.
//  Copyright © 2019 Pavel Deminov. All rights reserved.
//

import UIKit

class MainViewModel: CollectionViewModel {
    
    override func setup() {
        
        var sections = [PDMVVMSectionInfo]()
        var section = PDMVVMSection()
        var viewModels = [CellPDMVVMViewModel]()
        
        var model = PDMVVMModel(withTitle:"one")
        var viewModel = CellPDMVVMViewModel(withModel: model, withReuseidentifier: "MainCell")
        viewModels.append(viewModel)
        
        model = PDMVVMModel(withTitle:"One one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one ")
        viewModel = CellPDMVVMViewModel(withModel: model, withReuseidentifier: "MainCell")
        viewModels.append(viewModel)
        
        
        model = PDMVVMModel(withTitle:"one")
        viewModel = CellPDMVVMViewModel(withModel: model, withReuseidentifier: "MainCell")
        viewModels.append(viewModel)
        
        model = PDMVVMModel(withTitle:"one one one one one one one one one one one one one one onef ")
        viewModel = CellPDMVVMViewModel(withModel: model, withReuseidentifier: "MainCell")
        viewModels.append(viewModel)
        
        model = PDMVVMModel(withTitle:"one one one one one one one one one one one one one one onef ")
        viewModel = CellPDMVVMViewModel(withModel: model, withReuseidentifier: "MainCell")
        viewModels.append(viewModel)
        
        model = PDMVVMModel(withTitle:"one one one one one one one one one one one one one one one one one one one one one one one one one one one one one onef ")
        viewModel = CellPDMVVMViewModel(withModel: model, withReuseidentifier: "MainCell")
        viewModels.append(viewModel)
        
        model = PDMVVMModel(withTitle:"one one one one one one one one one one one one one one one ")
        viewModel = CellPDMVVMViewModel(withModel: model, withReuseidentifier: "MainCell")
        //viewModels.append(viewModel)
        
        sections.append(section)
        section.sectionViewModels = viewModels
        
        /*
        section = PDMVVMSection()
        viewModels = [CellPDMVVMViewModel]()
        
        model = PDMVVMModel(withTitle:"two two two ")
        viewModel = CellPDMVVMViewModel(withModel: model, withReuseidentifier: "MainCell")
        viewModels.append(viewModel)
        
        model = PDMVVMModel(withTitle:"two two two two two two two two two two two two two two two")
        viewModel = CellPDMVVMViewModel(withModel: model, withReuseidentifier: "MainCell")
        viewModels.append(viewModel)
        
        sections.append(section)
        section.sectionViewModels = viewModels
        */
        self.sections = sections
    }
    
    override func numberOfItemsInRow(forSection section: Int) -> Int {
        return 1
    }
    
    override func minimumLineSpacingForSection(at section: Int) -> CGFloat {
        return 10.0
    }
    
    override func minimumInteritemSpacingForSection(at section: Int) -> CGFloat {
        return 10.0
    }
    
    override func insetForSection(at section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    }
    
    override func automaticItemSize() -> Bool {
           return true
    }
    
//    override func sizeForItem(at indexPath: IndexPath?) -> CGSize {
//           return CGSize(width: 100, height: 300)
//    }
//
//    override func shouldHeightEqualWidth(_ indexPath: IndexPath?) -> Bool {
//        return true
//    }
    
    override func scrollDirection() -> UICollectionView.ScrollDirection {
         return .vertical
     }
}
