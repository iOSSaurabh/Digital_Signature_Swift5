//
//  ViewController.swift
//  Demo_Signature
//
//  Created by Saurabh Sharma on 12/06/20.
//  Copyright © 2020 saurabh. All rights reserved.
//

import UIKit
import SwiftSignatureView

class ViewController: UIViewController, SwiftSignatureViewDelegate {

    @IBOutlet weak var viewSignature: SwiftSignatureView!
    @IBOutlet weak var _imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.viewSignature.delegate = self
    }


    @IBAction func buttonClearAction(_ sender: Any) {
        viewSignature.clear()
    }
    
    @IBAction func buttonOkAction(_ sender: Any) {
        _imageView.image = viewSignature.getCroppedSignature()
    }
    
    public func swiftSignatureViewDidTapInside(_ view: SwiftSignatureView) {
        // noop
    }

    public func swiftSignatureViewDidPanInside(_ view: SwiftSignatureView, _ pan:UIPanGestureRecognizer) {
        // noop
    }
}

