//
//  CessnaModel.swift
//  Cessna
//
//  Created by Sergei Kriukov on 13.05.2022.
//

import Foundation
class Cessna:Identifiable, Decodable {
    var id:UUID?
    var name:String
    var image:String
    var firstFlight:Int
    var Characteristics:[String] = [String]()
    var Description:String
     
}
