//
//  CircleImage.swift
//  demo
//
//  Created by Trinh Chin on 11/8/19.
//  Copyright © 2019 Chnirt. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("avatar1")
            .frame(width: 300, height: 300)
        .clipShape(Circle())
        .overlay(
            Circle().stroke(Color.white, lineWidth: 4))
        .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
