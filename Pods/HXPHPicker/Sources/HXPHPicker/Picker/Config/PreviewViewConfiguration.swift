//
//  PreviewViewConfiguration.swift
//  HXPHPickerExample
//
//  Created by Slience on 2020/12/29.
//  Copyright © 2020 Silence. All rights reserved.
//

import UIKit

// MARK: 预览界面配置类
public class PreviewViewConfiguration {
    
    /// 背景颜色
    public lazy var backgroundColor : UIColor = {
        return .white
    }()
    
    /// 暗黑风格下背景颜色
    public lazy var backgroundDarkColor : UIColor = {
        return .black
    }()
    
    /// 选择框配置
    public lazy var selectBox: SelectBoxConfiguration = {
        let config = SelectBoxConfiguration.init()
        return config
    }()
    
    /// 视频播放类型
    public var videoPlayType: PhotoPreviewViewController.VideoPlayType = .normal
    
    /// 底部视图相关配置
    public lazy var bottomView: PickerBottomViewConfiguration = {
        let config = PickerBottomViewConfiguration.init()
        config.previewButtonHidden = true
        config.disableFinishButtonWhenNotSelected = false
        #if HXPICKER_ENABLE_EDITOR
        config.editButtonHidden = false
        #endif
        config.showSelectedView = true
        return config
    }()
    
    /// 取消按钮的配置只有当是外部预览时才有效，文字和图片颜色通过 navigationTintColor 设置
    /// 取消按钮类型
    public var cancelType: PhotoPickerViewController.CancelType = .text
    
    /// 取消按钮位置
    public var cancelPosition: PhotoPickerViewController.CancelPosition = .right
    
    /// 取消按钮图片名
    public var cancelImageName: String = "hx_picker_photolist_cancel"
    
    /// 暗黑模式下取消按钮图片名
    public var cancelDarkImageName: String = "hx_picker_photolist_cancel"
    
    public init() { }
}
