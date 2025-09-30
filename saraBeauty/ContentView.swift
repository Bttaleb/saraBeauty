import SwiftUI

struct ContentView: View {
    @State private var searchText: String = ""
    var body: some View {
        Group {
            if #available(iOS 26, *) {
                NativeTabView()
                    .tabViewBottomAccessory {
                        
                    }
            } else {
                NativeTabView()
            }
        }
    }
    @ViewBuilder
    func NativeTabView() -> some View {
        TabView {
            Tab.init("Home", systemImage: "house") {
                NavigationStack {
                    List {
                        
                    }
                    .navigationTitle(Text("Blome"))
                }
            }
            
            Tab.init("Library", systemImage: "square.stack") {
                NavigationStack {
                    List {
                        
                    }
                    .navigationTitle(Text("Library"))
                }
            }
            
            Tab.init("Account", systemImage: "person") {
                NavigationStack {
                    List {
                        
                    }
                    .navigationTitle(Text("Account"))
                }
            }
            
            Tab.init("Search", systemImage: "magnifyingglass", role: .search) {
                NavigationStack {
                    List {
                        
                    }
                    .navigationTitle("Search")
                    .searchable(text: $searchText, placement: .toolbar, prompt: Text("Search..."))
                }
            }
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
