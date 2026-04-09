//
//  UserNameEnvironment.swift
//  myProfile
//
//  Created by Mikael Engvall on 2026-04-08.
//

import SwiftUI

struct UserNameEnvironmentKey: EnvironmentKey {
    static let defaultValue: String = "Gäst"
}

extension EnvironmentValues {
    
    var userName: String {
        get {self[UserNameEnvironmentKey.self] }
        set { self[UserNameEnvironmentKey.self] = newValue
        }
        
    }
}
