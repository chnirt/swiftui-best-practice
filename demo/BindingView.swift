//
//  BindingView.swift
//  demo
//
//  Created by Trinh Chin on 11/9/19.
//  Copyright © 2019 Chnirt. All rights reserved.
//

import SwiftUI

struct BindingView: View {
    @State private var name = ""
    
    var body: some View {
        Form {
            TextField("Enter your name", text: $name)
            Text("Your name: \(name)")
        }
    }
}

struct BindingView_Previews: PreviewProvider {
    static var previews: some View {
        BindingView()
    }
}
