//
//  NewPage.swift
//  MyStack
//
//  Created by 박힘찬 on 2022/03/06.
//

import SwiftUI

struct NewPage: View {
    var selectedColor = [Color.red, Color.green, Color.yellow]
    @State var index = 0
    
    @Binding var isActived: Bool
    // 바인딩 처리할 때는 생성자를 초기화시킨다.
    init(isActived: Binding<Bool> = .constant(true)) {
        _isActived = isActived
    }
    var body: some View {
        VStack {
            Text("새로운 뷰 입니다. \(index+1)")
                .font(.system(size: 30, weight: .bold))
            Text(isActived ? "활성화 상태 : \(String(isActived))" : "할성화 상태 : \(String(isActived))")
                .padding()
                .font(.system(size: 25, weight: .semibold))
                .background(Color.orange)
                .foregroundColor(Color.white)
        }
        .frame(minWidth: 0, maxWidth: .infinity,
               minHeight: 0, maxHeight: .infinity)
        .background(selectedColor[index])
        .onTapGesture {
            viewChange()
        }
    }
    func viewChange() {
        if index >= (selectedColor.count)-1 {
            index = 0
        }
        else {
            index += 1
        }
        print(index)
    }
}
struct NewPage_Previews: PreviewProvider {
    static var previews: some View {
        NewPage()
    }
}
