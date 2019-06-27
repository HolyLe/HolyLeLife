//
//  HolyTabbarController.swift
//  HolyleLife
//
//  Created by 麻小亮 on 2019/6/27.
//  Copyright © 2019 Holyle. All rights reserved.
//

import UIKit

struct HolyItems {
    let image : String?
    let title : String?
    let color : UIColor?
    let selectColor : UIColor?
    var isMid = false
    
    mutating func setMid(_ mid :Bool) -> HolyItems {
        isMid = mid
        return self
    }
}

class HolyTabbarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setTabbarItems()
        
        // Do any additional setup after loading the view.
    }
    
    func setTabbarItems(){
        
        let selectedColor : UIColor? = .red
        let color : UIColor? = .black
        
        let items = [
        HolyItems.init(image: nil, title: "生活", color: color, selectColor: selectedColor),
        HolyItems.init(image: nil, title: "直播", color: color, selectColor: selectedColor),
        HolyItems.init(image: nil, title: "添加", color: color, selectColor: selectedColor).setMid(true),
        HolyItems.init(image: nil, title: "信息", color: color, selectColor: selectedColor),
        HolyItems.init(image: nil, title: "我的", color: color, selectColor: selectedColor)
        ]
        
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
