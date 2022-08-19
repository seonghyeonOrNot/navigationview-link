//
//  ListData.swift
//  ToggleTest
//
//  Created by 이성현 on 2022/08/18.
//

import SwiftUI

var listData: [ToDoItem] = [
    ToDoItem(task: "take out trash", imageName: "trash.circle.fill"),
    ToDoItem(task: "pick up the kids", imageName: "person.2.fill"),
    ToDoItem(task: "wash the car", imageName: "car.fill")

]

struct ToDoItem : Identifiable {
    var id = UUID()
    var task: String
    var imageName: String
}

