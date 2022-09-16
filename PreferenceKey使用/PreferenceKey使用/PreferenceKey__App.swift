//
//  PreferenceKey__App.swift
//  PreferenceKey使用
//
//  Created by Aaron on 9/16/22.
//

import SwiftUI

@main
struct PreferenceKey__App: App {
    var body: some Scene {
        WindowGroup {
//            ContentView()
                
            PreferenceKeyDemo()
                .environment(\.myEnvironmentTestValue, 10.0)
        }
    }
}
// 给PerferenceKeyDemo设置一个环境变量， 然后我们在其子view中就可随意获取这个环境变量
struct MyEnvironmentKey: EnvironmentKey {
    static var defaultValue: Double = 0.0
}

extension EnvironmentValues {
    var myEnvironmentTestValue: Double {
        get {
            self[MyEnvironmentKey.self]
        }
        set {
            self[MyEnvironmentKey.self] = newValue
        }
    }
}

