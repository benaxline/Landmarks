//
//  PageView.swift
//  Landmarks
//
//  Created by Benjamin Axline on 6/18/24.
//

import SwiftUI

struct PageView<Page: View>: View {
    var pages: [Page]
    
    @State private var currentPage = 0
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            PageViewController(pages: pages, currentPage: $currentPage)
            PageControl(numberOfPages: pages.count, currentPage: $currentPage)
                .frame(width: CGFloat(pages.count*18))
                .padding(.trailing)
            
        }
        .aspectRatio(3/2, contentMode: .fit)
        
//        HStack {
//            
//            Button("Last"){
//                currentPage -= 1
//                if (currentPage < 0) {
//                    currentPage = pages.count - 1
//                }
//            }
//            
//            
//            Spacer()
//            
//            Button("Next"){
//                currentPage = currentPage + 1
//                if (currentPage == pages.count) {
//                    currentPage = 0
//                }
//            }
//            
//            
//        }
        .padding()
            
        
    }
    
    
}

#Preview {
    PageView(pages: ModelData().features.map {
        FeatureCard(landmark: $0)})
}
