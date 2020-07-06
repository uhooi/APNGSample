//
//  ViewController.swift
//  APNGSample
//
//  Created by uhooi on 2020/07/06.
//  Copyright © 2020 THE Uhooi. All rights reserved.
//

import UIKit
import APNGKit

final class ViewController: UIViewController {
    
    @IBOutlet private weak var apngImageView: APNGImageView! {
        willSet {
            newValue.image = APNGImage(urlString: "https://upload.wikimedia.org/wikipedia/commons/1/14/Animated_PNG_example_bouncing_beach_ball.png")
            newValue.startAnimating()
        }
    }
}
