//
//  MainVC.swift
//  Rx_TableView
//
//  Created by DohyunKim on 2020/08/10.
//  Copyright © 2020 DohyunKim. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
import RxDataSources

class MainVC: UIViewController {
    
    @IBOutlet weak var mainTableView: UITableView!
    
    let viewModel = MainViewModel()
    let cell = FoodCell()
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func bind() {
        Observable.from(viewModel.foodModel.food)
            .bind(to: mainTableView.rx.items(cellIdentifire: "foodCell", cellType: cell.self)) {
                (Food: String, cell: FoodCell) in
                cell.foodLabel.text = Food
        }.disposed(by: disposeBag)
        
    }
}

