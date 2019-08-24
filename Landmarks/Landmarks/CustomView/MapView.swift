//
//  MapView.swift
//  Landmarks
//
//  Created by 刘永杰 on 2019/8/17.
//  Copyright © 2019 刘永杰. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView : UIViewRepresentable {
    var coordinate: CLLocationCoordinate2D
    
    func makeUIView(context: UIViewRepresentableContext<MapView>) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ view: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        view.setRegion(region, animated: true)
    }
}

#if DEBUG
struct MapView_Previews : PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2DMake(34.011286, -116.166868))
    }
}
#endif
