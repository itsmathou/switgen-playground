// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
internal enum L10n {

  internal enum Main: String, Localizable  {
    /// Hello, world!
    case helloWorld
  }

  internal enum Shared: String, Localizable  {
    /// Cancel
    case cancelCta
    /// Okay
    case okCta
  }
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

protocol Localizable {
    var localized: String { get }
}

extension Localizable {
    var localized: String {
        let key = String(reflecting: self).replacingOccurrences(of: "swiftgen_playground.L10n.", with: "")
        let keySnakeCased = key.snakeCased() ?? key
        return L10n.tr("Localizable", keySnakeCased)
    }
}

private extension String {
    func snakeCased() -> String? {
            let acronymPattern = "([A-Z]+)([A-Z][a-z]|[0-9])"
            let normalPattern = "([a-z0-9])([0-Z])"
            return processCamelCaseRegex(pattern: acronymPattern)?
                .processCamelCaseRegex(pattern: normalPattern)?.lowercased()
        }
    func processCamelCaseRegex(pattern: String) -> String? {
            let regex = try? NSRegularExpression(pattern: pattern, options: [])
            let range = NSRange(location: 0, length: count)
            return regex?.stringByReplacingMatches(in: self, options: [], range: range, withTemplate: "$1_$2")
        }
}

// MARK: - Implementation Details

private extension L10n {
  static func tr(_ table: String, _ key: String, _ args: CVarArg...) -> String {
    let format = BundleToken.bundle.localizedString(forKey: key, value: nil, table: table)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
