

import SwiftUI

@available(iOS 15.0, *)
struct MenuGlovo: View {
    
    @State var changePage_Mcdonalds: Bool = false
    @State var changePage_Burgerpab: Bool = false
    @State var changePage_Kfc: Bool = false
    @State var changePage_Pizzahut: Bool = false
    
    @StateObject var homeDate = menuViewModel()
    
    var body: some View {
        
        ScrollView(.vertical,showsIndicators: false, content: {
            
            Section(header: By_menu_headerView()){
                VStack{
                    ZStack{
                        Button(action: {
                            self.changePage_Mcdonalds.toggle()
                        })
                        {
                            McDonalds()
                        }
                        NavigationLink(destination: ItemsGlovo(), isActive: self.$changePage_Mcdonalds){}
                    }
                    
                    ZStack{
                        Button(action: {
                            self.changePage_Burgerpab.toggle()
                        })
                        {
                            Burgerpub()
                        }
                        NavigationLink(destination: Chalange_Glovo(), isActive: self.$changePage_Burgerpab){}
                    }
                    
                    ZStack{
                        Button(action: {
                            self.changePage_Kfc.toggle()
                        })
                        {
                            Kfc()
                        }
                        NavigationLink(destination: Chalange_Glovo(), isActive:
                                        self.$changePage_Kfc){}
                    }
                    
                    ZStack{
                        Button(action: {
                            self.changePage_Pizzahut.toggle()
                        })
                        {
                            Pizzahut()
                        }
                        NavigationLink(destination: Chalange_Glovo(), isActive:
                                        self.$changePage_Pizzahut){}
                    }
                }
            }
        })
            .navigationBarTitle("Ресторан", displayMode: .large)
            .navigationBarTitleDisplayMode(.inline)
            .environmentObject(homeDate)
    }
}

@available(iOS 15.0, *)
struct MenuGlovo_Previews: PreviewProvider {
    static var previews: some View {
        MenuGlovo()
    }
}




struct Burgerpub: View {
    
    var body: some View {
        VStack{
            ZStack{
                Image("menu_Two")
                    .resizable()
                    .renderingMode(.original)
                    .aspectRatio(contentMode: .fit)
                    .scaledToFill()
                    .frame(width: 343, height:160)
                    .clipped()
                
                    .cornerRadius(10)
                    .shadow(color: Color.black.opacity(0.2) , radius: 12, x: 0.0, y: 4)
                    .padding(.bottom, 10)
            }
            HStack{
                Info()
                
                Text("BurgerPub")
                    .font(.system(size: 12, weight: .bold, design: .default))
                    .foregroundColor(.black)
            }
            .padding(.horizontal)
            .foregroundColor(.black)
            .padding(.bottom, 16)
        }
    }
}
   



struct McDonalds: View {
    
    var body: some View {
        VStack{
            ZStack{
                Image("menu_One")
                    .resizable()
                    .renderingMode(.original)
                    .aspectRatio(contentMode: .fit)
                    .scaledToFill()
                    .frame(width: 343, height:160)
                    .clipped()
                
                    .cornerRadius(10)
                    .shadow(color: Color.black.opacity(0.2) , radius: 12, x: 0.0, y: 4)
                    .padding(.bottom, 10)
            }
            HStack{
                Info()
                
                Text("McDonald's")
                    .font(.system(size: 12, weight: .bold, design: .default))
                    .foregroundColor(.black)
            }
            .padding(.horizontal)
            .foregroundColor(.black)
            .padding(.bottom, 16)
        }
    }
}






struct Kfc: View {
    
    var body: some View {
        VStack{
            ZStack{
                Image("menu_Tree")
                    .resizable()
                    .renderingMode(.original)
                    .aspectRatio(contentMode: .fit)
                    .scaledToFill()
                    .frame(width: 343, height:160)
                    .clipped()
                
                    .cornerRadius(10)
                    .shadow(color: Color.black.opacity(0.2) , radius: 12, x: 0.0, y: 4)
                    .padding(.bottom, 10)
            }
            HStack{
                Info()
                
                Text("KFC")
                    .font(.system(size: 12, weight: .bold, design: .default))
                    .foregroundColor(.black)
            }
            .padding(.horizontal)
            .foregroundColor(.black)
            .padding(.bottom, 16)
        }
    }
}



struct Pizzahut: View {
    
    var body: some View {
        VStack{
            ZStack{
                Image("menu_fore")
                    .resizable()
                    .renderingMode(.original)
                    .aspectRatio(contentMode: .fit)
                    .scaledToFill()
                    .frame(width: 343, height:160)
                    .clipped()
                
                    .cornerRadius(10)
                    .shadow(color: Color.black.opacity(0.2) , radius: 12, x: 0.0, y: 4)
                    .padding(.bottom, 10)
            }
            HStack{
                Info()
                
                Text("PizzaHut")
                    .font(.system(size: 12, weight: .bold, design: .default))
                    .foregroundColor(.black)
            }
            .padding(.horizontal)
            .foregroundColor(.black)
            .padding(.bottom, 16)
        }
    }
}





struct Info: View {
    @EnvironmentObject var homeData : menuViewModel
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 10){
            ZStack{
                HStack(spacing: 5){
                    Image(systemName: "clock")
                        .font(.caption)
                    HStack(spacing: 10){
                        Text("30-40 min")
                            .font(.caption)
                        Text("4.4")
                            .font(.caption)
                        Image(systemName: "star.fill")
                            .font(.caption)
                            .foregroundColor(.yellow)
                    }
                    
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                }
            }
        }
    }
}
