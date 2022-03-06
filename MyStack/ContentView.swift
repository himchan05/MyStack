//
//  ContentView.swift
//  MyStack
//
//  Created by 박힘찬 on 2022/03/05.
//

import SwiftUI

struct ContentView: View {
    @State var isActived = false
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Stack(isActived: $isActived)
                    Stack(isActived: $isActived)
                    Stack(isActived: $isActived)
                    Stack(isActived: $isActived)
                        .background(Color.red)
                }
                .padding(isActived ? 20 : 10)
                .background(isActived ? Color.green : Color.black)
                .onTapGesture {
                    withAnimation() {
                        self.isActived.toggle()
                    }
                }
                NavigationLink(destination:NewPage(isActived: $isActived)) {
                    Text("Tap")
                        .frame(width: 100, height: 50)
                        .font(.system(size: 30, weight: .medium))
                        .background(Color.yellow)
                        .cornerRadius(30)
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
