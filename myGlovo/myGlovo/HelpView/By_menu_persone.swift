


import Foundation

struct Food: Identifiable{
    var id = UUID().uuidString
    var title: String
    var description: String
    var price: String
    var image: String
}



var foods: [Food] = [

    Food (title: "BigMac", description: "Amazing. Delishis", price: "$34", image: "Item_BigMac.png"),
    Food (title: "BigTasty", description: "Amazing. Delishis", price: "$28", image: "Item_BigTasty.png"),
    Food (title: "Cheeseburger", description: "Amazing. Delishis", price: "$19", image: "Item_Cheeseburger.png"),
    Food (title: "CheeseburgerBacon", description: "Amazing. Delishis", price: "$21", image: "Item_CheeseburgerBacon.png"),
    Food (title: "DblRoyalCheese", description: "Amazing. Delishis", price: "$25", image: "Item_Dbl_Royal_Cheese.png"),
    Food (title: "DoubleCheeseburger", description: "Amazing. Delishis", price: "$26", image: "Item_DoubleCheeseburger.png"),
    Food (title: "FileFish", description: "Amazing. Delishis", price: "$17", image: "Item_File_Fish.png"),
    Food (title: "Hamburger", description: "Amazing. Delishis", price: "$18", image: "Item_Hamburger.png"),
    Food (title: "McChicken", description: "Amazing. Delishis", price: "$20", image: "Item_McChicken.png"),
    Food (title: "RoyalCheese", description: "Amazing. Delishis", price: "$23", image: "Item_Royal_Cheese.png"),
    Food (title: "FFLarge", description: "Amazing. Delishis", price: "$23", image: "Item_FFLarge.png"),
    Food (title: "FFMedium", description: "Amazing. Delishis", price: "$20", image: "Item_FFMedium.png"),
    Food (title: "FFStandart", description: "Amazing. Delishis", price: "$18", image: "Item_FFDipper.png"),
  ]







import SwiftUI

struct Tab: Identifiable {
    var id = UUID().uuidString
    var tab: String
    var foods: [Food]
}
var tabsItems = [
    Tab(tab: "Order Agein", foods: foods.shuffled()),
]


