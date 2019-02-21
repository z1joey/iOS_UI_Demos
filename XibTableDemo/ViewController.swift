//
//  ViewController.swift
//  XibTableDemo
//
//  Created by Yi Zhang on 2019/2/21.
//  Copyright © 2019 Yi Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    @IBOutlet weak var testTableView: UITableView!    
    var dataArr: [TestModel]? = nil
    let testCellNib = UINib.init(nibName: "TestCell", bundle: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        testTableView.register(testCellNib, forCellReuseIdentifier: "TestCell")
        
        dataArr = Array.init()
        for _ in 0 ..< 20 {
            let testModel = TestModel()
            testModel.icon = nil
            testModel.title = "The wandering earth"
            testModel.content = "Science Fiction"
            testModel.time = "120:00"
            dataArr?.append(testModel)
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArr!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        var cell = tableView.dequeueReusableCell(withIdentifier: "TestCell")
//        if cell == nil {
//            //cell = UITableViewCell.init(style: .default, reuseIdentifier: "TestCell")
//            //cell = Bundle.main.loadNibNamed("TestCell", owner: nil, options: nil)[0] as? TestCell
//            cell = testCellNib.instantiate(withOwner: nil, options: nil)[0] as? TestCell
//        }
//        //cell?.textLabel?.text = "row:\(indexPath.row)-" + dataArr[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "TestCell") as? TestCell
        cell!.setupData(testModel: ((dataArr?[indexPath.row])!))
        return cell!
    }
}

