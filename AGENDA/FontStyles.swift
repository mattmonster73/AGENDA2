//
//  FontStyles.swift
//  AGENDA
//
//  Created by Emeka Martin Eke on 31/05/2023.
//

import Foundation
import SwiftUI

extension Font {

    static var navTitle: Font {
        return Font.custom("Mulish-Bold", size: 17)
    }
    static var taskText: Font {
        return Font.custom("Mulish-SemiBold", size: 14)
    }
    static var taskNormalText: Font {
        return Font.custom("Mulish-SemiBold", size: 12)
    }
}
