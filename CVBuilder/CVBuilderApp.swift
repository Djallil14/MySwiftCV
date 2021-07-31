//
//  CVBuilderApp.swift
//  CVBuilder
//
//  Created by Djallil Elkebir on 2021-07-30.
//

import SwiftUI

@main
struct CVBuilderApp: App {
    var body: some Scene {
        WindowGroup {
            CVView(cvStore: CVStore())
        }
    }
}
