//
//  LandmarkList.swift
//  Landmarks
//
//  Created by 刘永杰 on 2019/8/18.
//  Copyright © 2019 刘永杰. All rights reserved.
//

import SwiftUI

struct LandmarkList : View {
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $userData.showFavoritesOnly) {
                    Text("Favorigtes only")
                }
                
                ForEach(userData.landmarks) { landmark in
                    if !self.userData.showFavoritesOnly || landmark.isFavorite {
                        NavigationLink(destination: LandmarkDetail(landmark: landmark).environmentObject(self.userData)) {
                            LandmarkRow(landmark: landmark)
                        }
                    }
                }
            }
            .navigationBarTitle("Landmarks")
        }
    }
}

#if DEBUG
struct LandmarkList_Previews : PreviewProvider {
    static var previews: some View {
//        ForEach(["iPhone SE", "iPhone XS Max", "iPad Pro (12.9-inch)"], id: \.self) { devideName in
            LandmarkList().environmentObject(UserData())
//                .previewDevice(PreviewDevice(rawValue: "iPad Pro (12.9-inch)"))
//        }
        
    }
}
#endif
