//
//  APIService.swift
//  Airbnb
//
//  Created by Adriancys Jesus Villegas Toro on 10/10/23.
//

import Foundation

final class APIService {
    
    init() {}
    
    struct Constants {
        static let urlList = URL(string: "https://public.opendatasoft.com/api/explore/v2.1/catalog/datasets/airbnb-listings/records?limit=100&refine=city%3A%22New%20York%22&refine=room_type%3A%22Entire%20home%2Fapt%22")
    }
    
    public func getListings(completion: @escaping (Result<[AirbnbListings], Error>) -> Void) {
        guard let url = Constants.urlList else {
            return
        }
        let request = URLRequest(url: url)
        let task = URLSession.shared.dataTask(with: request) { data, _, error in
            guard let data = data, error == nil else {
                if let error {
                    completion(.failure(error))
                }
                return
            }

            do{
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let responde = try decoder.decode(AirbnbListeningResponse.self,
                                                  from: data)
                completion(.success(responde.results))
                
            }
            catch {
                let json = try? JSONSerialization.jsonObject(with: data)
                print(String(describing: json))
                completion(.failure(error))
            }
            
        }
        task.resume()
    }

}
