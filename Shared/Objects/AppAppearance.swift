//
 /* 
  * SwiftFin is subject to the terms of the Mozilla Public
  * License, v2.0. If a copy of the MPL was not distributed with this
  * file, you can obtain one at https://mozilla.org/MPL/2.0/.
  *
  * Copyright 2021 Aiden Vigue & Jellyfin Contributors
  */

import Defaults
import SwiftUI

enum AppAppearance: String, CaseIterable, Defaults.Serializable {
    case system
    case dark
    case light

    var localizedName: String {
        switch self {
        case .system:
            return L10n.system
        case .dark:
            return L10n.dark
        case .light:
            return L10n.light
        }
    }

    var style: UIUserInterfaceStyle {
        switch self {
        case .system:
            return .unspecified
        case .dark:
            return .dark
        case .light:
            return .light
        }
    }
}