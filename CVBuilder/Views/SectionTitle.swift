//
//  SectionTitle.swift
//  CVBuilder
//
//  Created by Djallil Elkebir on 2021-07-30.
//

import SwiftUI

struct SectionTitle: View {
    var title: String
    var color: Color
    var body: some View {
        HStack{
            Text(title).bold()
                .foregroundColor(.white)
            Spacer()
        } .padding(8)
            .background(color)
    }
}

struct SectionTitle_Previews: PreviewProvider {
    static var previews: some View {
        SectionTitle(title: "Random", color: .blue)
    }
}
