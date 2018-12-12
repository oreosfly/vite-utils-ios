//
//  WKWebViewJSBridgeEngine+Transaction.swift
//  Vite
//
//  Created by Water on 2018/10/23.
//  Copyright © 2018年 vite labs. All rights reserved.
//

import SwiftyJSON

public extension WKWebViewJSBridgeEngine {
    @objc func jsapi_sendTransaction(parameters: [String: String], callbackID: String) {
        guard let handler =  WKWebViewConfig.instance.sendTransaction else {
            return
        }
        handler(parameters)
    }
}
