//
//  UserData.swift
//  Landmarks
//
//  Created by 刘永杰 on 2019/8/20.
//  Copyright © 2019 刘永杰. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: BindableObject {
    let didChange = PassthroughSubject<UserData, Never>()
    
    var showFavoritesOnly = false {
        didSet {
            didChange.send(self)
        }
    }
    
    var landmarks = landmarkData {
        didSet {
            didChange.send(self)
        }
    }
    
}
