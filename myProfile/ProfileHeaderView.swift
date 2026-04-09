//
//  ProfileHeaderView.swift
//  myProfile
//
//  Created by Mikael Engvall on 2026-04-08.
//

import SwiftUI

struct ProfileHeaderView: View {
    
    @Environment(\.userName) var userName
    @Environment(\.isPremium) var isPremium
    @Environment(\.colorScheme) var colorScheme
    @State private var shimmer = false
    @State private var glitch = false
    
    var body: some View {
        VStack(spacing: 12) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 100, height: 100)
                .foregroundColor(
                    colorScheme == .dark ? .white : .gray)
                .overlay(
                    Circle()
                        .stroke(Color.purple, lineWidth: 4)
                        .shadow(color: .purple, radius: 10)
                )
            
            Text(userName)
                .font(.title)
                .bold()
                .overlay(
                    LinearGradient(
                        colors: [.blue, .white, .purple],
                        startPoint: shimmer ? .leading : .trailing,
                        endPoint: shimmer ? .trailing : .leading
                    )
                    .offset(x: shimmer ? 200 : -200)
                    .mask(
                        Text(userName)
                            .font(.title)
                            .bold()
                    )
                )
                .shadow(color: .purple, radius: 6)
                .shadow(color: .blue, radius: 12)
                .onAppear {
                    withAnimation(.linear(duration: 3).repeatForever(autoreverses: false)) {
                        shimmer.toggle()
                    }
                }
            
            if isPremium {
                Text("Premium Member")
                    .font(.caption)
                    .padding(.horizontal, 12)
                    .padding(.vertical, 6)
                    .background(Color.yellow.opacity(0.3))
                    .foregroundColor(.orange)
                    .cornerRadius(20)
            }
        }
        .padding(.top, 40)
    }
}
    
    #Preview {
        ProfileHeaderView()
    }

