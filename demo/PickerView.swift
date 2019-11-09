//
//  PickerView.swift
//  demo
//
//  Created by Trinh Chin on 11/9/19.
//  Copyright © 2019 Chnirt. All rights reserved.
//

import SwiftUI

struct PickerView: View {
    let students = ["Chin", "Tin", "Dien" ]
    @State private var selectedStudent = "Chin"
    
    var body: some View {
        Picker("Select student", selection: $selectedStudent) {
            ForEach(0 ..< students.count) {
                Text("\(self.students[$0]) people")
            }
        }
    }
}

struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView()
    }
}
