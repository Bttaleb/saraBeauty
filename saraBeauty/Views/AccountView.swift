//
//  AccountView.swift
//  saraBeauty
//
//  Created by Bassel Taleb on 9/30/25.
//
import SwiftUI

struct AccountView: View {
    var body: some View {
        NavigationStack {
            Form {
                //add user icon and username above profile, centered with  invisible background
                Section {
                    Group {
                        NavigationLink {
                            AccountInfoOV()
                        } label: {
                            Label("account", systemImage: "person.circle.fill")
                        }
                        NavigationLink {
                            SubscriptionOV()
                        } label: {
                            Label("subscription", systemImage: "book.circle.fill")
                                
                        }
                    }
                    .fontWeight(.bold)
                    .symbolRenderingMode(.monochrome)
                    .foregroundStyle(Color(red: 0.6627, green: 0.8275, blue: 0.6196))
                } header: {
                    Text("Profile")
                        .foregroundStyle(.primary)
                }
            }
        }
    }
}

#Preview {
    AccountView()
}
