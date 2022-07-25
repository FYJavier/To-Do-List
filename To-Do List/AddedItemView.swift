//
//  AddedItemView.swift
//  To-Do List
//
//  Created by Yuna on 7/25/22.
//

import SwiftUI

struct AddedItemView: View {
    @ObservedObject var toDoList: ToDoList
    @State private var priority = ""
    @State private var description = ""
    @State private var dueDate = Date()
    @Environment(\.presentationMode) var presentationMode
    static let priorities = ["High","Medium","Low"]
    var body: some View {
        NavigationView {
            Form {
                Picker("Priority", selection: $priority) {
                    ForEach(Self.priorities, id: \.self) { priority in
                        Text(priority)
                    }
                }
            }
        }
        
    }
}

struct AddedItemView_Previews: PreviewProvider {
    static var previews: some View {
        AddedItemView(toDoList: ToDoList())
    }
}
