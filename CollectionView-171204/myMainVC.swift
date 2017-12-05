//
//  ViewController.swift
//  CollectionView-171204
//
//  Created by Joachim Vetter on 04.12.17.
//  Copyright © 2017 Joachim Vetter. All rights reserved.
//

import UIKit

class myMainVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    var inhalte = Daten()
    @IBOutlet weak var myCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        myCollectionView.delegate = self
        myCollectionView.dataSource = self
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return inhalte.myPuzzles.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let myCurrent = myCollectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! myCollectionViewCell
        myCurrent.myLabel.text = inhalte.myPuzzles[indexPath.item]
        myCurrent.myImageView.image = UIImage(named: inhalte.myScreenshots[indexPath.item]
        )
        return myCurrent
    }
}

