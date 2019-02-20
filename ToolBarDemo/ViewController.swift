//
//  ViewController.swift
//  ToolBarDemo
//
//  Created by Yi Zhang on 2019/2/20.
//  Copyright © 2019 Yi Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{ 
    override func viewDidLoad()
    {
        super.viewDidLoad()
        loadToolBar()
        loadToolBarByUINib()
    }
    
    func loadToolBar()
    {
        let normalToolBar = ToolBar.toolBar(type: .normal)
        normalToolBar?.frame.origin = CGPoint.init(x: 0, y: 100)
        view.addSubview(normalToolBar!)
        
        let editToolBar = ToolBar.toolBar(type: .edit)
        editToolBar?.frame.origin = CGPoint.init(x: 0, y: 200)
        view.addSubview(editToolBar!)
    }
    
    func loadToolBarByUINib()
    {
        // 通过UINib将xib缓存到内存，提升效率
        let toolBarNib = UINib.init(nibName: "ToolBar", bundle: Bundle.main)
        
        let normalToolBar = toolBarNib.instantiate(withOwner: nil, options: nil)[0] as! ToolBar
        normalToolBar.frame.origin = CGPoint.init(x: 0, y: 300)
        view.addSubview(normalToolBar)
        
        let editToolBar = toolBarNib.instantiate(withOwner: nil, options: nil)[1] as! ToolBar
        editToolBar.frame.origin = CGPoint.init(x: 0, y: 400)
        view.addSubview(editToolBar)
    }
}

