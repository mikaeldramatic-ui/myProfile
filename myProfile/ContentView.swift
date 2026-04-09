import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        VStack(spacing: 24) {
            
            ProfileHeaderView()
                .padding(.top, 40)
            
            Divider()
            
            BioView()
            
            Spacer()
        }
        .environment(\.userName, "Micke")
        .environment(\.userBio, """
                      Slip ’N Slide – Welcome to my mind.
                      På min Twitch-kanal delar jag spel, tankar och spontana ögonblick direkt från huvudet till streamen. 
                      Det blir allt från gaming och skratt till oväntade sidospår, häng med och se vart resan tar oss.
                      """)
        .environment(\.isPremium, true)
    }
}

#Preview {
    ContentView()
}
