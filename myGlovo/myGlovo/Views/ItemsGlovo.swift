
import SwiftUI


@available(iOS 15.0, *)
struct ItemsGlovo: View {
    @StateObject var homeDate = menuViewModel()
    
    var body: some View {

        ScrollView{
            LazyVStack(alignment: .leading, spacing: 15, pinnedViews: [.sectionHeaders], content:{
//Paralax___________________________________________________
                
                GeometryReader{reader -> AnyView in
                    let offset = reader.frame(in: .global).minY
                    if -offset >= 0 {
                        DispatchQueue.main.async{
                            self.homeDate.offset = offset
                        }
                    }
                    
                    return AnyView(
                        Image("menu_One")
                            .resizable()
                            .renderingMode(.original)
                            .aspectRatio(contentMode: .fill)
                            .scaledToFill()
                            .clipped()
                            .frame(width: UIScreen.main.bounds.width, height: 250 + (offset > 0 ? offset : 0))
                            .offset(y: (offset > 0 ? -offset : 0))
                    )
                }
                .frame(height: 250)
                
//Cards___________________________________________________
                
                Section(header: By_menu_headerView()){
                    ForEach(tabsItems){tab in
                        VStack(alignment: .leading, spacing: 20, content: {
                            ForEach(tab.foods){food in
                                CardView(food: food)
                            }
                            Divider()
                                .padding(.top)
                        })
                    }
                }
            })
        }
        
        .navigationBarTitle("McDonald's", displayMode: .large)
        .navigationBarTitleDisplayMode(.inline)
        
//@EnvironmentObject________________________________________
        .environmentObject(homeDate)
    }
}
@available(iOS 15.0, *)
struct ItemsGlovo_Previews: PreviewProvider {
    static var previews: some View {
        ItemsGlovo()
            .foregroundColor(.black)
    }
}





import SwiftUI

struct CardView: View {
    var food: Food
    var body: some View {
        HStack{
            VStack(alignment: .leading, spacing: 3, content:{
                Text(food.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(food.description)
                    .font(.caption)
                    .lineLimit(3)
                Text(food.price)
                    .fontWeight(.bold)
            })
            Spacer(minLength: 10)
            Image(food.image)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .scaledToFill()
                .frame(width: 96, height:88)
                .clipped()
                .cornerRadius(10)
        }
        .padding(.horizontal)
        
    }
}


