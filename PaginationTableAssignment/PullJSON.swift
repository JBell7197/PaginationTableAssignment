//
//  PullJSON.swift
//  PaginationTableAssignment
//
//  Created by Justin Bell on 10/20/21.
//

import UIKit

class PullJSON: NSObject {
    func getJSONFile (completionHandler: @escaping ([Game]) -> Void) {
        let url = URL(string: "https://www.freetogame.com/api/games")!
        let task = URLSession.shared.dataTask(with: url, completionHandler: {(data, response, error) in
            
            if error != nil || data == nil {
                print("Error---- \(String(describing: error?.localizedDescription))")
            }
            else {
                if let responseText = String.init(data: data!, encoding: .ascii) {
                    let jsonData = responseText.data(using: .utf8)!
                    let games = try! JSONDecoder().decode([Game].self, from: jsonData)
                    completionHandler(games)
                }
            }
        })
        task.resume()
    }

}
