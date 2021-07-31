//
//  Views+ExportPDF.swift
//  CVBuilder
//
//  Created by Djallil Elkebir on 2021-07-30.
//

import SwiftUI

extension View {
    func exportToPDF(fileName: String) {
        let outputFileURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!.appendingPathComponent(fileName)
        let pageSize = CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 1.6)
        
        //View to render on PDF
        let myUIHostingController = UIHostingController(rootView: self)
        myUIHostingController.view.frame = CGRect(origin: .zero, size: pageSize)
        
        
        //Render the view behind all other views
        guard let rootVC = UIApplication.shared.windows.first?.rootViewController else {
            print("ERROR: Could not find root ViewController.")
            return
        }
        rootVC.addChild(myUIHostingController)
        //at: 0 -> draws behind all other views
        //at: UIApplication.shared.windows.count -> draw in front
        rootVC.view.insertSubview(myUIHostingController.view, at: 0)
        
        
        //Render the PDF
        let pdfRenderer = UIGraphicsPDFRenderer(bounds: CGRect(origin: .zero, size: pageSize))
        DispatchQueue.main.async {
            do {
                try pdfRenderer.writePDF(to: outputFileURL, withActions: { (context) in
                    context.beginPage()
                    myUIHostingController.view.layer.render(in: context.cgContext)
                })
                print("wrote file to: \(outputFileURL.path)")
            } catch {
                print("Could not create PDF file: \(error.localizedDescription)")
            }
            
            //Remove rendered view
            myUIHostingController.removeFromParent()
            myUIHostingController.view.removeFromSuperview()
        }
    }
}


