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
            HolyItem.init(image: nil, color: color, selectedColor: selectedColor, title: "", isMid:true ,classString: "HolyAdd"),
            HolyItem.init(image: nil, color: color, selectedColor: selectedColor, title: "信息", isMid:false ,classString: "HolyMessage"),
            HolyItem.init(image: nil, color: color, selectedColor: selectedColor, title: "我的", isMid:false ,classString: "HolyMine")
        ]
        
        var createItems = [UINavigationController]()
        
        for item in items {
            if let vc = getItemsByItem(item){
                createItems.append(vc)
            }
        }
        setViewControllers(createItems, animated: false)
    }
    

    func getItemsByItem(_ item : HolyItem) -> UINavigationController? {
        let tItem = UITabBarItem.init(title: item.isMid ? "": item.title, image: (item.image == nil) ? nil : UIImage.init(named: item.image!), selectedImage: (item.image == nil) ? nil : UIImage.init(named: item.image!))
        //创建控制器对象
        if let childVcClass = getClassFromString(item.classString) as? UIViewController.Type{
            let vc : UIViewController = childVcClass.init()
            let navigation = UINavigationController.init(rootViewController: vc)
            vc.title = item.title
            navigation.tabBarItem = tItem
            return navigation
        }
        return nil
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
