//
//  HolyTabbarViewController.swift
//  HolyleLife
//
//  Created by 麻小亮 on 2019/6/27.
//  Copyright © 2019 Holyle. All rights reserved.
//

import UIKit

struct HolyItem {
    let image : String?
    let color : UIColor?
    let selectedColor : UIColor?
    let title : String
    let isMid : Bool
    let classString : String
}
class HolyTabbarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setItems()
        // Do any additional setup after loading the view.
    }
    func setItems(){
        let color = UIColor.black
        let selectedColor = UIColor.red
        
        
        let items = [
            HolyItem.init(image: nil, color: color, selectedColor: selectedColor, title: "生活", isMid:false ,classString: "HolyLife"),
            HolyItem.init(image: nil, color: color, selectedColor: selectedColor, title: "直播", isMid:false ,classString: "HolyLive"),
            HolyItem.init(image: nil, color: color, selectedColor: selectedColor, title: "", isMid:false ,classString: "HolyAdd"),
            HolyItem.init(image: nil, color: color, selectedColor: selectedColor, title: "信息", isMid:false ,classString: "HolyMessage"),
            HolyItem.init(image: nil, color: color, selectedColor: selectedColor, title: "我的", isMid:false ,classString: "HolyMine")
        ]
        
        var createItems = [UINavigationController]()
        
        for item in items {
            createItems.append(getItemsByItem(item))
        }
        self.viewControllers = createItems
    }
    

    func getItemsByItem(_ item : HolyItem) -> UINavigationController {
        var naviItem = UINavigationItem.init(title: item.isMid ? "": item.title)
        class customClass: UITableView {
            
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(1)) {
            let myclass = Bundle.main.classNamed(item.classString)
           
        }
        
        
        let navigation = UINavigationController.init(rootViewController: UIViewController.init())
        
        return navigation
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
