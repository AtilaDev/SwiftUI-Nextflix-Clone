//
//  NotificationBar.swift
//  NetflixClone
//
//  Created by Leandro Favre on 15/12/2021.
//

import SwiftUI

struct NotificationBar: View {
    @Binding var showNotificationList: Bool
    
    var body: some View {
        Button(action: {
            showNotificationList = true
        }, label: {
            HStack {
                Image(systemName: "bell")
                Text("Notifications")
                    .bold()
                
                Spacer()
                
                Image(systemName: "chevron.right")
            } //: HSTACK
            .font(.system(size: 18, weight: .bold))
        }) //: BUTTON
        .foregroundColor(.white)
        .padding()
    }
}

struct NotificationBar_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            NotificationBar(showNotificationList: .constant(false))
        }
    }
}
