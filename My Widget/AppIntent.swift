//
//  AppIntent.swift
//  My Widget
//
//  Created by Miro Mathys on 24.12.2024.
//

import WidgetKit
import AppIntents

struct ConfigurationAppIntent: WidgetConfigurationIntent {
    static var title: LocalizedStringResource { "Configuration" }
    static var description: IntentDescription { "This is an example widget." }

    // An example configurable parameter.
    @Parameter(title: "Lieblings Emoji", default: "🧋")
    var favoriteEmoji: String
}
