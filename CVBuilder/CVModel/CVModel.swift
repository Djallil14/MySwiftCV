//
//  CVModel.swift
//  myCV
//
//  Created by Djallil Elkebir on 2021-06-14.
//

import Foundation

struct CV: Identifiable {
    var id = UUID()
    let presentation: String = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare. Orci nulla pellentesque dignissim enim. Sit amet risus nullam eget. Elementum tempus egestas sed sed."
    let contact: Contact
    let experience: [Experience]
    let skills: Skills
    let education: [Education]
}
struct Contact {
    let name: String
    let occuption: String
    let firstContact: String
    let secondContact: String
    let thirdContact: String
    let firstContactIcon: String
    let secondContactIcon: String
    let thirdContactIcon: String
}
struct Experience: Identifiable {
    var id = UUID()
    let title: String
    let description: String
    let company: String
    let duration: String
}

struct Skills: Identifiable {
    var id = UUID()
    let language: [String]
    let framework: [String]
    let csBasics: [String]
}

struct Education : Identifiable{
    var id = UUID()
    let university: String
    let diploma: String
    let description: String
    let periode: String
}



extension CV {
    static let previewData: CV =
    CV(
        contact: Contact(name: "Djallil Elkebir", occuption: "Swift Developer", firstContact: "elkebir.djalil@gmail.com", secondContact: "555-555-5555", thirdContact: "https://github.com/Djallil14", firstContactIcon: "envelope", secondContactIcon: "phone", thirdContactIcon: "server.rack"),
            experience: [
                        Experience(title: "Founder and Developer", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ornare lectus sit amet est placerat in egestas erat. In nibh mauris cursus mattis.", company: "Company Name", duration: "03/2021\nNow"),
                        Experience(title: "Co-manager & Co-founder", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ornare lectus sit amet est placerat in egestas erat. In nibh mauris cursus mattis.", company: "Company Name", duration: "03/2020\n04/2021"),
                        Experience(title: "Vice-President Logistics for Events", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ornare lectus sit amet est placerat in egestas erat. In nibh mauris cursus mattis.", company: "Company Name", duration: "04/2019\n04/2020"),
                        Experience(title: "Program coordinator", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ornare lectus sit amet est placerat in egestas erat. In nibh mauris cursus mattis.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ornare lectus sit amet est placerat in egestas erat. In nibh mauris cursus mattis.", company: "Company Name", duration: "09/2019\n01/2020")
            ],
            skills: Skills(language: ["Swift", "HTML/CSS Basics", "Sass"], framework: ["SwiftUI","Publishers on Combine", "Firebase","UITableView", "UICollectionView","Storyboard and Autolayout Basics" ,"Basics of XCTests", "RestApi's call/JSON Decoder and Encoder", "CoreData", "LottieFiles", "AVFoundation Basics"], csBasics: ["SOLID","OOP","MVVM","MVC"]),
            education: [Education(university: "University Name", diploma: "The probably long name of your diploma", description: "Among other things, the program helps develop the capacity to design, plan and implement, manage and evaluate social responsibility programs in all types of organizations.",periode: "Jan 2018\nJuillet 2020"),
                        Education(university: "University Name", diploma: "The probably long name of your diploma", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ornare lectus sit amet est placerat in egestas erat. In nibh mauris cursus mattis.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ornare lectus sit amet est placerat in egestas erat. In nibh mauris cursus mattis.", periode: "01/2017\n03/2018"),
                        Education(university: "University Name", diploma: "The probably long name of your diploma", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ornare lectus sit amet est placerat in egestas erat. In nibh mauris cursus mattis.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ornare lectus sit amet est placerat in egestas erat. In nibh mauris cursus mattis.", periode: "09/2018\n07/2014")
                       ])
}

