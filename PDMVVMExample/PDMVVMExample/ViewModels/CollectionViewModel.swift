//
//  MainViewModel.swift
//  PDMVVMExample
//
//  Created by Pavel Deminov on 07/02/2019.
//  Copyright © 2019 Pavel Deminov. All rights reserved.
//

import UIKit

class CollectionViewModel: CollectionPDMVVMViewModel {
    
    override func setup() {
        
        var sections = [PDMVVMSection]()
        
        var section = PDMVVMSection()
        section.viewModel = CellPDMVVMViewModel(withModel:PDMVVMModel(withTitle:"Collection cells" ), withReuseidentifier: "CollectionReusableView")
        
        var viewModels = [CellPDMVVMViewModel]()
        
        var model = PDMVVMModel(withTitle:"one")
        var viewModel = CellPDMVVMViewModel(withModel: model, withReuseidentifier: "CollectionCell")
        viewModels.append(viewModel)
        
        model = PDMVVMModel(withTitle:"One one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one one ")
        viewModel = CellPDMVVMViewModel(withModel: model, withReuseidentifier: "CollectionCell")
        viewModels.append(viewModel)
        
        sections.append(section)
        section.sectionViewModels = viewModels
        
        section = PDMVVMSection()
        section.viewModel = CellPDMVVMViewModel(withModel:PDMVVMModel(withTitle:"View cells" ), withReuseidentifier: "CollectionReusableView")
        
        viewModels = [CellPDMVVMViewModel]()
        
        model = PDMVVMModel(withTitle:"two two two ")
        viewModel = CellPDMVVMViewModel(withModel: model, withReuseidentifier: "ViewCell")
        viewModels.append(viewModel)
        
        model = PDMVVMModel(withTitle:"two two two two two two two two two two two two two two two")
        viewModel = CellPDMVVMViewModel(withModel: model, withReuseidentifier: "ViewCell")
        viewModels.append(viewModel)
        
        sections.append(section)
        section.sectionViewModels = viewModels
        
        
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
    
    override func sizeForItem(at indexPath: IndexPath?) -> CGSize {
           return CGSize(width: 100, height: 300)
    }
    
    override func sizeForHeader(inSection section: Int) -> CGSize {
        return CGSize(width: 100, height: 100)
    }

    override func shouldHeightEqualWidth(_ indexPath: IndexPath?) -> Bool {
        return false
    }
    
    override func scrollDirection() -> UICollectionView.ScrollDirection {
         return .vertical
     }

}
