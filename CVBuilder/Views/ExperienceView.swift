//
//  ExperienceView.swift
//  myCV
//
//  Created by Djallil Elkebir on 2021-06-26.
//

import SwiftUI

struct ExperienceView: View {
    var experience: Experience
    var color: Color
    var body: some View {
        HStack {
            Spacer()
            Text(experience.duration).bold()
                .padding(8)
            Spacer()
            VStack(alignment:.center) {
                Text(experience.title).font(.headline)
                Text(experience.company).bold()
                    .foregroundColor(color)
                Text(experience.description).font(.caption)
            }.multilineTextAlignment(.center)
            Spacer()
        }
        .padding(8)
        .background(
            color.opacity(0.2)
                .clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous))
        )
    }
}
struct ExperienceView_Previews: PreviewProvider {
    static var previews: some View {
        ExperienceView(experience: CV.previewData.experience[0], color: .blue)
    }
}
