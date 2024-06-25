//
//  WBContactWidget_Previews.swift
//  WBContact
//
//  Created by Samir on 23.06.2024.
//

import SwiftUI
import WidgetKit

struct WBContactWidget_Previews: PreviewProvider {
    static var previews: some View {
        WBContactWidgetEntryView(entry: SimpleEntry(date: Date(), configuration: ConfigurationIntent()))
            .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}

