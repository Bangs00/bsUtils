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
        bsUtils.downloadImage(for: "https://user-images.githubusercontent.com/65712275/122560687-d94a1d80-d07b-11eb-8f1f-168f7145994d.png", defaultImage: UIImage(named: "DefaultImage")) { image in
            self.thumbnailImageView.image = image
        }
        
    }
}
