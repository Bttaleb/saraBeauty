import SwiftUI

struct ContentView: View {
    var body: some View {
        Group {
            if #available(iOS 18, *) {
                NewTabView()
                    .tabViewBottomAccessory {
                        // Add any bottom accessory content you want for iOS 18+
                    }
            } else {
                LegacyTabView()
            }
        }
    }

    // iOS 18+ using the new Tab initializer API
    @ViewBuilder
    private func NewTabView() -> some View {
        TabView {
            Tab("Home", systemImage: "house") {
                NavigationStack {
                    HomeView()
                        .navigationTitle("Home")
                }
            }

            Tab("Library", systemImage: "square.stack") {
                NavigationStack {
                    LibraryView()
                        .navigationTitle("Library")
                }
            }

            Tab("Account", systemImage: "person") {
                NavigationStack {
                    AccountView()
                        .navigationTitle(Text("Account"))
                }
            }

            Tab("Search", systemImage: "magnifyingglass", role: .search) {
                SearchView()
            }
        }
        .symbolRenderingMode(.monochrome)
        .tint(Color(red: 0.6627, green: 0.8275, blue: 0.6196))
    }

    // Fallback for earlier iOS using classic .tabItem
    @ViewBuilder
    private func LegacyTabView() -> some View {
        TabView {
            NavigationStack {
                HomeView()
                    .navigationTitle("Home")
            }
            .tabItem { Label("Home", systemImage: "house") }

            NavigationStack {
                LibraryView()
                    .navigationTitle("Library")
            }
            .tabItem { Label("Library", systemImage: "square.stack") }

            AccountView()
                .tabItem { Label("Account", systemImage: "person") }

            SearchView()
                .tabItem { Label("Search", systemImage: "magnifyingglass") }
        }
    }

    @ViewBuilder
    func PlayerInfo(_ size: CGSize) -> some View {
        HStack(spacing: 12) {
            RoundedRectangle(cornerRadius: size.height / 4)
                .fill(.blue.gradient)
                .frame(width: size.width, height: size.height)

            VStack(alignment: .leading, spacing: 6) {

            }
        }
    }
}

#Preview {
    ContentView()
}
