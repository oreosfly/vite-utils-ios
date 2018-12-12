//
//  WKWebViewJSBridgePublish.swift
//  Vite
//
//  Created by Water on 2018/10/24.
//  Copyright © 2018年 vite labs. All rights reserved.
//

public class WKWebViewJSBridgePublish {
    private weak var bridge: WKWebViewJSBridge?
    private weak var observerActive: NSObjectProtocol?
    private weak var observerBackground: NSObjectProtocol?

    init(bridge: WKWebViewJSBridge) {
        self.bridge = bridge
        self.initBinds()
    }

    fileprivate func initBinds() {
        observerActive = NotificationCenter.default.addObserver(forName: UIApplication.didBecomeActiveNotification, object: nil, queue: nil) {[weak self] (_) in
            self?.bridge?.call(handlerName: "appStatus", data: ["status": "1"]) {  (_) in
            }
        }

        observerBackground = NotificationCenter.default.addObserver(forName: UIApplication.didEnterBackgroundNotification, object: nil, queue: nil) { [weak self](_) in
            self?.bridge?.call(handlerName: "appStatus", data: ["status": "0"]) {  (_) in
            }
        }
    }

    deinit {
        NotificationCenter.default.removeObserver(observerActive!)
        NotificationCenter.default.removeObserver(observerBackground!)
    }
}
