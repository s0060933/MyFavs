//
//  DetailViewController.swift
//  MyBand1
//
//  Created by cis280 on 10/2/17.
//  Copyright © 2017 Rock Valley College. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
//********1) Remove label from DetailViewController
//            -  add an ImageView
//            -  create outlet of imageview and name productImageView
    
//********2) Comment out (1) line below
  //  @IBOutlet weak var detailDescriptionLabel: UILabel!

    @IBOutlet weak var productImageView: UIImageView!

    func configureView() {
        // Update the user interface for the detail item.
        if detailItem != nil {
//********3) Update (6) lines of code below
            if let photo = productImageView {
                photo.image = UIImage(named:detailItem!)
            }
        }else{
             productImageView.image = UIImage(named:"Main.png")
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

//********4) Update next line of code below
    var detailItem: String? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

