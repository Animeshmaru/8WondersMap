import SwiftUI

struct LocationListView: View {
  @EnvironmentObject private var viewModel: LocationsViewModel
  
  var body: some View {
    List {
      ForEach(viewModel.locations) { location in
        Button {
          viewModel.updateCurrentLoaction(location: location)
        } label: {
          LocationsListItemView(location: location)
        }
        .listRowBackground(Color.clear)
      }
    }
    .listStyle(.plain)
  }
}

struct LocationsListItemView: View {
  var location: Location
  
  var body: some View {
    HStack(spacing: 15) {
      if let imageName = location.imageNames.first {
        Image(imageName)
          .resizable()
          .frame(width: 45, height: 45)
          .scaledToFit()
          .cornerRadius(10)
      }
      VStack(alignment: .leading) {
        Text(location.name)
          .font(.headline)
        Text(location.cityName)
          .font(.subheadline)
      }
      .frame(maxWidth: .infinity, alignment: .leading)
    }
  }
}

#Preview{
  LocationListView()
    .environmentObject(LocationsViewModel())
}
