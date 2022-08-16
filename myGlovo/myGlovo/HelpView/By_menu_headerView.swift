

import SwiftUI

struct By_menu_headerView: View {
    @EnvironmentObject var homeData : menuViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            ZStack{
                VStack(alignment: .leading, spacing: 10){
                    Stories()
                        .font(.caption)
                }
            }
        }
        .padding(.horizontal)
        .frame(height: 66)
        .background(.white)
    }
}

struct By_menu_headerView_Previews: PreviewProvider {
    static var previews: some View {
        ItemsGlovo()
    }
}




struct Stories: View {
    
    @State var page = 0
    @State var menu = 0
    
    var body: some View {
        
     ScrollView(.horizontal, showsIndicators: false){
     
                HStack(spacing: 20){
                    HStack(spacing: 10){
                      
                        Button(action: {
                            self.menu = 0
                        }){
                            VStack{
                            Image(systemName: "wand.and.stars.inverse")
                                Text("All")
                                .font(.system(size: 12))
                            }
                            .frame(width: 60, height: 44)
                                .foregroundColor(self.menu == 0 ? .white : Color("Premery.yellow"))
                        }
                        .background(self.menu == 0 ? Color("Secondary.yellow"): Color("Premery.yellow").opacity(0.2))
                        .clipShape(Circle())
                        
                        Button(action: {
                            self.menu = 1
                        }){
                            Text("Fast Food")
                                .foregroundColor(self.menu == 1 ? .white : Color("Premery.yellow"))
                                .padding(.vertical, 10)
                                .padding(.horizontal, 20)
                        }
                        .background(self.menu == 1 ? Color("Secondary.yellow"): Color("Premery.yellow").opacity(0.2))
                        .clipShape(Capsule())
                           
                        Button(action: {
                            self.menu = 2
                        }){
                            Text("Italian")
                                .foregroundColor(self.menu == 2 ? .white : Color("Premery.yellow"))
                                .padding(.vertical, 10)
                                .padding(.horizontal, 20)
                        }
                        .background(self.menu == 2 ? Color("Secondary.yellow"): Color("Premery.yellow").opacity(0.2))
                        .clipShape(Capsule())
                        
                        
                        Button(action: {
                            self.menu = 3
                        }){
                            Text("Asian")
                                .foregroundColor(self.menu == 3 ? .white : Color("Premery.yellow"))
                                .padding(.vertical, 10)
                                .padding(.horizontal, 20)
                        }
                        .background(self.menu == 3 ? Color("Secondary.yellow"): Color("Premery.yellow").opacity(0.2))
                        .clipShape(Capsule())
                    }
                    .padding(.top, 25)
                }
        .padding(.horizontal ,8)
            }
       .padding(.vertical ,10)
    }
}
