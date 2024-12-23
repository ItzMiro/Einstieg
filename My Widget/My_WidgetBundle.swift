//
//  My_WidgetBundle.swift
//  My Widget
//
//  Created by Miro Mathys on 24.12.2024.
//

import WidgetKit
import SwiftUI

@main
struct My_WidgetBundle: WidgetBundle {
    var body: some Widget {
        My_Widget()
        My_WidgetControl()
        My_WidgetLiveActivity()
    }
}
