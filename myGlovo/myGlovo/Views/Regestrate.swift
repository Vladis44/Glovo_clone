

import SwiftUI

struct Regestrate: View {
    @State private var firstName = ""
    @State private var pass = ""
    @State var changePage = false
    
    let screen = UIScreen.main.bounds
    
    var body: some View {
        NavigationView{
            ZStack{
                Color(.white)
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    VStack{
                        Image("Glovo_Logo")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: screen.width * 0.5, height: screen.width * 0.17, alignment: .top)
                        
                        
                        VStack{
                            HStack{
                                Image(systemName: "envelope")
                                    .font(.title2)
                                    .foregroundColor(Color("TextSecondary"))
                                    .frame(width: 24, height: 20)
                                
                                TextField("Emeil", text: $firstName)
                                    .foregroundColor(Color("TextSecondary"))
                                    .frame(width:280.0, height: 56.0)
                                
                            }
                            .padding(.horizontal, 16)
                            .padding(4)
                            .overlay(RoundedRectangle(cornerRadius: 14)
                                        .stroke(Color("TextFivety"), lineWidth: 1))
                            .padding()
                            
                            
                            VStack{
                                HStack{
                                    Image(systemName: "lock")
                                        .font(.title2)
                                        .foregroundColor(Color("TextSecondary"))
                                        .frame(width: 24, height: 20)
                                    SecureField("Пароль", text: $pass)
                                        .foregroundColor(Color("TextSecondary"))
                                    
                                    
                                        .frame(width: 280.0, height: 56.0)
                                    
                                }
                                .padding(.horizontal, 16)
                                .padding(4)
                                .overlay(RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color("TextFivety"), lineWidth: 1))
                                .padding()
                                
                            }
                        }
                        .padding()
                        
                        
                        Button(action: {
                            self.changePage = true
                        }){
                            
                            Text("Увійти")
                                .foregroundColor(Color.white)
                                .padding()
                                .font(.title2.bold())
                                .frame(width: 350.0, height: 62.0)
                                .background(Color(red: 0.10, green: 0.74, blue: 0.61))
                                .cornerRadius(14)
                        }
                        
                        
                        Button{} label: {
                            Text("Зареєструватися")
                                .foregroundColor(Color(red: 0.10, green: 0.70, blue: 0.61))
                                .font(.body.bold())
                                .frame(width: 266.0, height: 24.0)
                                .padding(4)
                        }
                    }
                }
            }
            .edgesIgnoringSafeArea(.all)
        }
    }
}
struct Regestrate_Previews: PreviewProvider {
    static var previews: some View {
        Regestrate()
    }
}
