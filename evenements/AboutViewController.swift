//
//  AboutViewController.swift
//  evenements
//
//  Created by user188225 on 3/24/21.
//

import UIKit

class AboutViewController: UIViewController {

    
    @IBOutlet weak var userview: UIImageView!
    @IBOutlet weak var aboutview: UIView!
    @IBOutlet weak var backview: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        userview.layer.cornerRadius = 30
        aboutview.layer.cornerRadius = 20
        backview.layer.cornerRadius = 20
        userview.clipsToBounds = true
        aboutview.clipsToBounds = true
        backview.clipsToBounds = true

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
