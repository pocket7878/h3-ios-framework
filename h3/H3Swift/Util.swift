//
//  Util.swift
//  h3Swift
//
//  Created by 十亀眞怜 on 2018/07/27.
//  Copyright © 2018年 Pocket7878. All rights reserved.
//

import Foundation
import H3

public func degsToRads(_ double: Double) -> Double {
    return H3.degsToRads(double)
}

public func radsToDegs(_ double: Double) -> Double {
    return H3.radsToDegs(double)
}

public enum DistanceUnit {
    case km
    case m
}

public func hexArea(res: Int32, unit: DistanceUnit) -> Double {
    switch(unit) {
    case .km:
        return H3.hexAreaKm2(res)
    case .m:
        return H3.hexAreaM2(res)
    }
}

public func edgeLength(res: Int32, unit: DistanceUnit) -> Double {
    switch(unit) {
    case .km:
        return H3.edgeLengthKm(res)
    case .m:
        return H3.edgeLengthM(res)
    }
}

public func numHexagons(res: Int32) -> Int64 {
    return H3.numHexagons(res)
}
