//
//  BaseNavigationController.swift
//  Vite
//
//  Created by Stone on 2018/8/27.
//  Copyright © 2018年 Vite. All rights reserved.
//

import UIKit

open class BaseNavigationController: UINavigationController {

    open override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        self.delegate = self
    }

    open override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if children.count == 1 {
            viewController.hidesBottomBarWhenPushed = true
        }
        super.pushViewController(viewController, animated: animated)
    }

    open override func setViewControllers(_ viewControllers: [UIViewController], animated: Bool) {
        viewControllers.last?.hidesBottomBarWhenPushed = true
        super.setViewControllers(viewControllers, animated: animated)
    }

}

extension BaseNavigationController: UINavigationControllerDelegate {

    open func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
        let item = UIBarButtonItem(title: " ", style: .plain, target: nil, action: nil)
        viewController.navigationItem.backBarButtonItem = item
    }

    open override var childForStatusBarStyle: UIViewController? {
        return self.topViewController
    }
}
