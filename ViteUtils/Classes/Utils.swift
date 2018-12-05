//
//  Utils.swift
//  Pods
//
//  Created by haoshenyang on 2018/12/4.
//

import Foundation

public func libName() -> String {
    object_setClass(Bundle(for: AnyLanguageBundle.self), AnyLanguageBundle.self)
    return R.string.localizable.testA()
}
