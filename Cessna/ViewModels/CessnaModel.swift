//
//  CessnaModel.swift
//  Cessna
//
//  Created by Sergei Kriukov on 13.05.2022.
//

import Foundation
class CessnaModel {
    var cessnas = [Cessna]()
    init() {
        cessnas = Parsing.jsonParsing()
    }
}
