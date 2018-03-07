//
//  SingleProductController.swift
//  Leboncoin
//
//  Created by Guillaume Etendard on 01/02/2018.
//  Copyright © 2018 Guillaume Etendard. All rights reserved.
//

import UIKit
import MapKit

class SingleProductController: UIViewController, UIScrollViewDelegate{
    var product: Product?
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("view loaded")
        
        self.scrollView.delegate = self
        self.scrollView.isScrollEnabled = true
        self.scrollView.contentSize = CGSize(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
        self.scrollView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
        
        if let singleProduct = self.product {
            let title = UILabel()
            title.frame = CGRect()
            title.text = singleProduct.name
            title.textColor = .black
            title.lineBreakMode = .byWordWrapping
            
            let price = UILabel()
            price.frame = CGRect()
            price.text = "\(singleProduct.price) €"
            price.textColor = .orange
            price.lineBreakMode = .byWordWrapping
            
            let type = UILabel()
            type.frame = CGRect()
            type.text = singleProduct.type
            type.textColor = .blue
            type.font = type.font.withSize(14)
            type.lineBreakMode = .byWordWrapping
            
            let address = UILabel()
            address.frame = CGRect()
            address.text = singleProduct.address
            address.textColor = .blue
            address.font = address.font.withSize(14)
            address.lineBreakMode = .byWordWrapping
            
            let date = UILabel()
            date.frame = CGRect()
            date.text = singleProduct.date
            date.textColor = .gray
            date.font = date.font.withSize(12)
            date.lineBreakMode = .byWordWrapping
            
            
            let imageView = UIImageView()
            imageView.downloadedFrom(link: singleProduct.image)
            
            let mapV = MKMapView()
            mapV.mapType = MKMapType.standard
            
            let geoCoder = CLGeocoder()
            geoCoder.geocodeAddressString(singleProduct.address) { (placemarks, error) in
                guard
                    let placemarks = placemarks,
                    let location = placemarks.first?.location
                    else {
                        return
                }
                
                let span = MKCoordinateSpanMake(0.05, 0.05)
                let region = MKCoordinateRegion(center: location.coordinate, span: span)
                mapV.setRegion(region, animated: true)
                
                let annotation = MKPointAnnotation()
                annotation.coordinate = location.coordinate
                mapV.addAnnotation(annotation)
                
                mapV.isZoomEnabled = true
            }
            
            let description = UILabel()
            description.frame = CGRect()
            description.text = singleProduct.description
            description.textColor = .gray
            description.font = description.font.withSize(12)
            description.lineBreakMode = .byWordWrapping
            description.numberOfLines = 0
            
            
            self.scrollView.grid = Grid(width: 12, height: 100)
            
            self.scrollView.addSubviewGrid(UIView: imageView, grid: ["x" : 1, "y": 1, "width": 10, "height": 29])
            
            self.scrollView.addSubviewGrid(UIView: title, grid: ["x" : 1, "y": 30, "width": 10, "height": 5])
            
            self.scrollView.addSubviewGrid(UIView: price, grid: ["x" : 1, "y": 35, "width": 10, "height": 5])
            
            self.scrollView.addSubviewGrid(UIView: date, grid: ["x" : 1, "y": 40, "width": 10, "height": 5])

            
            self.scrollView.addSubviewGrid(UIView: address, grid: ["x" : 1, "y": 45, "width": 10, "height": 5])

            self.scrollView.addSubviewGrid(UIView: mapV, grid: ["x" : 0, "y": 50, "width": 12, "height": 30])
            
            self.scrollView.addSubviewGrid(UIView: description, grid: ["x" : 1, "y": 80, "width": 10, "height": 20])
        }
    }
    
    
    class Artwork: NSObject, MKAnnotation {
        let title: String?
        let locationName: String
        let discipline: String
        let coordinate: CLLocationCoordinate2D
        
        init(title: String, locationName: String, discipline: String, coordinate: CLLocationCoordinate2D) {
            self.title = title
            self.locationName = locationName
            self.discipline = discipline
            self.coordinate = coordinate
            
            super.init()
        }
        
        var subtitle: String? {
            return locationName
        }
    }
}
