//
//  IsPremiumEnvironment.swift
//  myProfile
//
//  Created by Mikael Engvall on 2026-04-08.
//

import SwiftUI

struct IsPremiumKey: EnvironmentKey {
    static let defaultValue: Bool = false
}

extension EnvironmentValues {
    var isPremium: Bool {
        get {self[IsPremiumKey.self]}
        set {self[IsPremiumKey.self] = newValue
        }
    }
}
