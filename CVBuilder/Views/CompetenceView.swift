//
//  CompetenceView.swift
//  myCV
//
//  Created by Djallil Elkebir on 2021-06-26.
//

import SwiftUI

struct CompetenceView: View {
    var skills: Skills
    var color: Color
    var body: some View {
        HStack(alignment: .top){
            Spacer()
            VStack {
                VStack(alignment: .leading) {
                    Text("Programming Languages:").font(.title3).bold().foregroundColor(color)
                    ForEach(0..<skills.programmingLanguages.count){index in
                        Text(skills.programmingLanguages[index])
                    }
                    Text("Spoken Languages:").font(.title3).bold().foregroundColor(color)
                    ForEach(0..<skills.spokenLanguages.count){index in
                        Text(skills.spokenLanguages[index])
                    }
                    Text("CS Basics:").font(.title3).bold().foregroundColor(color)
                    ForEach(0..<skills.csBasics.count){index in
                        Text(skills.csBasics[index])
                    }.padding(.trailing, 24)
                }
            }
            Spacer()
            VStack(alignment: .leading){
                Text("Frameworks:").font(.title3).bold().foregroundColor(color)
                ForEach(0..<skills.framework.count){index in
                    Text(skills.framework[index])
                }
            }
            Spacer()
        }
        .padding()
        .background(
            color.opacity(0.2)
                .clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous))
        )
    }
}
struct CompetenceView_Previews: PreviewProvider {
    static var previews: some View {
        CompetenceView(skills: CV.previewData.skills, color: Color.blue)
    }
}

//HStack{
//    Spacer()
//    VStack(){
//        Spacer()
//        Text("Languages:").bold()
//        ForEach(skills.language, id: \.self){ language in
//        Text(language)
//        }
//        Spacer()
//        Text("CS Basics:").bold()
//        Text("- MVVM \n- SOLID \n- OOP")
//        Spacer()
//    }
//    Spacer()
//    Divider()
//        HStack {
//            VStack(alignment:.leading){
//                ForEach(0..<skills.framework.count / 2){index in
//                    Text("- \(skills.framework[index])")
//                }
//            }
//            Divider().offset(x: 3)
//            VStack(alignment:.leading){
//                ForEach(skills.framework.count / 2..<skills.framework.count){index in
//                    Text("- \(skills.framework[index])")
//                }
//            }
//        }.overlay(VStack(alignment:.leading){
//            HStack {
//                Text("Frameworks :").bold().padding()
//                Spacer()
//            }
//            Spacer()
//        })
//    Spacer()
//}
