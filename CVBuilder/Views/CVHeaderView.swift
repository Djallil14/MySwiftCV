//
//  CVHeaderView.swift
//  CVBuilder
//
//  Created by Djallil Elkebir on 2021-07-30.
//

import SwiftUI

struct CVHeaderView: View {
    let contact: Contact
    let color: Color
    @Binding var saveButtonText: String
    var body: some View {
        HStack{
            VStack (alignment: .leading){
                Text(contact.name).bold().font(.largeTitle)
                Text(contact.occuption).bold().font(.title2)
                Button(action: {
                    CVView(cvStore: CVStore(), saveButtonText: "").exportToPDF(fileName: "MyOtherCV.pdf")
                }){
                    Text(saveButtonText)
                        .font(.headline)
                }
            }.padding()
            .foregroundColor(.white)
            
            Spacer()
            VStack(alignment: .leading, spacing: 10){
                Label(contact.firstContact, systemImage: contact.firstContactIcon)
                Label(contact.secondContact, systemImage: contact.secondContactIcon)
                Label(contact.thirdContact, systemImage: contact.thirdContactIcon)
            }
            .font(.headline)
            .accentColor(.white)
            .foregroundColor(.white)
            .padding()
        }
        .frame(minHeight: 150)
        .background(
            ZStack{
                color
                ThirdBackgroundShape().opacity(0.3)
                FirstBackgroundShape().opacity(0.1)
                SecondBackgroundShape().opacity(0.3)
                LinearGradient(gradient: Gradient(colors: [color, color.opacity(0.3)]), startPoint: .leading, endPoint: .trailing)
                    .blendMode(.overlay)
                
            }.edgesIgnoringSafeArea(.top)
        )
    }
}

struct CVHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        CVHeaderView(contact: CV.previewData.contact, color: .green, saveButtonText: .constant("Save"))
    }
}
