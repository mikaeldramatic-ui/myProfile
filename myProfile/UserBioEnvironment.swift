//
//  UserBioEnvironment.swift
//  myProfile
//
//  Created by Mikael Engvall on 2026-04-08.
//

import SwiftUI

struct UserBioKey: EnvironmentKey {
    static let defaultValue: String = "Ingen bio tillgänglig."
}

extension EnvironmentValues {
    
    var userBio: String {
        get{self[UserBioKey.self]}
        set{self[UserBioKey.self] = newValue}
    }
}
