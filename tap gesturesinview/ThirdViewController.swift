//
//  ThirdViewController.swift
//  tap gesturesinview
//
//  Created by Ayush Sharma on 02/08/22.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var lblText: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        lblText.text = "hello there single gesture user"
    
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
