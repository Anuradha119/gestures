//
//  ViewController.swift
//  gestures
//
//  Created by Marni Anuradha on 1/20/20.
//  Copyright © 2020 Marni Anuradha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var swipeRightGesture:UISwipeGestureRecognizer!
    var swipeLeftGesture:UISwipeGestureRecognizer!
    @IBOutlet weak var geslabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        swipeRightGesture=UISwipeGestureRecognizer(target: self, action: #selector(swipeGesture))
        swipeRightGesture.direction = .right
        swipeRightGesture.numberOfTouchesRequired=1
                                                                                                                                                                                                                                                                                                                                                                                                                                                      view.addGestureRecognizer(swipeRightGesture)
        // Do any additional setup after loading the view.
        swipeLeftGesture=UISwipeGestureRecognizer(target: self, action: #selector(swipeLeft))
        swipeLeftGesture.direction = .left
        swipeLeftGesture.numberOfTouchesRequired=1
        view.addGestureRecognizer(swipeLeftGesture)
    }
@objc func swipeGesture()
{
    geslabel.text="swipe right"
}
@objc func swipeLeft()
{
    geslabel.text="swipe left"
    }
}

