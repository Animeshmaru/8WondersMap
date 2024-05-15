import SwiftUI

@main
struct EightWondersMapApp: App {
    @StateObject private var viewModel = LocationsViewModel()
    var body: some Scene {
        WindowGroup {
            LocationsView()
                .environmentObject(viewModel)
        }
    }
}
