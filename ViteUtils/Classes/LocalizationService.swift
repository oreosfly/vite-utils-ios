//
//  LocalizationService.swift
//  Pods
//
//  Created by Stone on 2018/12/5.
//

import Foundation

class AnyLanguageBundle: Bundle {
    override func localizedString(forKey key: String, value: String?, table tableName: String?) -> String {

//        if let ret = LocalizationService.sharedInstance.cacheTextDic[key] {
//            return ret
//        }

        var bundle = Bundle(for: AnyLanguageBundle.classForCoder())
        if let resourcePath = bundle.path(forResource: "ViteUtils", ofType: "bundle") {
            if let resourcesBundle = Bundle(path: resourcePath) {
                bundle = resourcesBundle
            }
        }

        if let path = bundle.path(forResource: "zh-Hans", ofType: "lproj"), let bundle = Bundle(path: path) {
            return bundle.localizedString(forKey: key, value: value, table: tableName)
        }

        return super.localizedString(forKey: key, value: value, table: tableName)
    }
}
