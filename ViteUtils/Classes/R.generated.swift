//
// This is a generated file, do not edit!
// Generated by R.swift, see https://github.com/mac-cain13/R.swift
//

import Foundation
import Rswift
import UIKit

/// This `R` struct is generated and contains references to static resources.
struct R: Rswift.Validatable {
  fileprivate static let applicationLocale = hostingBundle.preferredLocalizations.first.flatMap(Locale.init) ?? Locale.current
  fileprivate static let hostingBundle = Bundle(for: R.Class.self)
  
  static func validate() throws {
    try intern.validate()
  }
  
  /// This `R.image` struct is generated, and contains static references to 3 images.
  struct image {
    /// Image `icon_nav_back_black`.
    static let icon_nav_back_black = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_nav_back_black")
    /// Image `icon_nav_close_black`.
    static let icon_nav_close_black = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_nav_close_black")
    /// Image `success`.
    static let success = Rswift.ImageResource(bundle: R.hostingBundle, name: "success")
    
    /// `UIImage(named: "icon_nav_back_black", bundle: ..., traitCollection: ...)`
    static func icon_nav_back_black(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_nav_back_black, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "icon_nav_close_black", bundle: ..., traitCollection: ...)`
    static func icon_nav_close_black(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_nav_close_black, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "success", bundle: ..., traitCollection: ...)`
    static func success(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.success, compatibleWith: traitCollection)
    }
    
    fileprivate init() {}
  }
  
  /// This `R.storyboard` struct is generated, and contains static references to 1 storyboards.
  struct storyboard {
    /// Storyboard `Launch Screen`.
    static let launchScreen = _R.storyboard.launchScreen()
    
    /// `UIStoryboard(name: "Launch Screen", bundle: ...)`
    static func launchScreen(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.launchScreen)
    }
    
    fileprivate init() {}
  }
  
  /// This `R.string` struct is generated, and contains static references to 1 localization tables.
  struct string {
    /// This `R.string.localizable` struct is generated, and contains static references to 1 localization keys.
    struct localizable {
      /// zh-Hans translation: utils-test.string-中文
      /// 
      /// Locales: zh-Hans, en
      static let testString = Rswift.StringResource(key: "test.string", tableName: "Localizable", bundle: R.hostingBundle, locales: ["zh-Hans", "en"], comment: nil)
      
      /// zh-Hans translation: utils-test.string-中文
      /// 
      /// Locales: zh-Hans, en
      static func testString(_: Void = ()) -> String {
        return NSLocalizedString("test.string", bundle: R.hostingBundle, comment: "")
      }
      
      fileprivate init() {}
    }
    
    fileprivate init() {}
  }
  
  fileprivate struct intern: Rswift.Validatable {
    fileprivate static func validate() throws {
      try _R.validate()
    }
    
    fileprivate init() {}
  }
  
  fileprivate class Class {}
  
  fileprivate init() {}
}

struct _R: Rswift.Validatable {
  static func validate() throws {
    try storyboard.validate()
  }
  
  struct storyboard: Rswift.Validatable {
    static func validate() throws {
      try launchScreen.validate()
    }
    
    struct launchScreen: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = UIKit.UIViewController
      
      let bundle = R.hostingBundle
      let name = "Launch Screen"
      
      static func validate() throws {
        if #available(iOS 11.0, *) {
        }
      }
      
      fileprivate init() {}
    }
    
    fileprivate init() {}
  }
  
  fileprivate init() {}
}
