//
//  ContentView.swift
//  DynamicActionSheetFromArray
//
//  Created by ramil on 22/09/2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var showActionSheet: Bool = false
    var titles: [String] = ["1", "2", "3", "4"]
    var buttonsArray: NSMutableArray = NSMutableArray()
    var body: some View {
        Button("Action Sheet") {
            self.showActionSheet = true
        }.actionSheet(isPresented: $showActionSheet) {
            ActionSheet(title: Text("ACTION"), message: Text("Select an option"), buttons: [.default(Text("First Button"), action: {
                print("First")
            }), .default(Text("Second Button")), .cancel()])
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
