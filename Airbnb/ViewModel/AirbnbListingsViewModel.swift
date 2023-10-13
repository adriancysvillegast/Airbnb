//
//  AirbnbListingsViewModel.swift
//  Airbnb
//
//  Created by Adriancys Jesus Villegas Toro on 12/10/23.
//

import Foundation

final class AirbnbListingsViewModel: ObservableObject {
    // MARK: - Properties
    
    let service: APIService
    @Published var listings: [AirbnbListings] = []
    
    // MARK: - Init
    
    init(service: APIService = APIService()) {
        self.service = service
    }
    
    // MARK: - Methods
    
    func fetchListings() {
        service.getListings { [weak self] result in
            switch result {
            case .success(let model):
//                print(model.first)
                self?.listings = model
            case .failure(let error):
                print(error)
            }
        }
    }
    
    
}
