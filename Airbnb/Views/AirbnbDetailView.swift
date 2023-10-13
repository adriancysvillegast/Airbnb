//
//  AirbnbDetailView.swift
//  Airbnb
//
//  Created by Adriancys Jesus Villegas Toro on 11/10/23.
//

import SwiftUI

struct AirbnbDetailView: View {
    // MARK: - Properties
    let model: AirbnbListings
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            AsyncImage(url: URL(string: model.xlPictureUrl ?? ""))
                .frame(width: 370,height: 370, alignment: .center)
                .aspectRatio(contentMode: .fit)
                .clipped()
            
            
            VStack(alignment: .leading, spacing: 10) {
                Text(model.name ?? "-" .uppercased())
                    .multilineTextAlignment(.leading)
                    .font(.system(.title, design: .serif))
                    .lineLimit(3)
                Spacer()
                
                
                Group {
                    Text("Description".uppercased())
                        .font(.title2)
                        .fontWeight(.medium)
                        .multilineTextAlignment(.leading)
                    
                    Text(model.description ?? "-")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.leading)
                    
                    Spacer()
                    
                    Text("Summary".uppercased())
                        .font(.title2)
                        .fontWeight(.medium)
                        .multilineTextAlignment(.leading)
                    
                    Text(model.summary ?? "-")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.leading)
                    
                    Spacer()
                    
                    Text("Space".uppercased())
                        .font(.title2)
                        .fontWeight(.medium)
                        .multilineTextAlignment(.leading)
                    
                    Text(model.space ?? "-")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.leading)
                
                }
 
                    Spacer()
                    
                Group {
                    Text("House Rules".uppercased())
                        .font(.title2)
                        .fontWeight(.medium)
                        .multilineTextAlignment(.leading)
                    
                    Text(model.houseRules ?? "-")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.leading)
                    
                    Spacer()
                    
                    Text("Price".uppercased())
                        .font(.title2)
                        .fontWeight(.medium)
                        .multilineTextAlignment(.leading)
                    
                    Text("\(model.price ?? 0) $")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.leading)
                    
                }

            }
            
            //                host
            VStack(alignment: .leading) {
                Text("About Host".uppercased())
                    .font(.title2)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.leading)
                
            }
                HStack {
                    AsyncImage(url: URL(string: model.hostThumbnailUrl ?? ""))
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                    
                    Text(model.hostName)
                        .font(.system(.footnote, design: .serif))
                        .multilineTextAlignment(.leading)
                
                }

        }
        .navigationTitle(model.name ?? "")
        .navigationBarTitleDisplayMode(.inline)
        .padding(.horizontal)
    }
}
//
//struct AirbnbDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        AirbnbDetailView()
//    }
//}
