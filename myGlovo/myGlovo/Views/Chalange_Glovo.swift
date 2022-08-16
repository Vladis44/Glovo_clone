
import SwiftUI

struct Chalange_Glovo: View {
    @State var secondary  = Color("Secondary.yellow")
    let black: Color = Color("Secondary.yellow")
    
    var body: some View {
        NavigationView{
            ZStack{
                Color("Premery.yellow")
                    .edgesIgnoringSafeArea(.all)
                    .tint(.green)
                VStack{
                    Image("menu_Chalange")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 344, height: 304)
                        .padding()
                    Text("There is nothing")
                        .foregroundColor(Color ("TextPremery"))
                        .font(.system(size: 28, weight: .bold, design: .default))
                        .tracking(2)
                        .multilineTextAlignment(.center)
                        .padding(.bottom)
                    
                    VStack{
                        Text("Stay tuned for updates.")
                            .foregroundColor(Color ("TextPremery"))
                            .font(.system(size: 18, weight: .regular, design: .default))
                            .tracking(1.2)
                        Text("There will be new challenges")
                            .foregroundColor(Color ("TextPremery"))
                            .font(.system(size: 18, weight: .regular, design: .default))
                            .tracking(1.2)
                        Text(" very soon!")
                            .foregroundColor(Color ("TextPremery"))
                            .font(.system(size: 18, weight: .regular, design: .default))
                            .tracking(1.2)
                    }
                    .foregroundColor(Color ("TextPremery"))
                    .font(.headline)
                    .padding()
                }
                .navigationBarHidden(true)
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

struct Chalange_Glovo_Previews: PreviewProvider {
    static var previews: some View {
        Chalange_Glovo()
    }
}


