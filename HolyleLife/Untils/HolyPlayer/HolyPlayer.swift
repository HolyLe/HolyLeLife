//
//  HolyPlayer.swift
//  HolyleLife
//
//  Created by 麻小亮 on 2019/6/29.
//  Copyright © 2019 Holyle. All rights reserved.
//

import UIKit


enum HolyPlayerStatus {
    case ready, playing, pause, finish, error
}

class HolyPlayer: NSObject {
    lazy var playerView: HolyPlayerView = {
        return HolyPlayerView.init()
    }()
    
    
    ///数据代理
    var dataSource : HolyPlayerDataSource?
    //事件代理
    var delegate : HolyPlayerDelegate?
    
    /// 当前状态
    var playerStatus : HolyPlayerStatus = .ready
    
    fileprivate var _seekTime :  Double = 0
    

    /// 总时长
    var duration : Double = 0
    
    /// 当前时间
    var currentTime : Double = 0
    
    /// 当前速率
    fileprivate var _currentRate : Double = 0
    
    var currentRate : Double {
        set{
            _currentRate = newValue
        }
        get {
            return _currentRate
        }
    }
    
    
    /// 链接
    var url : String?
    
    //名字
    var name : String?
    
    /// 大小
    var size : Double = 0
    
    
    ///额外数据
    var exterData : Dictionary<String, Any>?
    
   //----------------------- method
    
    var seekTime : Double {
        set {
            _seekTime = newValue
        }
        get{
            return _seekTime
        }
    }
    
    //加载并播放
    func loadAndPlayUrl(_ url : String?) {
        
    }
    
    //只加载不播放
    func loadUrl(_ url : String?) {
        
    }
    
    
    /// 播放
    func play() {
        
    }
    
    /// 暂停
    func pause() {
        
    }
    
    ///结束
    func stop() {
        
    }
    
    
}
