import SwiftUI

struct BioView: View {
    
    @Environment(\.userBio) var userBio
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        
        let neonColor = colorScheme == .dark ? Color.purple : Color.blue
        
        VStack(alignment: .leading, spacing: 10) {
            
            Text("Om mig")
                .font(.headline)
                .padding(8)
                .frame(maxWidth: .infinity, alignment: .center)
                .background(
                    colorScheme == .dark
                    ? Color.purple.opacity(0.3)
                    : Color.blue.opacity(0.2)
                )
                .cornerRadius(8)
                //.frame(maxWidth: .infinity, alignment: .center)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke( neonColor, lineWidth: 2
                        )
                        .shadow(color: neonColor, radius: 6
                               )
                )
            
            Text(userBio)
                .foregroundColor(colorScheme == .dark ? .secondary : .black)
                .lineSpacing(4)
                .padding()
        }
        .padding(.horizontal)
    }
}

#Preview {
    BioView()
        .environment(\.userBio, "Preview bio text")
}
