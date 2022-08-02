//
//  ViewController.swift
//  tap gesturesinview
//
//  Created by Ayush Sharma on 02/08/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myLabel: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myLabel.isUserInteractionEnabled = true
       
        let singleTapGesture = UITapGestureRecognizer(target: self, action: #selector(self.singletap))
        singleTapGesture.numberOfTapsRequired = 1
        myLabel.addGestureRecognizer(singleTapGesture)
        
        let doubleTapGesture: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.doubletap))
        doubleTapGesture.numberOfTapsRequired = 2
        myLabel.addGestureRecognizer(doubleTapGesture)

        
        singleTapGesture.require(toFail: doubleTapGesture)
        singleTapGesture.delaysTouchesBegan = true
        doubleTapGesture.delaysTouchesBegan = true
        
        
    }
    
    @objc func singletap() {
        print("Single tapped")
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let thirdViewController = storyBoard.instantiateViewController(withIdentifier: "third") as! ThirdViewController
        self.present(thirdViewController, animated:true, completion:nil)
    }
    
    @objc func doubletap() {
        print("Double Tapped")
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let secondViewController = storyBoard.instantiateViewController(withIdentifier: "secondView") as! SecondViewController
        self.present(secondViewController, animated:true, completion:nil)
    }
}
