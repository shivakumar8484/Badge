//
//  ViewController.swift
//  Demo_badgeCount
//
//  
//

import UIKit

class ViewController: UIViewController {

    
    
    var notificationBadge : MJBadgeBarButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.title = "Badge"
        let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white]
        navigationController?.navigationBar.titleTextAttributes = textAttributes
        
        
        let menuImage   = UIImage(named: "Menu")!
        let cartImage  = UIImage(named: "Group 2568")!
        
        let MenuBarButton   = UIBarButtonItem (image: menuImage, style: .plain, target: self, action: #selector(self.menuBarBtnTap(sender:)))
        
        let CartButton   = UIBarButtonItem (image: cartImage, style: .plain, target: self, action: #selector(self.addToCartBarBtnTap(sender:)))
        
        MenuBarButton.tintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        CartButton.tintColor    = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        navigationItem.leftBarButtonItem = MenuBarButton
        
        
        let customButton = UIButton(type: .custom)
        customButton.frame = CGRect(x: 0, y: 0, width: 35.0, height: 35.0)
        customButton.addTarget(self, action: #selector(self.notificationBtn), for: .touchUpInside)
        customButton.setImage(UIImage(named: "Group 411"), for: .normal) //Group 535
        
        self.notificationBadge = MJBadgeBarButton()
        self.notificationBadge.setup(customButton: customButton)
        
        self.notificationBadge.badgeValue = "0"
        self.notificationBadge.badgeOriginX = 20.0
        self.notificationBadge.badgeOriginY = -4
        
        navigationItem.rightBarButtonItems = [CartButton,notificationBadge]
    }

    //MENU BTN Action
    @objc func menuBarBtnTap(sender: AnyObject){
        
        print("Menu button Tap")
    }
    //MARK:-  addToCartBarBtnTap
    @objc func addToCartBarBtnTap(sender: AnyObject){
         print("cart button Tap")
        
      //  self.notificationBadge.badgeValue = "0"
        
    }
    @objc func notificationBtn() {
        
        print("Notification")
        
    //    self.notificationBadge.badgeValue = "4"
        
        
    }
    
     @IBAction func addBadgeCountNotificationCountBtnTap(_ sender: UIButton) {
        
        self.notificationBadge.badgeValue = "10"
        
    }
    @IBAction func removeNotifiBadgeCount(_ sender: UIButton) {
        self.notificationBadge.badgeValue = "0"
    }
    
    
}

