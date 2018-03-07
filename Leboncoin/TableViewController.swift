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
        Product(id: 1, name: "Maison traditionnelle", price: 200000, type: "Immobilier", address: "93200 Saint-Denis", date: "07/03/2018", image: "https://www.pajota.be/files/panden/property/photo/maison-a-vendre-a-affligem-30856.jpg", description: "Maison traditionnelle individuelle à rénover, beau potentiel. Elle offre en rez de chaussée une entrée, un salon, un séjour, une cuisine, deux chambres, une salle de bains, un WC. A l'étage : une chambre, un palier, un WC et 2 greniers pour y faire 2 chambres supplementaires. Le tout élevé sur sous sol total. Erigé sur 686 m2 de terrain."),
        Product(id: 2, name: "Gel WC", price: 2, type: "Maison", address: "45000 Orléans", date: "05/03/2018", image: "https://statics.monoprix.fr/course/m_178865_gel-wc-avec-javel.jpg?t=20170909032533", description: "Je vend ce Gel VC avec Javel"),
        Product(id: 3, name: "Aspirateur Dyson", price: 100, type: "Électroménager", address: "75011 Paris", date: "05/03/2018", image: "https://image.darty.com/petit_electromenager/aspirateur-balai_main/aspirateur_balai/dyson_v6_motorhead_s1604084221109A_114055476.jpg",  description: "Aspirateur haute qualité Dyson"),
        Product(id: 4, name: "Nike Air Max", price: 60, type: "Chaussures", address: "78190 Trappes", date: "04/03/2018", image: "https://c.static-nike.com/a/images/t_PDP_1280_v1/f_auto/jjbnri9ca4z0qz4qu7l8/air-max-2017-running-shoe-moTBdprZ.jpg", description: "Produit authentique"),
        Product(id: 5, name: "Mercedes Classe C", price: 9500, type: "Voiture", address: "95500 Gonesse", date: "04/03/2018", image: "https://images.caradisiac.com/logos-ref/modele/modele--mercedes-classe-c-4-coupe/S0-modele--mercedes-classe-c-4-coupe.jpg", description: "Mercedes Classe C 180 2.2 CDI bleuEFFICIENCY phase 2 berline, 4 portes, mise en circulation 05/2012 5 places OPTIONS ET EQUIPEMENTS : Extérieur : - rétroviseurs électriques - vitres électriques - jantes aluminium Intérieur et confort : - ordinateur de bord Gps - volant réglable - bluetooth - radio CD - climatisation"),
        Product(id: 6, name: "Dell ultrabook", price: 600, type: "Ordinateurs", address: "93400 Saint-Ouen", date: "04/03/2018", image: "https://i.dell.com/das/xa.ashx/global-site-design%20web/00000000-0000-0000-0000-000000000000/1/LargePNG?id=Dell/Product_Images/Dell_Client_Products/Notebooks/XPS_Notebooks/XPS_13/hero/laptop-xps-13-generic-hero-504x350-ng.psd", description: "Pc portable ultrabook Dell E7480, -quasiment neuf (presque jamais utilisé) -vendu avec son chargeur d'origine -Processeur : intel core i5-6300@2,5Ghz -Disque dur : 256 Go SSD -Mémoire ram: 16 Go -Carte graphique : intel HD graphics 520 Écran 14 -Usb Type-C -3 Usb 3.0 -Hdmi -Lecteur SD -Webcam + -Bluetooth ... -Autonomie longue durée -Système d'exploitation :Windows 10 -clavier rétroéclairé... -Valeur du produit Neuf : 1800 euros -État comme neuf ! -Prix 700Euro(s)"),
        Product(id: 7, name: "Détecteur DIAGRAL DIAG20AVK Occasion comme NEUF", price: 50, type: "Sécurité", address: "77150 Lésigny", date: "03/03/2018", image: "https://www.01alarme.fr/56-large_default/detecteur-de-mouvement-diagral-diag20avk.jpg", description: "Fonctionne parfaitement Etat impeccable"),
        Product(id: 8, name: "Playmobil - Chambre moderne", price: 15, type: "Jouets", address: "33000 Bordeaux", date: "02/03/2018", image: "https://images-na.ssl-images-amazon.com/images/I/81xICVLuyKL._SX355_.jpg", description: "Vends Playmobil, la chambre moderne, boîte 4284 Complète Sans boîte, sans notice"),
        Product(id: 9, name: "Poussette", price: 100, type: "Équipement bébé", address: "78120 Rambouillet", date: "01/03/2018", image: "https://www.bebeconfort-outlet.fr/media/catalog/product/cache/10/image/800x/e4d92e6aceaad517e7b5c12e0dc06587/t/r/trendi_fullblack_2.jpg", description: "A vendre poussette safety en bonne état")
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
        return 130
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

