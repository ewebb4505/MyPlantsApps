//
//  ViewController.swift
//  MyPlants-UIKit
//
//  Created by Evan Webb on 10/23/22.
//

import UIKit

final class ContentSizedTableView: UITableView {
    override var contentSize:CGSize {
        didSet {
            invalidateIntrinsicContentSize()
        }
    }
    override var intrinsicContentSize: CGSize {
        layoutIfNeeded()
        return CGSize(width: UIView.noIntrinsicMetric, height: contentSize.height)
    }
}

class SimpleCollCell: UICollectionViewCell {
    
    @IBOutlet weak var theLabel: UILabel!
}

class SimpleTableCell: UITableViewCell {
    @IBOutlet weak var plantImageView: UIImageView!
    @IBOutlet weak var plantNameLabel: UILabel!
    @IBOutlet weak var plantSpeciesLabel: UILabel!
    
}

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var tableView: ContentSizedTableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
        collectionView.dataSource = self
        collectionView.delegate = self
        
        print(tableView.frame.size)
    }

    func numberOfSections(in tableView: UITableView) -> Int {
           return 1
       }
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return 30
   }
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let c = tableView.dequeueReusableCell(withIdentifier: "SimpleTableCell", for: indexPath) as! SimpleTableCell
       c.plantNameLabel.text = "Plant Name Here"
       c.plantSpeciesLabel.text = "Plant Species Here"
       c.plantImageView.layer.cornerRadius = 50/2
       return c
   }
   func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       return 10
   }
   func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       let c = collectionView.dequeueReusableCell(withReuseIdentifier: "SimpleCollCell", for: indexPath) as! SimpleCollCell
       c.theLabel.text = "\(indexPath.item)"
       return c
   }
}

