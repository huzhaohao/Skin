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
        HXH_Skin.skinType = 1;
        self.view.backGroudcolor_SkinKey = "color1key";
        
        let btn:UIButton = UIButton.init();
        btn.frame = CGRect(x: 10, y: 10, width: 2000, height: 200);
        btn.backGroudcolor_SkinKey = "color2key";
        self.view.backgroundColor = UIColor.green;
        self.view.addSubview(btn);
        btn.addTarget(self, action:#selector(didClick(sender:)), for:UIControl.Event.touchUpInside);
        // Do any additional setup after loading the view, typically from a nib.
    }
    @objc func didClick(sender:UIButton) -> Void {
        sender.isSelected = !sender.isSelected ;
        if(sender.isSelected){
            HXH_Skin.skinType = 1;
            self.view.skinFresh();
        }else{
            HXH_Skin.skinType = 0;
            self.view.skinFresh();
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

