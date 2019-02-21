//
//  TestCell.swift
//  XibTableDemo
//
//  Created by Yi Zhang on 2019/2/21.
//  Copyright © 2019 Yi Zhang. All rights reserved.
//

import UIKit

class TestCell: UITableViewCell
{
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupData(testModel: TestModel) {
        iconImageView.image = testModel.icon
        titleLabel.text = testModel.title
        contentLabel.text = testModel.content
        timeLabel.text = testModel.time
    }
    
    // 防止cell从重用池取出时信息不正确
    override func prepareForReuse() {
        super.prepareForReuse()
        iconImageView.image = nil
        titleLabel.text = nil
        contentLabel.text = nil
        timeLabel.text = nil
    }
}

class TestModel
{
    var icon: UIImage?
    var title: String?
    var content: String?
    var time: String?
}
