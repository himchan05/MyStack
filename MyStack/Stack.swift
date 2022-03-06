//
//  Stack.swift
//  MyStack
//
//  Created by 박힘찬 on 2022/03/06.
//

import SwiftUI

struct Stack: View {
    @Binding var isActived: Bool
    
    // 바인딩 처리할 때는 생성자로 초기화시킨다.
    init(isActived: Binding<Bool> = .constant(true)) {
        _isActived = isActived
    }
    
    var body: some View {
        VStack {
            Text("1!")
                .font(.system(size: 50, weight: .bold))
            Text("2!")
                .font(.system(size: 50, weight: .bold))
            Text("3!")
                .font(.system(size: 50, weight: .bold))
        }
        .background(isActived ? Color.brown : Color.cyan)
    }
}

struct Stack_Previews: PreviewProvider {
    static var previews: some View {
        Stack()
    }
}
