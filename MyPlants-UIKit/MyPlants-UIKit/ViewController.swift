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
    @IBOutlet weak var plantImage: UIImageView!
    @IBOutlet weak var plantName: UILabel!
    @IBOutlet weak var plantWaterAmount: UILabel!
    @IBOutlet weak var plantWaterButton: UIButton!
}

class SimpleTableCell: UITableViewCell {
    @IBOutlet weak var plantImageView: UIImageView!
    @IBOutlet weak var plantNameLabel: UILabel!
    @IBOutlet weak var plantSpeciesLabel: UILabel!
}

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var plantsToBeWateredCollectionView: UICollectionView!
    @IBOutlet weak var myPlantsTableView: ContentSizedTableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myPlantsTableView.dataSource = self
        myPlantsTableView.delegate = self
        plantsToBeWateredCollectionView.dataSource = self
        plantsToBeWateredCollectionView.delegate = self
    
        setup()
        
        
    }
    
    private func setup() {
        setupNavBarButton()
    }
    
    private func setupNavBarButton() {
        let addPlantBarButtonView = UIView(frame: CGRect(x: 0, y: 0, width: 90, height: 38))

        let addPlantButton = UIButton()
        addPlantButton.tintColor = UIColor.systemGreen
        addPlantButton.configuration = UIButton.Configuration.borderedProminent()
        addPlantButton.configuration?.cornerStyle = .capsule
        addPlantButton.configuration?.imagePadding = 4
        addPlantButton.configuration?.preferredSymbolConfigurationForImage = .init(scale: .small)
        addPlantButton.setTitle("Plant", for: .normal)
        addPlantButton.setImage(UIImage(systemName: "plus"), for: .normal)
        
        addPlantButton.autoresizesSubviews = true
        addPlantButton.autoresizingMask = [.flexibleWidth , .flexibleHeight]
        addPlantButton.addTarget(self, action: #selector(addPlantButtonTarget), for: .touchUpInside)
        addPlantBarButtonView.addSubview(addPlantButton)
        
        
        let leftBarButton = UIBarButtonItem.init(customView: addPlantBarButtonView)
        self.navigationItem.rightBarButtonItem = leftBarButton
    }
    
    @objc func addPlantButtonTarget() {
        print("You pressed add plant button")
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
       c.plantName.text = "Plant Name"
       c.plantWaterAmount.text = "70 mL"
       c.plantImage.layer.cornerRadius = 75/2
       
       print(c.frame.size)
       return c
   }
}

