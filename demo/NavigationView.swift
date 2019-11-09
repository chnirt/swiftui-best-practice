//
//  NavigationView.swift
//  demo
//
//  Created by Trinh Chin on 11/8/19.
//  Copyright © 2019 Chnirt. All rights reserved.
//

import SwiftUI

struct NavigationView: View {
    var body: some View {
        NavigationView {
            List {
                Text("Hello World")
                Text("Hello World")
                Text("Hello World")
            }
            .navigationBarTitle("Menu")
        }
    }
}

struct NavigationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView()
    }
}
