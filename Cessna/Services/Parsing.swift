//
//  Parsing.swift
//  Cessna
//
//  Created by Sergei Kriukov on 13.05.2022.
//

import Foundation
import UIKit
class Parsing {
   static func jsonParsing() -> [Cessna] {
        let filePath = Bundle.main.path(forResource: "CessnaData", ofType: "json")
        guard filePath != nil else {
            return [Cessna]()
        }
        let url = URL(fileURLWithPath: filePath!)
        do {
        let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            do {
                let rezult = try decoder.decode([Cessna].self, from: data)
                for r in rezult {
                    r.id = UUID()
                }
            return rezult
            
            
            } catch {
                print(error)
            }
        } catch {
            print(error)
        }
        return [Cessna]()
    }
}
