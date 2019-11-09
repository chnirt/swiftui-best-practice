//
//  ButtonView.swift
//  demo
//
//  Created by Trinh Chin on 11/9/19.
//  Copyright © 2019 Chnirt. All rights reserved.
//

import SwiftUI

struct ButtonView: View {
    @State private var a = 0
    
    var body: some View {
        Button("Add \(a)") {
            self.a += 1
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
