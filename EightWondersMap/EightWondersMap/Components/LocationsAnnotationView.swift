import SwiftUI

struct LocationsAnnotationView: View {
  var body: some View {
    VStack {
      Image(systemName: "map.circle")
        .resizable()
        .scaledToFit()
        .font(.headline)
        .foregroundColor(.white)
        .frame(width: 20, height: 20)
        .padding(6)
        .background(.red)
        .clipShape(Circle())
      
      Image(systemName: "triangle.fill")
        .resizable()
        .scaledToFit()
        .font(.headline)
        .foregroundColor(.red)
        .frame(width: 8, height: 8)
        .rotationEffect(Angle(degrees: 180))
        .offset(y: -10)
        .padding(.bottom, 40)
    }
  }
}

#Preview{
  LocationsAnnotationView()
}
