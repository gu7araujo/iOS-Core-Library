//
//  Shared.swift
//  Core
//
//  Created by Gustavo Araujo Santos on 17/06/24.
//

import Foundation
import Combine

public final class Shared {
    
    public static var shared = Shared()
    @Published public var badgeValue: Int = 0
    
    private init() { }
}
