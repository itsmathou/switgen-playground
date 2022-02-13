// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import SwiftUI

// MARK: - Strings

enum L10n {
  enum Main {
    /// Hello, world!
    static let helloWorld = LocalizedString(lookupKey: "main.hello_world")
  }
  enum Shared {
    /// Cancel
    static let cancelCta = LocalizedString(lookupKey: "shared.cancel_cta")
    /// Okay
    static let okCta = LocalizedString(lookupKey: "shared.ok_cta")
  }
}

// MARK: - Implementation Details

extension L10n {
  fileprivate static func tr(_ table: String, _ key: String, _ args: CVarArg...) -> String {
    let format = BundleToken.bundle.localizedString(forKey: key, value: nil, table: table)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

struct LocalizedString {
  let lookupKey: String

  var key: LocalizedStringKey {
    LocalizedStringKey(lookupKey)
  }

  var text: String {
    L10n.tr("Localizable", lookupKey)
  }
}

private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
      return Bundle.module
    #else
      return Bundle(for: BundleToken.self)
    #endif
  }()
}
