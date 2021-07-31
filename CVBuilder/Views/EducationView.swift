//
//  EducationView.swift
//  myCV
//
//  Created by Djallil Elkebir on 2021-06-26.
//

import SwiftUI

struct EducationView: View {
    var education: Education
    var color: Color
    var body: some View {
        HStack {
            Spacer()
            Text(education.periode).bold()
                .padding(8)
            Spacer()
            VStack(alignment:.center) {
                Text(education.diploma).font(.headline)
                Text(education.university).bold()
                    .foregroundColor(color)
                Text(education.description).font(.caption)
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

struct EducationView_Previews: PreviewProvider {
    static var previews: some View {
        EducationView(education: CV.previewData.education[0], color: .blue)
    }
}
