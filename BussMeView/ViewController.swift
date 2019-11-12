//
//  ViewController.swift
//  BussMeView
//
//  Created by Mulyanti Law on 11/11/19.
//  Copyright © 2019 Mulyanti Law. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timerCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timerCollectionView.delegate = self
        timerCollectionView.dataSource = self
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 63
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "timerCell", for: indexPath) as! timerCollectionViewCell
        
        if indexPath.row < 3 {
            cell.lblTime.text = ""
        } else if indexPath.row > 61 {
            cell.lblTime.text = ""
        } else {
            cell.lblTime.text = "\(indexPath.row - 2)"
        }
        
        return cell
    }
    
        
    
}


