//
//  WKWebViewConfig.swift
//  ViteUtils
//
//  Created by Water on 2018/12/10.
//
 public class WKWebViewConfig {
    public typealias  WebViewConfigClosure = (_ data: [String: String]?) -> String?

    public static let instance = WKWebViewConfig()

    //login action
    public var goToLogin: WebViewConfigClosure?
    //share action with data
    public var share: WebViewConfigClosure?
    //h5 fetch app channel
    public var fetchAppChannel: WebViewConfigClosure?
    //h5 send transaction
    public var sendTransaction: WebViewConfigClosure?
    //h5 fetch vite token
    public var fetchAppToken: WebViewConfigClosure?

    private init() {
        goToLogin = { (_ data: [String: String]?) -> String? in
            print(data)
            return nil
        }
        share = { (_ data: [String: String]?) -> String? in
            print(data)
            return nil
        }
        fetchAppChannel = { (_ data: [String: String]?) -> String? in
            print(data)
            return nil
        }
        fetchAppToken = { (_ data: [String: String]?) -> String? in
            print(data)
            return nil
        }
        sendTransaction = { (_ data: [String: String]?) -> String? in
            print(data)
            return nil
        }
    }

}
