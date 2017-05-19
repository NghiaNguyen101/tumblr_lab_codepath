//
//  FullScreenPhotoViewController.swift
//  labCode
//
//  Created by Nghia Nguyen on 5/18/17.
//  Copyright © 2017 Nghia Nguyen. All rights reserved.
//

import UIKit

class FullScreenPhotoViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    var image: UIImage!
    
    @IBOutlet weak var zoomImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        scrollView.delegate = self
        zoomImage.image = image
        let closeButton = UIButton(frame: CGRect(x: 15, y: 30, width: 50, height: 30))
        closeButton.setTitle("Close", for: .normal)
        closeButton.isEnabled = true
        closeButton.tintColor = UIColor.blue
        closeButton.setTitleColor(UIColor.blue, for: .normal)
        closeButton.addTarget(self, action: #selector(close), for: UIControlEvents.touchUpInside)
        self.view.addSubview(closeButton)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return zoomImage
    }
   
    func close() {
        self.dismiss(animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
