//
//  Print+Precisely.swift
//  Sugar
//
//  Created by Martin Lasek on 17.12.20.
//  Copyright © 2020 Martin Lasek. All rights reserved.
//

/// More verbose ERROR message print function.
public func printError<T>(_ type: T, _ text: String, line: Int = #line) {
  printu(.error, type, line, text)
}

/// More verbose INFO message print function.
public func printInfo<T>(_ type: T, _ text: String, line: Int = #line) {
  printu(.info, type, line, text)
}

/// More verbose WARNING message print function.
public func printWarning<T>(_ type: T, _ text: String, line: Int = #line) {
  printu(.warning, type, line, text)
}

/// More verbose DEBUG message print function.
public func printDebug<T>(_ type: T, _ text: String, line: Int = #line) {
  printu(.debug, type, line, text)
}

/// Universal print that modifies the message to be consistent before printing it.
func printu<T>(_ kind: Kind, _ type: T, _ line: Int, _ text: String) {
  let typeName = cleanUp(type: T.self)
  print("\(kind.rawValue) Line: \(line) | \(typeName) | \(text)")
}

enum Kind: String {
  case info = "ℹ️"
  case warning = "⚠️"
  case error = "❌"
  case debug = "⚡️"
}

/// Makes sure in case of "LocationManager" and "LocationManager.Type"
/// that "LocationManager" is returned.
func cleanUp<T>(type: T) -> String {
  let uncleanedType = String(describing: T.self)
  let typeWordList = uncleanedType.split(separator: ".")
  return String(describing: typeWordList[0])
}
