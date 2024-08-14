//
//  AFButton.swift
//  Apple Frameworks
//
//  Created by Manyuchi, Carrington C on 2024/08/13.
//

import SwiftUI

struct AFButton: View {
    
    var title: String
    
    var body: some View {
        Label(title, systemImage: "book.fill")
        .foregroundStyle(.white)
        .font(.title2)
        .fontWeight(.semibold)
        .frame(width: 280, height: 50)
        .background(Color.red.gradient)
        .cornerRadius(10)
        .shadow(radius: 10)
    }
}

#Preview {
    AFButton(title: "Learn More")
}
