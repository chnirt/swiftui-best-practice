//
//  LoginView.swift
//  demo
//
//  Created by Trinh Chin on 11/8/19.
//  Copyright © 2019 Chnirt. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        List {
            Image("avatar1")
                .resizable()
                .scaledToFill()
                .frame(height: 300)
                .clipped()
            
            VStack(alignment: .leading){
                Text("aa")
                Text("aa")
                Text("aa")
                
            }.listRowInsets(EdgeInsets())
            
            
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
