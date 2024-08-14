//
//  XDismissButton.swift
//  Apple Frameworks
//
//  Created by Manyuchi, Carrington C on 2024/08/14.
//

import SwiftUI

struct XDismissButton: View {
    @Binding var isShowingDetailsView: Bool
    
    var body: some View {
        HStack {
            Spacer()
            Button(action: {
                isShowingDetailsView = false
            }, label: {
                Image(systemName: "xmark")
                    .foregroundStyle(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            })
        }
        .padding()
    }
}

#Preview {
    XDismissButton(isShowingDetailsView: .constant(false))
}
