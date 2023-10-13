//
//  AirbnbListingView.swift
//  Airbnb
//
//  Created by Adriancys Jesus Villegas Toro on 11/10/23.
//

import SwiftUI

struct AirbnbListingView: View {
    // MARK: - Properties
    @StateObject var viewModel = AirbnbListingsViewModel()
    
    
    // MARK: - Body
    
    var body: some View {
        NavigationView {
            VStack {
                if viewModel.listings.isEmpty {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle())
                }else {
                    List(viewModel.listings) { list in
                        NavigationLink {
                            AirbnbDetailView(model: list)
                        } label: {
                            AirbnbListingCardView(model: list)
                        }

                    }
                    .navigationTitle("Airbnb")
                }
            }
        }
        .onAppear {
            viewModel.fetchListings()
        }
    }
}
