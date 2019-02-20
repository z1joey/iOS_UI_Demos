//
//  ViewController.swift
//  UserDemo
//
//  Created by Yi Zhang on 2019/2/21.
//  Copyright © 2019 Yi Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
        let userStoryboard = UIStoryboard.init(name: "User", bundle: nil)
        let profileVC = userStoryboard.instantiateViewController(withIdentifier: ProfileController.storyboardID())
        let profileView = profileVC.view
        profileView?.frame = self.view.frame
        self.view.addSubview(profileView!)
    }
}

extension UIViewController
{
    class func storyboardID() -> String
    {
        return String(describing: self)
    }
}

