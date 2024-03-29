//
//  RotatedBadgeSymbol.swift
//  Landmarks
//
//  Created by 刘永杰 on 2019/8/24.
//  Copyright © 2019 刘永杰. All rights reserved.
//

import SwiftUI

struct RotatedBadgeSymbol : View {
    
    let angle: Angle

    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}

#if DEBUG
struct RotatedBadgeSymbol_Previews : PreviewProvider {
    static var previews: some View {
        RotatedBadgeSymbol(angle: .init(degrees: 5))
    }
}
#endif
