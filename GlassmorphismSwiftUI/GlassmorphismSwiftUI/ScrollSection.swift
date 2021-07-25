//
//  ScrollSection.swift
//  GlassmorphismSwiftUI
//
//  Created by Shreyas Vilaschandra Bhike on 25/07/21.
//

import SwiftUI

struct ScrollSection: View {
    var body: some View {
        ScrollView(.horizontal , showsIndicators: false) {
            HStack(spacing: 20) {
                Circle()
                Circle()
                Circle()
            }
        }
    }
}

struct ScrollSection_Previews: PreviewProvider {
    static var previews: some View {
        ScrollSection()
    }
}
