//  ViewController.swift
//  PracticeCollectionView
//  Created by Siddhesh Kotavdekar on 11/15/21.
//  Copyright © 2021 Siddhesh Kotavdekar. All rights reserved.


import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myColl : UICollectionView!
    let collectionViewHeaderFooterReuseIdentifier = "MyHeaderFooterClass"

    override func viewDidLoad() {
        super.viewDidLoad()
        myColl.register(UINib(nibName: "MyHeaderFooterClass", bundle: nil), forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier:collectionViewHeaderFooterReuseIdentifier)

        myColl.register(UINib(nibName: "MyHeaderFooterClass", bundle: nil), forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier:collectionViewHeaderFooterReuseIdentifier)
    }
}
//MARK:-UICollection view
extension ViewController : UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 21
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = myColl.dequeueReusableCell(withReuseIdentifier: "CustomeCollectionViewCell", for: indexPath) as! CustomeCollectionViewCell
        return cell
        
    }
}
//MARK:- UICollection View DelegateFlowLayout
extension ViewController : UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

//       if indexPath.item == 0 {
//         return CGSize(width: 300 , height: 300)
//
//       }else{
//         return CGSize(width: 400 , height: 100)
//       }
        return CGSize(width: 400 , height: 100)
     }
}
//MARK:- HeaderView And Footer View
extension ViewController {
    
    func collectionView(_ collectionView: UICollectionView,
                        viewForSupplementaryElementOfKind kind: String,
                        at indexPath: IndexPath) -> UICollectionReusableView {

        switch kind {

        case UICollectionView.elementKindSectionHeader:
            let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: collectionViewHeaderFooterReuseIdentifier, for: indexPath)

            headerView.backgroundColor = UIColor.blue
            return headerView

        case UICollectionView.elementKindSectionFooter:
            let footerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: collectionViewHeaderFooterReuseIdentifier, for: indexPath)

            footerView.backgroundColor = UIColor.green
            return footerView

        default:
            assert(false, "Unexpected element kind")
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width:myColl.frame.width, height: 100.0)
    }
   
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        return CGSize(width: 60.0, height: 30.0)
    }
}
