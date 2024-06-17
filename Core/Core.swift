//
//  Core.swift
//  Core
//
//  Created by Gustavo Araujo Santos on 17/06/24.
//

import Foundation
import Combine

final class Core {
    
    static var shared = Core()
    @Published var badgeValue: Int = 0
    
    private init() { }
}
