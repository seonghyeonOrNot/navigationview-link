//
//  ContentView.swift
//  ToggleTest
//
//  Created by 이성현 on 2022/08/18.
//

import SwiftUI

struct ContentView: View {
    
    @State private var someToggle = false
    @State private var someToggle1 = false
    
    var body: some View {
        NavigationView {
            VStack(alignment:.leading){
                
                VStack {
                    Capsule().frame(width: .infinity, height: 50).foregroundColor(.white).overlay(
                        Toggle("알림", isOn: $someToggle).foregroundColor(.black).toggleStyle(.switch).tint(.yellow).padding()
                    )
                    if someToggle {
                        Text("확인 되었습니다.").foregroundColor(.white)
                    } else {
                        Text("알림 버튼을 눌러주세요.")
                    }
                }.padding()
                    .background(Color.blue)

                
            VStack {
                Capsule().frame(width: .infinity, height: 50).foregroundColor(.white).overlay(
                    Toggle("설정", isOn: $someToggle1).foregroundColor(.black).toggleStyle(.switch).tint(.yellow).padding()
)
                if someToggle1 {
                    Text("설정 되었습니다.").foregroundColor(.white)
                } else {
                    Text("설정 버튼을 눌러주세요.")
                }
            }
            .padding()
            .background(Color.blue)
            
                VStack {
                    Text("To Do List").font(.title).fontWeight(.bold)
                }.padding(.leading, 20)
            
            List(listData) { item in
                HStack{
                    Image(systemName: item.imageName)
                    Text(item.task)
                }
                
                
                
            }
                
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
