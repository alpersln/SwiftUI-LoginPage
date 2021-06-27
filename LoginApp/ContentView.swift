import SwiftUI


struct ContentView: View {
    @AppStorage("email") var email = ""
    @AppStorage("password") var password = ""

    var body: some View {
        
    
        NavigationView {
        VStack {
                    
            Spacer()
            Text("Login Page").font(.system(size: 64.0)).foregroundColor(.white)
            
            HStack{
                Image(systemName: "envelope").foregroundColor(.black)
                TextField("Email", text: $email)
                    .foregroundColor(.black)
                
            }
            .padding(.all,20)
            .foregroundColor(.white).background(Color.white).cornerRadius(38.0)
                .padding(.horizontal,20)
                    
                    HStack{
                        Image(systemName: "lock").foregroundColor(.black)
                        SecureField("Password", text: $password)
                            .foregroundColor(.black)
                    }.frame(height: 60)
                    .padding(.horizontal,20)
                    .foregroundColor(.white).background(Color.white).cornerRadius(38.0)
                        .padding(.all,20)
            
            
               
            
            NavigationLink(destination : HomePage()) {
                Text("Log In").bold().font(.system(size: 33)).foregroundColor(.white)
                    
                
            }.frame( maxWidth: .infinity).padding(.vertical,20).background(Color.pink.opacity(0.4)).cornerRadius(22.0).padding(.horizontal,20)
            Spacer()
            
            
            
        }.background(
            Image("background").resizable().aspectRatio(contentMode: .fill)
        ).edgesIgnoringSafeArea(.all)
    }
}
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
