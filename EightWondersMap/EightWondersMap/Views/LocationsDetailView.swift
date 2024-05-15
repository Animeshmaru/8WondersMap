import MapKit
import SwiftUI

struct LocationsDetailView: View {
  @EnvironmentObject private var viewModel: LocationsViewModel
  let location: Location

  var body: some View {
    ScrollView {
      VStack {
        imageSection
        VStack(alignment: .leading) {
          titleSection
          Divider()
          bodySection
          Divider()
          mapSection
            .cornerRadius(30)
            .frame(height: 300)
            .frame(maxWidth: .infinity)
        }
        .frame(maxWidth: .infinity)
        .padding()
      }
      .background(.ultraThinMaterial)
      .overlay(dismissButton, alignment: .topLeading)
    }
    .ignoresSafeArea()
  }
}

#Preview{
  LocationsDetailView(location: LocationsDataService.locations.first!)
}

extension LocationsDetailView {
  private var imageSection: some View {
    TabView {
      ForEach(location.imageNames, id: \.self) { imageName in
        Image(imageName)
          .resizable()
          .scaledToFill()
          .frame(
            width: UIScreen.main.bounds.width
          )
          .clipped()
      }
    }
    .frame(height: 400)
    .tabViewStyle(.page)
  }

  private var titleSection: some View {
    VStack(alignment: .leading) {
      Text(location.name)
        .foregroundColor(.primary)
        .font(.largeTitle)
        .fontWeight(.bold)
      Text(location.cityName)
        .foregroundColor(.secondary)
        .fontWeight(.semibold)
    }
  }

  private var bodySection: some View {
    VStack(alignment: .leading) {
      Text(location.description)
        .font(.body)
        .foregroundColor(.secondary)
      Link(destination: URL(string: location.link)!) {
        Text("Read more at WikiPedia")
          .font(.title3)
          .foregroundStyle(.blue)
          .padding(.vertical, 16)
      }
    }
  }

  private var mapSection: some View {
    Map(
      coordinateRegion: .constant(
        MKCoordinateRegion(
          center: location.coordinates,
          span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))),
      annotationItems: [location]
    ) { location in
      MapAnnotation(coordinate: location.coordinates) {
        LocationsAnnotationView()
      }
    }
    .allowsHitTesting(false)
  }

  private var dismissButton: some View {
    Button {
      viewModel.toggleDetailLocationView()
    } label: {
      Image(systemName: "xmark")
        .font(.headline)
        .foregroundColor(.primary)
        .padding(16)
        .background(.ultraThickMaterial)
        .cornerRadius(10)
        .padding()
    }

  }
}
