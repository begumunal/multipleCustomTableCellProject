//
//  MultipleCustomCellController.swift
//  MultipleCustomCell
//
//  Created by Begum Unal on 28.06.2022.
//

import Foundation
import UIKit
import SnapKit

class MultipleCustomCellController : UIViewController{
    
    var models = [Model]()
    
    private var tableView : UITableView {
        let table = UITableView()
        table.register(SimpleTableViewCell.self, forCellReuseIdentifier: SimpleTableViewCell.id)
        return table
    }
    

    override func viewDidLoad(){
        super.viewDidLoad()
        
        configure()
        makeMultipleTable()
        
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        tableView.frame = view.bounds
    }
    func configure(){
        
        view.addSubview(tableView)
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        DispatchQueue.main.async {
            self.view.backgroundColor = .white
            self.tableView.backgroundColor = .yellow
        }
    }
}

extension MultipleCustomCellController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 1{
            let cell = tableView.dequeueReusableCell(withIdentifier: FirstTableViewCell.id, for: indexPath) as! FirstTableViewCell
            return cell
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: SimpleTableViewCell.id, for: indexPath) as! SimpleTableViewCell
            return cell
        }
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250.0
    }
    
    
}
extension MultipleCustomCellController{
    func makeMultipleTable(){
       tableView.snp.makeConstraints { make in
            /*make.top.equalTo(view).offset(10)
            make.left.equalTo(view).offset(10)
            make.right.equalTo(view).offset(-10)
            make.height.greaterThanOrEqualTo(10)//en az 10 veya daha fazla*/
            
           tableView.layer.masksToBounds = true
           tableView.layer.borderColor = UIColor( red: 153/255, green: 153/255, blue:0/255, alpha: 1.0 ).cgColor
           tableView.layer.borderWidth = 2.0
           
           let border = CALayer()
           let width = CGFloat(2.0)
           border.borderColor = UIColor.darkGray.cgColor
           border.frame = CGRect(x: 0, y: tableView.frame.size.height - width, width:  tableView.frame.size.width, height: tableView.frame.size.height)

           border.borderWidth = width
           tableView.layer.addSublayer(border)
           tableView.layer.masksToBounds = true
          
        }
        
       
     
    }

  
}
