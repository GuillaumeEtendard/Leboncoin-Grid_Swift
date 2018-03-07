//
//  ItemCell.swift
//  Leboncoin
//
//  Created by Guillaume Etendard on 01/02/2018.
//  Copyright © 2018 Guillaume Etendard. All rights reserved.
//

import UIKit
import Kingfisher

class ItemCell: UITableViewCell{
    func prepareView(data: Product){
        let title = UILabel()
        title.frame = CGRect()
        title.text = data.name
        title.textColor = .blue
        title.lineBreakMode = .byWordWrapping
        
        let price = UILabel()
        price.frame = CGRect()
        price.text = "\(data.price) €"
        price.textColor = .orange
        price.lineBreakMode = .byWordWrapping
        
        let type = UILabel()
        type.frame = CGRect()
        type.text = data.type
        type.textColor = .blue
        type.font = type.font.withSize(14)
        type.lineBreakMode = .byWordWrapping
        
        let address = UILabel()
        address.frame = CGRect()
        address.text = data.address
        address.textColor = .blue
        address.font = address.font.withSize(14)
        address.lineBreakMode = .byWordWrapping
        
        let date = UILabel()
        date.frame = CGRect()
        date.text = data.date
        date.textColor = .gray
        date.font = date.font.withSize(12)
        date.lineBreakMode = .byWordWrapping
        
        self.contentView.grid = Grid(width: 100, height: 14)
        
        
        let leftView = UIView()
        
        let imageView = UIImageView()
        let url = URL(string: data.image)
            let resource = ImageResource(downloadURL: url!)
            imageView.kf.setImage(with: resource)

        self.contentView.addSubviewGrid(UIView: leftView, grid: ["x" : 3, "y": 0, "width": 33, "height": 12])
        leftView.addSubviewGrid(UIView: imageView, grid: ["x" : 0, "y": 0, "width": 12, "height": 12])
        
        let rightView = UIView()
        self.contentView.addSubviewGrid(UIView: rightView, grid: ["x" : 39, "y": 0, "width": 61, "height": 12])
        
        rightView.addSubviewGrid(UIView: title, grid: ["x" : 0, "y": 0, "width": 100, "height": 4])
        rightView.addSubviewGrid(UIView: price, grid: ["x" : 0, "y": 4, "width": 100, "height": 2])
        rightView.addSubviewGrid(UIView: type, grid: ["x" : 0, "y": 6, "width": 100, "height": 2])
        rightView.addSubviewGrid(UIView: address, grid: ["x" : 0, "y": 8, "width": 100, "height": 2])
        rightView.addSubviewGrid(UIView: date, grid: ["x" : 0, "y": 10, "width": 100, "height": 2])
        }
    
}
