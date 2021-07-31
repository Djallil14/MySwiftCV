//
//  ExperiencesAndEducation.swift
//  CVBuilder
//
//  Created by Djallil Elkebir on 2021-07-30.
//

import SwiftUI

struct ExperiencesAndEducation: View {
    var color: Color
    var experiences: [Experience]
    var experienceSectionTitle: String = "Experiences"
    var educations: [Education]
    var educationSectionTitle: String = "Education"
    var body: some View {
        HStack(spacing: 0){
            VStack {
                SectionTitle(title: experienceSectionTitle, color: color)
                ScrollView(.vertical, showsIndicators: false){
                    ForEach(experiences){experience in
                        ExperienceView(experience: experience, color: color)
                    }
                    Spacer()
                }.padding(.horizontal, 8)
            }
            Divider()
            VStack {
                SectionTitle(title: educationSectionTitle, color: color)
                ScrollView(.vertical, showsIndicators: false){
                    ForEach(educations){education in
                        EducationView(education: education, color: color)
                    }
                    Spacer()
                }.padding(.horizontal, 8)
            }
        }
    }
}

struct ExperiencesAndEducation_Previews: PreviewProvider {
    static var previews: some View {
        ExperiencesAndEducation(color: .orange, experiences: CV.previewData.experience, educations: CV.previewData.education)
    }
}
