//
//  Connectivity.swift
//  TMBD Movies
//
//  Created by Shahzaib Khan on 20/12/2023.
//

import Foundation
import Alamofire

struct Connectivity {
    private static let sharedInstance = NetworkReachabilityManager()
    static var isConnectedToInternet: Bool {
        return self.sharedInstance?.isReachable ?? true
    }
}
