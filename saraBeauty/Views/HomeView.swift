//
//  HomeView.swift
//  saraBeauty
//
//  Created by Bassel Taleb on 9/30/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    ForEach(MockData.items) { item in
                        Circle()
                            .frame(width: 100, height: 100)
                            .foregroundStyle(item.color.gradient)
                    }
                }
            }
        }
        .padding()
    }
}

#Preview {
    HomeView()
}

struct Item: Identifiable {
    let id = UUID()
    let color : Color
}

struct MockData {
    static var items = [
        Item(color: .teal),
        Item(color: .pink),
        Item(color: .orange),
        Item(color: .green),
        Item(color: .yellow)]
}

