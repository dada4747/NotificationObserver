//
//  ViewController.swift
//  NotificationObserver
//
//  Created by admin on 19/04/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var img: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(userfunc(notification:)), name: .user, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(adminfunc(notification:)), name: .admin, object: nil)
    }
   @objc func userfunc(notification: Notification){
       label.text = "user"
       img.image = UIImage.init(imageLiteralResourceName: "user.png")
        
    }
    
   @objc func adminfunc(notification: Notification){
       label.text = "admin"
       img.image = UIImage.init(imageLiteralResourceName: "admin.jpg")
    }
    @IBAction func gotoSelection(_ sender: UIButton) {
        let second = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        self.navigationController?.pushViewController(second, animated: true)
    }
    
}
extension Notification.Name{
    static let user = Notification.Name("user")
    static let admin = Notification.Name("admin")
}
