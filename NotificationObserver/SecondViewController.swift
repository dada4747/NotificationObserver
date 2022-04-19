//
//  SecondViewController.swift
//  NotificationObserver
//
//  Created by admin on 19/04/22.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func adminClicked(_ sender: Any) {
        NotificationCenter.default.post(name: .admin, object: nil )
    }
    @IBAction func userClicked(_ sender: Any) {
        NotificationCenter.default.post(name: .user, object: nil)
    }
}
