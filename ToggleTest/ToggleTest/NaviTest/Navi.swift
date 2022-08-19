//
//  Navi.swift
//  ToggleTest
//
//  Created by 이성현 on 2022/08/19.
//

import SwiftUI

struct Navi: View {
    var body: some View {
        NavigationView {
            VStack(alignment:.leading) {
//                VStack {
//                    NavigationLink(destination: Text("detail more")){
//                    Text("Hello, World!")
//                    }
//                }
                
                Section( "     설정1") {
                    List(0..<5){ row in
                        NavigationLink(destination: Text("detail \(row)")){
                            Text("row \(row)")
                        }
                    }
                }
                
                Section("     설정2") {
                    List(listData){ item in
                        
                        NavigationLink(destination: Text("detail")){
                        
                        HStack{
                               Image(systemName: item.imageName)
                               Text(item.task)
                                       }
                        
                        }
                    }
                }
            }
            .navigationTitle("SwiftUI").navigationBarTitleDisplayMode(.inline)
           
            
        }
    }
}

struct Navi_Previews: PreviewProvider {
    static var previews: some View {
        Navi()
    }
}
