import SwiftUI

struct ContentView: View {
    
    @State private var isPresented1 = false
    @State private var isPresented2 = false
    @State private var isPresented3 = false
    
    var body: some View {
        NavigationView{
        ZStack{
            Image("Start")
            VStack{
                HStack(spacing: 300){
                    Button(action:{
                        isPresented2.toggle()
                    }){
                        Image(systemName: "chart.bar.fill")
                            .foregroundColor(Color.white)
                            .padding(.bottom, 260)
                            .font(.system(size: 30))
                    }
                    .sheet(isPresented: $isPresented2){
                        RankView()
                    }
                    
                    Button(action:{
                        isPresented3.toggle()
                    }){
                        Image(systemName: "questionmark.circle")
                            .foregroundColor(Color.white)
                            .padding(.bottom, 260)
                            .font(.system(size: 30))
                    }
                    .sheet(isPresented: $isPresented3){
                        SetView()
                    }
                }
                Text("Drizzle")
                    .foregroundColor(Color.white)
                    .font(.custom("Helvetica-Bold", size: 70))
                    Button(action:{
                        isPresented1.toggle()
                    }){
                        Image(systemName: "gamecontroller.fill")
                            .foregroundColor(Color.white)
                            .padding(.bottom, 350)
                            .font(.system(size: 60))
                    }
                    .sheet(isPresented: $isPresented1){
                        SecondView()
                    }
                    
                    
                
            }
                
            }
            }
        
    }
}

#Preview {
 ContentView()
}

