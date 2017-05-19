//
//  PhotoDetailsViewController.swift
//  labCode
//
//  Created by Nghia Nguyen on 5/18/17.
//  Copyright © 2017 Nghia Nguyen. All rights reserved.
//

import UIKit

class PhotoDetailsViewController: UIViewController {
    @IBOutlet weak var detailPhoto: UIImageView!
    var photoUrl:URL!
    var image: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        detailPhoto.image = image
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didTap(_ sender: UITapGestureRecognizer) {
        performSegue(withIdentifier: "zoomPhoto", sender: self)
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "zoomPhoto" {
            let destVC = segue.destination as! FullScreenPhotoViewController
            destVC.image = image
        }
    }
    

}
