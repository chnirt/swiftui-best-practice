//
//  TextFieldView.swift
//  demo
//
//  Created by Trinh Chin on 11/9/19.
//  Copyright © 2019 Chnirt. All rights reserved.
//

import SwiftUI

struct TextFieldView: View {
    @State private var checkAmount = ""
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 2
    
    let tipPercentages = [10, 15, 20, 25, 0]
    let 🐶 = [10, 15, 20, 25, 0]
    
//    let color = UIColor(named: "SillyBlue")
    
    let color = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    
    var totalPerPerson = {
        return 0
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Amount", text: $checkAmount)
                        .keyboardType(.decimalPad)
                    
                    Picker("Select student", selection: $numberOfPeople) {
                        ForEach(2 ..< 100) {
                            Text("\($0) people")
                        }
                    }
                }
                
                Section(header: Text("How much tip do you want to leave?")) {
                    Picker("Tip percentage", selection: $tipPercentage) {
                        ForEach(0 ..< 🐶.count) {
                            Text("\(self.🐶[$0])%")
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                
                Section {
                    Text("$\(checkAmount)")
                }
            }
            .navigationBarTitle("Chnirt", displayMode: .inline)
        }
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView()
    }
}
