//
//  CVView.swift
//  myCV
//
//  Created by Djallil Elkebir on 2021-06-14.
//

import SwiftUI
import PDFKit

struct CVView: View {
    @ObservedObject var cvStore: CVStore
    
    // MARK: Sections Title
    let presentationSectionTitle: String = "Presentation"
    let competenceSectionTitle: String = "Skills"
    let experienceSectionTitle: String = "Experiences"
    let educationSectionTitle: String = "Education"
    // Save button title editable so you can have it blank when you save the view in pdf
    @State var saveButtonText: String  = "Save"
    // Main Color
    let color: Color = .red
    
    var body: some View {
        VStack(spacing: 0){
            CVHeaderView(contact: cvStore.cv[0].contact, color: color, saveButtonText: $saveButtonText)
            Divider()
            SectionTitle(title: presentationSectionTitle, color: color)
            HStack {
                Text(cvStore.cv[0].presentation)
                    .padding(.horizontal)
                    .padding()
                    .multilineTextAlignment(.center)
            }
            SectionTitle(title: competenceSectionTitle, color: color)
            CompetenceView(skills: cvStore.cv[0].skills, color: color).padding(8)
            ExperiencesAndEducation(color: color, experiences: cvStore.cv[0].experience, experienceSectionTitle: experienceSectionTitle, educations: cvStore.cv[0].education,educationSectionTitle: educationSectionTitle).edgesIgnoringSafeArea(.bottom)
        }.background(Color.blue.opacity(0.1))
    }
}

struct CVView_Previews: PreviewProvider {
    static var previews: some View {
        CVView(cvStore: CVStore())
    }
}
