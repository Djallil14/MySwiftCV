//
//  CVStore.swift
//  myCV
//
//  Created by Djallil Elkebir on 2021-06-15.
//

import Foundation

class CVStore: ObservableObject {
    @Published var cv: [CV] = []
    init(){
        cv.append(CV.previewData)
    }
}
