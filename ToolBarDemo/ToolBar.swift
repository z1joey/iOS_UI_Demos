//
//  ToolBar.swift
//  ToolBarDemo
//
//  Created by Yi Zhang on 2019/2/20.
//  Copyright © 2019 Yi Zhang. All rights reserved.
//

import UIKit

enum ToolBarType
{
    case normal
    case edit
}

class ToolBar: UIView
{
    class func toolBar(type: ToolBarType) -> ToolBar? {
        if type == .normal {
            return Bundle.main.loadNibNamed("ToolBar", owner: nil, options: nil)?[0] as? ToolBar
        } else if type == .edit {
            return Bundle.main.loadNibNamed("ToolBar", owner: nil, options: nil)?[1] as? ToolBar
        } else {
            return nil
        }
    }
    
    func handleEvent()
    {
        //to be overrided
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        handleEvent()
    }
}

class NormalToolBar: ToolBar
{
    override func handleEvent() {
        backgroundColor = UIColor.red
    }
}

class EditToolBar: ToolBar
{
    override func handleEvent() {
        backgroundColor = UIColor.yellow
    }
}
