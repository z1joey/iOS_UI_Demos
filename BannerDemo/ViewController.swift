//
//  ViewController.swift
//  BannerDemo
//
//  Created by Yi Zhang on 2019/2/20.
//  Copyright © 2019 Yi Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        let testBundle = Bundle.init(path: Bundle.main.path(forResource: "TestBundle", ofType: "bundle")!)
        let imagePath = testBundle?.imagePath("mine", ofType: "png")
        let image = UIImage.init(contentsOfFile: imagePath!)
        imageView.image = image
    }
}

extension Bundle
{
    func imagePath(_ forResource: String?, ofType: String?) -> String?
    {
        guard forResource != nil else {
            return nil
        }
        guard ofType != nil else {
            return nil
        }
        var scaleStr: String? = "@2x"
        if UIScreen.main.scale == 3.0 {
            scaleStr = "@3x"
        } else if UIScreen.main.scale == 1.0 {
            scaleStr = "@1x"
        }
        // path返回Nil
        // TODO: 修复bug
        var path = self.path(forResource: forResource! + scaleStr!, ofType: ofType)
        if path == nil {
            path = self.path(forResource: forResource, ofType: ofType)
        }
        return path
    }
}

