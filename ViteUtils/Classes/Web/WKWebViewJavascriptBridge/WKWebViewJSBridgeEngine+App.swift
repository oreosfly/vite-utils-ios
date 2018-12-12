//
//  WKWebViewJSBridgeEngine+App.swift
//  Vite
//
//  Created by Water on 2018/10/24.
//  Copyright © 2018年 vite labs. All rights reserved.
//

import Foundation

public extension  WKWebViewJSBridgeEngine {
    //app channel
    @objc func jsapi_appChannel(parameters: [String: String], callbackID: String) {
        guard let handler =  WKWebViewConfig.instance.fetchAppChannel else {
            return
        }
        let responseData = handler(nil) ?? ""
        let message = ["responseID": callbackID, "responseData": responseData]
        self.sendResponds(message)
    }

    //share
    @objc func jsapi_goToshare(parameters: [String: String], callbackID: String) {
        guard let handler =  WKWebViewConfig.instance.share else {
            return
        }
        handler(parameters)
    }

    //token
    @objc func jsapi_appToken(parameters: [String: String], callbackID: String) {
        guard let handler =  WKWebViewConfig.instance.fetchAppToken else {
            return
        }
        let responseData = handler(nil) ?? ""
        let message = ["responseID": callbackID, "responseData": responseData]
        self.sendResponds(message)
    }
}
