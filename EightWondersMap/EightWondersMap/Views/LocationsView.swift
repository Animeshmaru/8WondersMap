import MapKit
import SwiftUI

struct LocationsView: View {
  @EnvironmentObject private var viewModel: LocationsViewModel

  var body: some View {
    ZStack {
      Map(
        coordinateRegion: $viewModel.mapRegion,
        annotationItems: viewModel.locations,
        annotationContent: { location in
          MapAnnotation(coordinate: location.coordinates) {
            LocationsAnnotationView()
              .scaleEffect(
                viewModel.currentLocation == location ? 1.2 : 1)
              .onTapGesture {
                viewModel.updateCurrentLoaction(location: location)
              }
          }
        }
      )
      .ignoresSafeArea()

      VStack {
        header
          .frame(maxWidth: 500)
          .padding()
        Spacer()
        footer
          .frame(maxWidth: 500)
          .padding()

      }
    }
    .sheet(isPresented: $viewModel.showDetailLocationView) {
      LocationsDetailView(location: viewModel.currentLocation)
    }
  }
}

extension LocationsView {
  private var header: some View {
    VStack {
      Button {
        viewModel.toggleLocationList()
      } label: {
        Text(viewModel.currentLocation.name + ", " + viewModel.currentLocation.cityName)
          .font(.title2)
          .fontWeight(.black)
          .frame(height: 55)
          .foregroundColor(.primary)
          .frame(maxWidth: .infinity)
          .animation(.none, value: viewModel.currentLocation)
          .overlay(alignment: .leading) {
            Image(systemName: "arrow.down")
              .font(.headline)
              .foregroundColor(.primary)
              .padding()
              .rotationEffect(Angle(degrees: viewModel.showLocationsList ? 180 : 0))
          }
      }
      if viewModel.showLocationsList {
        LocationListView()
      }
    }
    .background(.thinMaterial)
    .cornerRadius(20)
    .shadow(
      color: Color.black.opacity(0.3),
      radius: 20,
      x: 0,
      y: 15)
  }

  private var footer: some View {
    HStack(alignment: .bottom) {
      VStack(alignment: .leading) {
        Image(viewModel.currentLocation.imageNames.first!)
          .resizable()
          .scaledToFill()
          .frame(width: 100, height: 100)
          .cornerRadius(20)
          .padding(5)
          .background(Color.white)
          .cornerRadius(20)

        Text(viewModel.currentLocation.name)
          .font(.title2)
        Text(viewModel.currentLocation.cityName)
          .font(.subheadline)
      }
      Spacer()
      VStack {
        Button {
          viewModel.toggleDetailLocationView()
        } label: {
          Text("Learn More")
            .foregroundColor(.primary)
            .frame(width: 100, height: 35)
        }
        .buttonStyle(.bordered)
        Button {
          viewModel.showNextLocation()
        } label: {
          Text("Next")
            .foregroundColor(.white)
            .frame(width: 100, height: 35)
        }
        .buttonStyle(.borderedProminent)

      }
    }
    .padding()
    .background(
      RoundedRectangle(cornerRadius: 10)
        .fill(.ultraThinMaterial)
        .offset(y: 65)
        .cornerRadius(10)
    )
    .shadow(
      color: Color.black.opacity(0.3),
      radius: 10,
      x: 0,
      y: 15
    )

  }
}

#Preview{
  LocationsView()
    .environmentObject(LocationsViewModel())
}
