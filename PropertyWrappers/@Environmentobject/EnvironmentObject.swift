//
//  @EnvironmentObject.swift
//  PropertyWrappers
//
//  Created by Никита Бутовцов on 15.10.2022.
//

import SwiftUI

struct EnvironmentObjectView: View {
    @EnvironmentObject var image: ImageViewModel
    
    var body: some View {
        NavigationView {
            VStack {
                Image(systemName: image.imageName)
                    .resizable()
                    .frame(width: 100, height: 100)
                    .foregroundColor(.yellow)
                    .padding(.vertical)
                
                NavigationLink {
                    SecondScreenView()
                } label: {
                    Text("Идем на следующий экран")
                }
            }
            .padding()
        }
    }
}

// MARK: Second screen

struct SecondScreenView: View {
    @EnvironmentObject var image: ImageViewModel
    
    var body: some View {
        Image(systemName: image.imageName)
            .resizable()
            .frame(width: 100, height: 100)
            .foregroundColor(.yellow)
            .padding(.vertical)
    }
}

struct EnvironmentObjectView_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectView()
            .environmentObject(ImageViewModel())
    }
}

//MARK: ViewModel

class ImageViewModel: ObservableObject {
    @Published var imageName = ""
    
    init() {
        imageName = "sun.max"
    }
}
