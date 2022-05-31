//
//  ContentView.swift
//  list-ui
//
//  Created by Carlos Amaral on 26/05/22.
//

import SwiftUI

struct ContentView: View {
    let list : [ProductModel] = productList
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(productList, id: \.id) { product in
                        NavigationLink {
                            ProductDetails()
                        } label: {
                            Text(product.name)
                        }

                    }
                }
                
                Spacer()
            }
            .navigationTitle("Mega Mercado")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
