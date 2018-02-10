//
//  ViewController.swift
//  Leboncoin
//
//  Created by Guillaume Etendard on 29/01/2018.
//  Copyright © 2018 Guillaume Etendard. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var products: [Product] = [
        Product(id: 1, name: "Product 1", price: 20, type: "Abc", address: "75001 Paris", date: "2018-01-02", image: "https://photofiles.alphacoders.com/280/28078.jpg", description: "Maison traditionnelle individuelle à rénover, beau potentiel. Elle offre en rez de chaussée une entrée, un salon, un séjour, une cuisine, deux chambres, une salle de bains, un WC. A l'étage : une chambre, un palier, un WC et 2 greniers pour y faire 2 chambres supplementaires. Le tout élevé sur sous sol total. Erigé sur 686 m2 de terrain."),
        Product(id: 2, name: "Product 2", price: 20, type: "Abc", address: "75001 Paris", date: "2018-01-02", image: "https://photofiles.alphacoders.com/280/28078.jpg", description: "Je vend ce jogging de football Nike PSG strike (Produit authentique, Taille S) car il me serre un peu et je ne peux pas le rembourser car je l,ai acheté soldé. Je l,ai acheté à 90Euro(s) euro au lieu de 100Euro(s) à la boutique du PSG à Bercy.(C,est un jogging aeroswift, fait exprès pour jouer au foot, il a une matière très élastique). Ce jogging est neuf [9,5/10]."),
        Product(id: 3, name: "Product 3", price: 20, type: "Abc", address: "Paris", date: "2018-01-02", image: "https://photofiles.alphacoders.com/280/28078.jpg",  description: "Je vend ce jogging de football Nike PSG strike (Produit authentique, Taille S) car il me serre un peu et je ne peux pas le rembourser car je l,ai acheté soldé. Je l,ai acheté à 90Euro(s) euro au lieu de 100Euro(s) à la boutique du PSG à Bercy.(C,est un jogging aeroswift, fait exprès pour jouer au foot, il a une matière très élastique). Ce jogging est neuf [9,5/10]."),
        Product(id: 4, name: "Product 4", price: 20, type: "Abc", address: "Paris", date: "2018-01-02", image: "https://photofiles.alphacoders.com/280/28078.jpg", description: "Je vend ce jogging de football Nike PSG strike (Produit authentique, Taille S) car il me serre un peu et je ne peux pas le rembourser car je l,ai acheté soldé. Je l,ai acheté à 90Euro(s) euro au lieu de 100Euro(s) à la boutique du PSG à Bercy.(C,est un jogging aeroswift, fait exprès pour jouer au foot, il a une matière très élastique). Ce jogging est neuf [9,5/10]."),
        Product(id: 5, name: "Product 5", price: 20, type: "Abc", address: "Paris", date: "2018-01-02", image: "https://photofiles.alphacoders.com/280/28078.jpg", description: "Je vend ce jogging de football Nike PSG strike (Produit authentique, Taille S) car il me serre un peu et je ne peux pas le rembourser car je l,ai acheté soldé. Je l,ai acheté à 90Euro(s) euro au lieu de 100Euro(s) à la boutique du PSG à Bercy.(C,est un jogging aeroswift, fait exprès pour jouer au foot, il a une matière très élastique). Ce jogging est neuf [9,5/10]."),
        Product(id: 6, name: "Product 6", price: 20, type: "Abc", address: "Paris", date: "2018-01-02", image: "https://photofiles.alphacoders.com/280/28078.jpg", description: "Je vend ce jogging de football Nike PSG strike (Produit authentique, Taille S) car il me serre un peu et je ne peux pas le rembourser car je l,ai acheté soldé. Je l,ai acheté à 90Euro(s) euro au lieu de 100Euro(s) à la boutique du PSG à Bercy.(C,est un jogging aeroswift, fait exprès pour jouer au foot, il a une matière très élastique). Ce jogging est neuf [9,5/10]."),
        Product(id: 7, name: "Product 7", price: 20, type: "Abc", address: "Paris", date: "2018-01-02", image: "https://photofiles.alphacoders.com/280/28078.jpg", description: "Je vend ce jogging de football Nike PSG strike (Produit authentique, Taille S) car il me serre un peu et je ne peux pas le rembourser car je l,ai acheté soldé. Je l,ai acheté à 90Euro(s) euro au lieu de 100Euro(s) à la boutique du PSG à Bercy.(C,est un jogging aeroswift, fait exprès pour jouer au foot, il a une matière très élastique). Ce jogging est neuf [9,5/10]."),
        Product(id: 8, name: "Product 8", price: 20, type: "Abc", address: "Paris", date: "2018-01-02", image: "https://photofiles.alphacoders.com/280/28078.jpg", description: "Je vend ce jogging de football Nike PSG strike (Produit authentique, Taille S) car il me serre un peu et je ne peux pas le rembourser car je l,ai acheté soldé. Je l,ai acheté à 90Euro(s) euro au lieu de 100Euro(s) à la boutique du PSG à Bercy.(C,est un jogging aeroswift, fait exprès pour jouer au foot, il a une matière très élastique). Ce jogging est neuf [9,5/10]."),
        Product(id: 9, name: "Product 9", price: 20, type: "Abc", address: "Paris", date: "2018-01-02", image: "https://photofiles.alphacoders.com/280/28078.jpg", description: "Je vend ce jogging de football Nike PSG strike (Produit authentique, Taille S) car il me serre un peu et je ne peux pas le rembourser car je l,ai acheté soldé. Je l,ai acheté à 90Euro(s) euro au lieu de 100Euro(s) à la boutique du PSG à Bercy.(C,est un jogging aeroswift, fait exprès pour jouer au foot, il a une matière très élastique). Ce jogging est neuf [9,5/10].")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.sectionHeaderHeight = 40
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: 40)
        headerView.backgroundColor = UIColor(red:0.98, green:0.98, blue:0.98, alpha:1.0)
        let text = UILabel()
        text.frame = CGRect()
        text.text = "\(self.products.count) annonce\(self.products.count > 1 ? "s" : "")"
        text.textColor = .gray
        text.lineBreakMode = .byWordWrapping
        headerView.addSubviewGrid(UIView: text, grid: ["x" : 1, "y": 0, "width": 12, "height": 12])
        return headerView
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("section: \(indexPath.section)")
        print("row: \(indexPath.row)")
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.products.count
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell", for: indexPath) as! ItemCell
        
        for view in cell.contentView.subviews {
            view.removeFromSuperview()
        }
        cell.prepareView(data: self.products[indexPath.row])
    
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowProduct"{
            let controller = segue.destination as! SingleProductController
            
            let index = self.tableView.indexPathForSelectedRow?.row
            
            controller.product = self.products[index!]
        }
    }
}

extension UIImageView {
    func downloadedFrom(url: URL, contentMode mode: UIViewContentMode = .scaleAspectFit) {
        contentMode = mode
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard
                let httpURLResponse = response as? HTTPURLResponse, httpURLResponse.statusCode == 200,
                let mimeType = response?.mimeType, mimeType.hasPrefix("image"),
                let data = data, error == nil,
                let image = UIImage(data: data)
                else { return }
                DispatchQueue.main.async() {
                    self.image = image
                }
            }.resume()
    }
    func downloadedFrom(link: String, contentMode mode: UIViewContentMode = .scaleAspectFit) {
        guard let url = URL(string: link) else { return }
        downloadedFrom(url: url, contentMode: mode)
    }
}

