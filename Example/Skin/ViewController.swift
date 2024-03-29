//
//  ViewController.swift
//  Skin
//
//  Created by huzhaohao on 04/28/2019.
//  Copyright (c) 2019 huzhaohao. All rights reserved.
//

import UIKit
import Skin
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        HXH_Skin.skinType = 1
        self.view.backGroudColorKey(key: "color1key")
        let btn:UIButton = UIButton.init();
        btn.frame = CGRect(x: 10, y: 10, width: 2000, height: 200);
        btn.backGroudColorKey(key: "color2key")
        self.view.addSubview(btn);
        btn.addTarget(self, action:#selector(didClick(sender:)), for:UIControl.Event.touchUpInside);
        
        NotificationCenter.default.addObserver(self, selector: #selector(skinNotification), name: NSNotification.Name("skinType"), object: nil)
    }
    
    @objc func skinNotification() {
        print(#function)
        self.view.skinFresh()
    }
    
    @objc func didClick(sender:UIButton) -> Void {
        sender.isSelected = !sender.isSelected ;
        print(sender.isSelected)
        if(sender.isSelected){
            HXH_Skin.skinType = 1;
//            self.view.skinFresh();
        }else{
            HXH_Skin.skinType = 0;
//            self.view.skinFresh();
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


