//
//  ViewController.swift
//  HVACSymbols
//
//  Created by Student PM on 5/6/22.
//




// see if i can implement header into table view




import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var symbolImage: UIImageView!
    
    
    @IBOutlet var symbolName: UILabel!
    
    
    @IBOutlet var centerY: NSLayoutConstraint!
    
    @IBOutlet var widthConstraint: NSLayoutConstraint!
    
    @IBOutlet var heightConstraint: NSLayoutConstraint!
    
    var desiredIndex = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        loadCollectionViewSymbol()
//        loadTableViewSymbol()
        
        changeForSideways(size: view.frame.size)
    }
    
    
   
    func loadCollectionViewSymbol() {
     
        symbolName.text = symbolData[desiredIndex].name
     
        symbolImage.image = symbolData[desiredIndex].image
        
        navigationItem.title = symbolData[desiredIndex].name
        
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        changeForSideways(size: size)
    }
    
    func changeForSideways(size: CGSize) {
        
        if size.width > 700 && size.height > 700 {
            widthConstraint.constant = 400
            heightConstraint.constant = 400
        
        }
        
        
        if size.width > size.height {
        
        centerY.constant = -50
    }
        else {
            
        centerY.constant = 0
            
        }
        
    }
    
    func changeImageSize() {
        
        // if width and height are greater than 700, make image bigger to fit iPad
        
        // otherwise, change to normal
        
        
        // checking size of the screen
        // want image to be bigger depending on the screen size
        // so we are checking the size of the screen, and then making it bigger
        
        
        
    
    
        
        
    }
    
    func loadTableViewSymbol() {
        
        symbolName.text = symbolTerms[desiredIndex].name
        
        symbolImage.image = symbolTerms[desiredIndex].image
        
        navigationItem.title = symbolData[desiredIndex].name
        
    }


 

}


