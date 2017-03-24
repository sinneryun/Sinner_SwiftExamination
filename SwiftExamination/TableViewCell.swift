//
//  TableViewCell.swift
//  SwiftExamination
//
//  Created by 刘达浮云 on 2017/3/23.
//  Copyright © 2017年 刘达浮云. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    var TitleString:String?
    var TitleLabel:UILabel?
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
        self.TitleLabel = UILabel()
        
        self.contentView.addSubview(self.TitleLabel!)
        
        setUpviews()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setUpviews() {
        
        
        self.TitleLabel?.text = self.TitleString
        self.TitleLabel?.frame = CGRect(x: 0, y: 10, width: 200, height: 20)
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        setUpviews()
        
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
