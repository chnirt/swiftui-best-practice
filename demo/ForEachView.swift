//
//  ForEachView.swift
//  demo
//
//  Created by Trinh Chin on 11/9/19.
//  Copyright © 2019 Chnirt. All rights reserved.
//

import SwiftUI

struct ForEachView: View {
    var body: some View {
        Form {
            ForEach(0 ..< 3 ) { num in
                Text("Hello, \(num)!")
            }
            ForEach(0 ..< 5 ) {
                Text("Hello, \($0)!")
            }
        }
    }
}

struct ForEachView_Previews: PreviewProvider {
    static var previews: some View {
        ForEachView()
    }
}
