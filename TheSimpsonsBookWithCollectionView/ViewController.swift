//
//  ViewController.swift
//  TheSimpsonsBookWithCollectionView
//
//  Created by T51470 on 17.02.23.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    var simpsonsList = [Simpson]()
    var chosenSimpson : Simpson?
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        let homer = Simpson(simpsonName: "Homer Simpson", simpsonJob: "Nuclear Safety", simpsonAge: 39, simpsonImage: UIImage(named: "homer")!)
        
        let marge = Simpson(simpsonName: "Marge Simpson", simpsonJob: "Housewife", simpsonAge: 36, simpsonImage: UIImage(named: "marge")!)
        
        let bart = Simpson(simpsonName: "Bart Simpson", simpsonJob: "Student", simpsonAge: 10,  simpsonImage: UIImage(named: "bart")!)
        
        let lisa = Simpson(simpsonName: "Lisa Simpson", simpsonJob: "Student", simpsonAge: 8,  simpsonImage: UIImage(named: "lisa")!)
        
        let maggie = Simpson(simpsonName: "Maggie Simpson", simpsonJob: "Baby", simpsonAge: 1,  simpsonImage: UIImage(named: "maggie")!)
        
        let selma = Simpson(simpsonName: "Selma Bouvier", simpsonJob: "Baby", simpsonAge: 41,  simpsonImage: UIImage(named: "selma")!)
        
        let patty = Simpson(simpsonName: "Patty Bouvier", simpsonJob: "Baby", simpsonAge: 41,  simpsonImage: UIImage(named: "patty")!)
        
        let abraham = Simpson(simpsonName: "Abraham Simpson", simpsonJob: "Veteran", simpsonAge: 83,  simpsonImage: UIImage(named: "abraham")!)
        
        let jacqueline = Simpson(simpsonName: "Jacqueline Bouvier", simpsonJob: "Retired", simpsonAge: 80,  simpsonImage: UIImage(named: "jacqueline")!)
        
        simpsonsList.append(homer)
        simpsonsList.append(marge)
        simpsonsList.append(bart)
        simpsonsList.append(lisa)
        simpsonsList.append(maggie)
        simpsonsList.append(abraham)
        simpsonsList.append(patty)
        simpsonsList.append(selma)
        simpsonsList.append(jacqueline)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return simpsonsList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
    
        cell.lvl_Text.text = simpsonsList[indexPath.row].name
        cell.imgViewer.image = simpsonsList[indexPath.row].image

        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        chosenSimpson = simpsonsList[indexPath.row]
        performSegue(withIdentifier: "fromMainToDetails", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "fromMainToDetails" {
            if let destination = segue.destination as? DetailsViewController {
                destination.selectedSimpson = chosenSimpson
            }
        }
    }
}

