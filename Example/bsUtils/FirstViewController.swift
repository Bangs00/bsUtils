//
//  ViewController.swift
//  bsUtils
//
//  Created by BangS00 on 06/22/2021.
//  Copyright (c) 2021 BangS00. All rights reserved.
//

import UIKit
import bsUtils

class FirstViewController: UIViewController {
    @IBOutlet weak var thumbnailImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setLayout()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
    }
}

// MARK : - Extension FirstVC
extension FirstViewController {
    func setLayout() {
        // Set Thumbnail Image
        bsUtils.downloadImage(for: "https://user-images.githubusercontent.com/65712275/122930687-28a78b00-d3a7-11eb-9603-a3302c9bc8d8.png", defaultImage: UIImage(named: "DefaultImage")) { image in
            self.thumbnailImageView.image = image
        }
        
    }
}
