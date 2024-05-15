import Foundation
import MapKit
import SwiftUI

class LocationsViewModel: ObservableObject {
  @Published var locations: [Location]
  @Published var mapRegion: MKCoordinateRegion = MKCoordinateRegion()
  @Published var currentLocation: Location {
    didSet {
      updateMapRegion(location: self.currentLocation)
    }
  }
  @Published var showLocationsList: Bool = false
  @Published var showDetailLocationView: Bool = false

  init() {
    let locations = LocationsDataService.locations
    self.locations = locations
    self.currentLocation = locations.first!
    self.updateMapRegion(location: currentLocation)
  }
  
  func toggleLocationList() {
    withAnimation(.easeInOut) {
      showLocationsList.toggle()
    }
  }
  
  func updateCurrentLoaction(location: Location) {
    withAnimation(.easeInOut) {
      self.currentLocation = location
      self.showLocationsList = false
    }
  }
  
  func showNextLocation() {
    let currInd = locations.firstIndex { location in
      currentLocation == location
    }
    guard let currInd = locations.firstIndex(where: { $0 == currentLocation }) else {
      return
    }
    let nextInd = currInd + 1 == locations.count ? 0 : currInd + 1
    
    updateCurrentLoaction(location: locations[nextInd])
  }
  
  func toggleDetailLocationView() {
    self.showDetailLocationView.toggle()
  }
  
  private let mapSpan: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
  
  private func updateMapRegion(location: Location) {
    withAnimation(.easeInOut) {
      self.mapRegion = MKCoordinateRegion(
        center: location.coordinates,
        span: mapSpan)
    }
  }
  
}
