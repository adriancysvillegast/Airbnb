//
//  AirbnbListingCardView.swift
//  Airbnb
//
//  Created by Adriancys Jesus Villegas Toro on 11/10/23.
//

import SwiftUI

struct AirbnbListingCardView: View {
    // MARK: - Properties
    let model: AirbnbListings
    
    // MARK: - Body
    var body: some View {
        HStack(spacing: 5) {
            AsyncImage(url: URL(string: model.thumbnailUrl ?? "-"))
                .frame(width: 100, height: 100)
                .clipped()
                .cornerRadius(8)
            
            Spacer()
            VStack(alignment: .leading, spacing: 5) {
                Text(model.name ?? "-")
                    .lineLimit(1)
                    .font(.title3)
                    .fontWeight(.bold)
                
                Text(model.description ?? "-")
                    .font(.footnote)
                    .lineLimit(3)
                    .foregroundColor(.secondary)
            }
        }
    }
}

//struct AirbnbListingCardView_Previews: PreviewProvider {
//    static var previews: some View {
//        AirbnbListingCardView()
//    }
//}
