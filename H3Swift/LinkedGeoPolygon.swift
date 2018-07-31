//
//  LinkedGeoPolygon.swift
//  h3Swift
//
//  Created by 十亀眞怜 on 2018/07/27.
//  Copyright © 2018年 Pocket7878. All rights reserved.
//

import Foundation
import H3

public func destroyLinkedGeoPolygon(polygon: inout LinkedGeoPolygon) {
    withUnsafeMutablePointer(to: &polygon) { (ptr) -> Void in
        H3.destroyLinkedPolygon(ptr)
    }
}
