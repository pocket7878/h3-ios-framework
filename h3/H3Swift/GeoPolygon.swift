//
//  GeoPolygon.swift
//  h3Swift
//
//  Created by 十亀眞怜 on 2018/07/27.
//  Copyright © 2018年 Pocket7878. All rights reserved.
//

import Foundation
import H3

public extension GeoPolygon {
    public mutating func polyfill(res: Int32) -> Array<H3Index> {
        let sz = Int(maxPolyfillSize(res: res))
        var buf: Array<H3.H3Index> = Array(repeating: 0, count: sz)
        buf.withUnsafeMutableBufferPointer { (bufPtr) -> Void in
            H3.polyfill(&self, res, bufPtr.baseAddress)
        }
        return buf.filter({$0 != 0}).map({H3Index($0)})
    }
    
    public mutating func maxPolyfillSize(res: Int32) -> Int32 {
        return withUnsafePointer(to: &self) { (inPtr) -> Int32 in
            return H3.maxPolyfillSize(inPtr, res)
        }
    }
}
