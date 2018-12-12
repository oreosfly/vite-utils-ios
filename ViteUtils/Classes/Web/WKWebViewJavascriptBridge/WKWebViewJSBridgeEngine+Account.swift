//
//  WKWebViewJSBridgeEngine+Account.swift
//  Vite
//
//  Created by Water on 2018/10/23.
//  Copyright © 2018年 vite labs. All rights reserved.
//
import SwiftyJSON

public extension  WKWebViewJSBridgeEngine {
    @objc func jsapi_goLoginVC(parameters: [String: String], callbackID: String) {
        guard let handler =  WKWebViewConfig.instance.goToLogin else {
            return
        }
        handler(nil)
    }
}
