//
//  TaskView.swift
//  Self Care App

import SwiftUI

struct Task: Identifiable {
    let id = UUID() // gives tasks an id (needed for Identifiable)
    let text: String // what task it is
    var isChecked = false // if it's checked off
}

struct TaskView: View {
    @State private var task = [ // changeable pieces of data
        Task(text: "Drink water"),
        Task(text: "10 minute meditation or stretching"),
        Task(text: "Eat your favorite snack"),
        Task(text: "No screens for 30 minutes"),
        Task(text: "Take a walk"),
        Task(text: "Clean your room")
    ]
    var body: some View {
        ZStack {
            Image("greenbackground")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack { // stacks title and tasks vertically
                ZStack {
                    // Title
                    Text("My Tasks")
                        .font(.custom("Pixelated Elegance", size: 40))
                        .shadow(color: .black.opacity(1), radius: 0.5, x: 1, y: 1)
                        .foregroundColor(.black)
                        .offset(x: 3, y: 3)
                    Text("My Tasks")
                        .font(.custom("Pixelated Elegance", size: 40))
                        .shadow(color: .black.opacity(1), radius: 0.5, x: 1, y: 1)
                        .foregroundColor(.black)
                        .offset(x: -3, y: -3)
                    Text("My Tasks")
                        .font(.custom("Pixelated Elegance", size: 40))
                        .shadow(color: .black.opacity(1), radius: 0.5, x: 1, y: 1)
                        .foregroundColor(.black)
                        .offset(x: -3, y: 3)
                    Text("My Tasks")
                        .font(.custom("Pixelated Elegance", size: 40))
                        .shadow(color: .black.opacity(1), radius: 0.5, x: 1, y: 1)
                        .foregroundColor(.black)
                        .offset(x: 3, y: -3)
                    Text("My Tasks")
                        .font(.custom("Pixelated Elegance", size: 40))
                        .shadow(color: .black.opacity(1), radius: 0.5, x: 1, y: 1)
                        .foregroundColor(Color(hue: 0.278, saturation: 0.709, brightness: 0.718))
                }
                .padding(.top, 50) // pushes title down
                
                Spacer().frame(height: 30) // adds space between title and tasks
                
                // Tasks
                ScrollView { // can scroll through tasks
                    VStack(spacing: 15) {
                        ForEach($task) { $item in // each task can be changed (if checked)
                            HStack { // horizontal so check box is next to task
                                Text(item.text) // shows task name
                                    .font(.custom("Pixelated Elegance", size: 18))
                                    .foregroundColor(.black)
                                Spacer() // space sapart task and check box
                                Button(action: {item.isChecked.toggle()}) {
                                    // when task is checked on or off, isChecked swaps
                                    Image(systemName: item.isChecked ? "circle.fill" : "circle")
                                    // if task is checked off (True), circle goes green and checked, otherwise gray (False)
                                        .foregroundColor(item.isChecked ? .green : .gray)
                                        // if isChecked is True, circle is green, gray if False
                                        .imageScale(.large) // size of check box
                                }
                            }
                            .padding()
                            .padding(.horizontal)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    TaskView()
}
