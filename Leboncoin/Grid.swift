//
//  Grid.swift
//  Leboncoin
//
//  Created by Guillaume Etendard on 01/02/2018.
//  Copyright © 2018 Guillaume Etendard. All rights reserved.
//

import UIKit

class Grid{
    var width: CGFloat
    var height: CGFloat
    
    init(width: CGFloat = 12, height: CGFloat = 12){
        self.width = width
        self.height = height
    }
}


extension UIView{
    private struct Keys {
        static var key : Int = 0
    }
    
    var grid: Grid? {
        get {
            if (objc_getAssociatedObject(self, &UIView.Keys.key) != nil){
                return objc_getAssociatedObject(self, &UIView.Keys.key) as? Grid
            }
            return Grid()
        }
        set {
            objc_setAssociatedObject(self, &UIView.Keys.key, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
    
    
    func addSubviewGrid(UIView: UIView, grid: [String:CGFloat]){
        guard let x = grid["x"], let y = grid["y"], let width = grid["width"], let height = grid["height"]
            else{
                print("error subview")
                return
        }
        
        UIView.frame = CGRect(x: (self.frame.maxX / (self.grid?.width)!) * x, y: (self.frame.maxY / (self.grid?.height)!) * y, width: (self.frame.width / (self.grid?.width)!) * width, height: (self.frame.height / (self.grid?.height)!) * height)
        
        self.addSubview(UIView)
        print("subview added")
    }
}

