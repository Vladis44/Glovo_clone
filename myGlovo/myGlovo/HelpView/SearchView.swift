


import SwiftUI

struct SearchView: View {
    @Binding var text: String
    @State private var isEditing = false
    
    var body: some View {
        HStack {
            TextField("Search for a food", text: $text)
                .font(.body)
                .font(.system(size: 14, weight: .thin, design: .default))
            
                .foregroundColor(Color("TextSecondary"))
                .padding(.leading)
                .padding(.vertical,10)
            
                .padding(.horizontal, 45)
                .background(Color("TextFortee"))
                .frame(width: 295, height: 30)
                .overlay(
                    
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(Color("TextSerty"))
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 20)
                        
                        if isEditing {
                            Button(action: {
                                self.text = ""
                            }){
                                Image(systemName: "multiply.circle.fill")
                                    .foregroundColor(Color("TextSerty"))
                                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .trailing)
                                    .padding(.trailing, 8)
                            }
                        }
                    }
                ).onTapGesture {
                    self.isEditing = true
                }
            
            if isEditing {
                Button(action: {
                    self.isEditing = false
                    self.text = ""
                    
                    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                   }){
                }
            }
        }
    }
}

