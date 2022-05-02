//
//  ContentView.swift
//  coffeOrderApp
//
//  Created by Ertugrul Berber on 1.05.2022.
//

import SwiftUI

struct ContentView: View {
    var filters = ["Hot Coffees","Iced Coffees","Hot Teas","Iced Teas","Hot Drinks","Iced Drinks"]
    var body: some View {
        ZStack{
            VStack{
                HStack{
                    Image(systemName: "doc.plaintext").frame(width: 100, height: 100).foregroundColor(Color.black).padding()
                    Spacer()
                    Image("brand")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.brown, lineWidth: 3))
                        .shadow(radius: 10)
                        .padding()
                    Spacer()
                    Image(systemName: "gear").frame(width: 100, height: 100).foregroundColor(Color.black).padding()
                    Spacer()
                }.padding()
                HStack{
                    VStack(alignment:.leading){
                        Text("Great Coffe")
                            .fontWeight(.bold)
                            .font(.system(.title2, design: .rounded))
                            .foregroundColor(Color.black)
                            .shadow(radius: 5)
                        
                        Text("Anytime, Anywhere!")
                            .fontWeight(.bold)
                            .font(.system(.title2, design: .rounded))
                            .foregroundColor(Color.black)
                            .shadow(radius: 5)
                        
                        
                    }.padding(1)
                    Spacer()
                    
                }
                ScrollView(.horizontal){
                    HStack{
                        ForEach(filters, id: \.self){
                            Text($0)
                                .foregroundColor(.black)
                                .padding()
                                .border(Color.brown, width: 5)
                                .cornerRadius(8)
                                .shadow(radius: 2)
                        }
                    }
                }.frame(width: 400, height: 75)
                Spacer()
                HStack{
                    HStack{
                        VStack{
                            Image("icedlatte").resizable()
                                .frame(width: 200, height: 175)
                                .cornerRadius(30)
                                
                            HStack{
                                Text("Iced Latte")
                                    .fontWeight(.semibold)
                                Spacer()
                                Text("$5.00")
                                    .fontWeight(.bold)
                                
                            }
                            Image("icedamericano").resizable()
                                .frame(width: 200, height: 250)
                                .cornerRadius(30)
                            HStack{
                                Text("Iced Americano")
                                    .fontWeight(.semibold)
                                Spacer()
                                Text("$7.00")
                                    .fontWeight(.bold)
                            }
                        }
                    }
                    HStack{
                        VStack{
                            Image("flatwhite").resizable()
                                .frame(width: 200, height: 250)
                                .cornerRadius(30)
                            HStack{
                                Text("Flat White")
                                    .fontWeight(.semibold)
                                Spacer()
                                Text("$8.00")
                                    .fontWeight(.bold)
                                
                            }
                            Image("filtre").resizable()
                                .frame(width: 200, height: 175)
                                .cornerRadius(30)
                            HStack{
                                Text("Filter Coffe")
                                    .fontWeight(.semibold)
                                Spacer()
                                Text("$4.00")
                                    .fontWeight(.bold)
                            }
                        }
                    }
                }
                HStack{
                    Image(systemName: "house")
                        .frame(width:40, height: 40)
                        .padding()
                    Image(systemName: "bag.badge.plus")
                        .frame(width:40, height: 40)
                        .padding()
                    Image(systemName: "cart")
                        .frame(width:40, height: 40)
                        .padding()
                    Image(systemName: "mappin.and.ellipse")
                        .frame(width:40, height: 40)
                        .padding()
                    Image(systemName: "person")
                        .frame(width:40, height: 40)
                        .padding()
                }.padding(2)
                    .shadow(radius: 100)
                    .foregroundColor((Color.gray))
            }.padding()
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
    
}
