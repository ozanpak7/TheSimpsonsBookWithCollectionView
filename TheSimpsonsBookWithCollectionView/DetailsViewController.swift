//
//  DetailsViewController.swift
//  TheSimpsonsBookWithCollectionView
//
//  Created by T51470 on 19.02.23.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var imgDetailViewer: UIImageView!
    
    @IBOutlet weak var lbl_Name: UILabel!
    @IBOutlet weak var lbl_Job: UILabel!
    @IBOutlet weak var lbl_Age: UILabel!
    
    var selectedSimpson : Simpson?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbl_Name.text = selectedSimpson?.name
        lbl_Age.text = "\(selectedSimpson?.age ?? 0)"
        lbl_Job.text = selectedSimpson?.job
        
        imgDetailViewer.image = selectedSimpson?.image
        
    }

}
