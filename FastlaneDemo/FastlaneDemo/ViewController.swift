//
//  ViewController.swift
//  FastlaneDemo
//
//  Created by Zack.Zhang on 16/1/2020.
//  Copyright © 2020 Zack.Zhang. All rights reserved.
//

import UIKit
import Toast_Swift

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let versionNumber = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as! String
        let buildNumber = Bundle.main.infoDictionary?["CFBundleVersion"] as! String
        label.text = "Version: " + versionNumber + "\n" + "Build number: " + buildNumber
    }

    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        #if QA
        view.makeToast("QA")
        #else
        view.makeToast("Product")
        #endif
    }
}

