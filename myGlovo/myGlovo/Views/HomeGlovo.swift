


import SwiftUI

@available(iOS 15.0, *)
struct HomeGlovo: View {
    @State var changePage_Restoran: Bool = false
    @State var changePage_Super_Market: Bool = false
    @State var changePage_Everisin: Bool = false
    @State var changePage_Kurer: Bool = false
    @State var changePage_Krasa: Bool = false
    @State var changePage_Present: Bool = false
    @State var text = ""
    
    
    var body: some View {
        
        NavigationView{
            ZStack{
                Color("Premery.yellow")
                    .edgesIgnoringSafeArea(.all)
                VStack(alignment: .center, spacing: 160){
                    ZStack{
                        SearchView(text: $text)
                            .cornerRadius(120)
                            .padding(.vertical, 10)
                    }
                    .padding(.bottom)
                    
                    VStack{
                        VStack(alignment: .center, spacing: 60){
                            VStack(alignment: .center, spacing: -10){
                                HStack(alignment: .center, spacing: 42){
                                    
                                    ZStack{
                                        Button(action: {
                                            self.changePage_Restoran.toggle()
                                        })
                                        {
                                            Restoran()
                                        }
                                        NavigationLink(destination: MenuGlovo(), isActive: self.$changePage_Restoran){}
                                    }
                                    
                                    
                                    ZStack{
                                        Button(action: {
                                            self.changePage_Super_Market.toggle()
                                        })
                                        {
                                            Super_Market()
                                        }
                                        NavigationLink(destination: Chalange_Glovo(), isActive: self.$changePage_Super_Market){}
                                        
                                    }
                                }
                                
                                
                                VStack(alignment: .center, spacing: -160){
                                    VStack{
                                        ZStack{
                                            Button(action: {
                                                self.changePage_Everisin.toggle()
                                            })
                                            {
                                                Everisin()
                                            }
                                            NavigationLink(destination: Regestrate(), isActive: self.$changePage_Everisin){}
                                        }
                                        
                                        ZStack{
                                            Button(action: {
                                                self.changePage_Kurer.toggle()
                                            })
                                            {
                                                Kurer()
                                            }
                                            NavigationLink(destination: Chalange_Glovo(), isActive: self.$changePage_Kurer){}
                                        }
                                    }
                                    
                                    HStack(alignment: .center, spacing: 118){
                                        ZStack{
                                            
                                            Button(action: {
                                                self.changePage_Krasa.toggle()
                                            })
                                            {
                                                Krasa()
                                            }
                                            NavigationLink(destination: Chalange_Glovo(), isActive: self.$changePage_Krasa){}
                                        }
                                        
                                        ZStack{
                                            
                                            Button(action: {
                                                self.changePage_Present.toggle()
                                            })
                                            {
                                                Present()
                                            }
                                            NavigationLink(destination: Chalange_Glovo(), isActive: self.$changePage_Present){}
                                            
                                        }
                                    }
                                }
                            }
                        }
                    }
                    .padding(.bottom, 320)
                }
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}
@available(iOS 15.0, *)
struct HomeGlovo_Previews: PreviewProvider {
    static var previews: some View {
        HomeGlovo()
    }
}





@available(iOS 15.0, *)
struct Everisin: View {
    var body: some View {
        
        ZStack(alignment: .top){
            Circle()
                .frame(width: 115, height: 115)
                .foregroundColor(.white)
            
            VStack{
                Image("home_що_завгодно")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 75, height: 75)
                
                Text("Що зав..")
                    .font(.system(size: 14.86, weight: .regular, design: .default))
                    .foregroundColor(.black)
            }
            .zIndex(1)
        }
    }
}





struct Restoran: View {
    var body: some View {
        
        ZStack(alignment: .top){
            Circle()
                .frame(width: 86, height: 86)
                .foregroundColor(.white)
            VStack{
                Image("home_ресторан")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 52, height: 52)
                Text("Ресторан")
                    .font(.system(size: 10.86, weight: .regular, design: .default))
                    .foregroundColor(.black)
            }
            .zIndex(1)
        }
    }
}





struct Super_Market: View {
    var body: some View {
        
        ZStack(alignment: .top){
            Circle()
                .frame(width: 86, height: 86)
                .foregroundColor(.white)
            VStack{
                Image("home_Супермаркет")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 52, height: 52)
                Text("Супер-Ма..")
                    .font(.system(size: 10.86, weight: .regular, design: .default))
                    .foregroundColor(.black)
            }
            .zIndex(1)
        }
    }
}






struct Kurer: View {
    var body: some View {
        
        ZStack(alignment: .top){
            Circle()
                .frame(width: 86, height: 86)
                .foregroundColor(.white)
            VStack{
                Image("home_курєр")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 52, height: 52)
                
                Text("Курьер")
                    .font(.system(size: 10.86, weight: .regular, design: .default))
                    .foregroundColor(.black)
            }
            .zIndex(1)
        }
    }
}





struct Krasa: View {
    var body: some View {
        
        ZStack(alignment: .top){
            Circle()
                .frame(width: 86, height: 86)
                .foregroundColor(.white)
            VStack{
                Image("home_краса")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 52, height: 52)
                
                Text("Краса")
                    .font(.system(size: 10.86, weight: .regular, design: .default))
                    .foregroundColor(.black)
            }
            .zIndex(1)
        }
    }
}





struct Present: View {
    var body: some View {
        
        ZStack(alignment: .top){
            Circle()
                .frame(width: 86, height: 86)
                .foregroundColor(.white)
            VStack{
                Image("home_Подарунки")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 52, height: 52)
                
                Text("Подарун..")
                    .font(.system(size: 10.86, weight: .regular, design: .default))
                    .foregroundColor(.black)
            }
            .zIndex(1)
        }
    }
}
