//
//  UIView_Extension.swift
//  HXH_Skin
//
//  Created by huzhaohao on 2019/4/28.
//  Copyright © 2019 huzhaohao. All rights reserved.
//

import Foundation
import UIKit


//extension UIView {
//    //    // 改进写法【推荐】
//        struct RuntimeKey {
//            static let jkKey = UnsafeRawPointer.init(bitPattern: "JKKey".hashValue)
//            /// ...其他Key声明
//        }
//
//        public var jkPro: String? {
//            set {
//                objc_setAssociatedObject(self, UIView.RuntimeKey.jkKey!, newValue, .OBJC_ASSOCIATION_COPY_NONATOMIC)
//            }
//
//            get {
//                return  objc_getAssociatedObject(self, UIView.RuntimeKey.jkKey!) as? String
//            }
//        }
//}

extension UIView {
    
    struct XKeys {
        static let backGroudcolor_SkinKey:UnsafeRawPointer! = UnsafeRawPointer.init(bitPattern: "backGroudcolor_SkinKey".hashValue)
        static let textColor_SkinKey : String = "textColor_SkinKey"
    }
    
    var backGroudcolor_SkinKey: String?{
        get{
            return (objc_getAssociatedObject(self, XKeys.backGroudcolor_SkinKey)  as? String)
        }
        
        set{
            objc_setAssociatedObject(self, XKeys.backGroudcolor_SkinKey, newValue, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
    
    @objc public func backGroudColorKey(key:String) {
        // TODO: - 提醒
        backGroudcolor_SkinKey = key
//        print(backGroudcolor_SkinKey)
        self.backgroundColor = HXH_Skin.color(key: backGroudcolor_SkinKey!);
    }
    
   @objc public  func skinFresh() -> Void {
        
       if(backGroudcolor_SkinKey?.count ?? 0 > 0){
           self.backgroundColor = HXH_Skin.color(key: backGroudcolor_SkinKey!);
       }
       for subview in self.subviews {
            subview.skinFresh();
       }
    }
}

extension UILabel {

    var textColor_SkinKey: String?{
        get{
            return (objc_getAssociatedObject(self, XKeys.textColor_SkinKey)  as? String)
        }
        
        set{
            objc_setAssociatedObject(self, XKeys.textColor_SkinKey, newValue, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
    
    @objc public func textColorKey(key:String) {
        textColor_SkinKey = key
//        print(textColor_SkinKey)
        self.backgroundColor = HXH_Skin.color(key: textColor_SkinKey!);
    }
    
    override public func skinFresh() -> Void {
        
        if(backGroudcolor_SkinKey?.count ?? 0 > 0){
            self.backgroundColor = HXH_Skin.color(key: backGroudcolor_SkinKey!);
        }
        
        if(textColor_SkinKey?.count ?? 0 > 0){
            self.textColor = HXH_Skin.color(key: textColor_SkinKey!);
        }
    }
}
