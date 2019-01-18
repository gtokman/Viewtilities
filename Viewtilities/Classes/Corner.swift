//
//  Corner.swift
//  Pods-Viewtilities_Example
//
//  Created by Gary Tokman on 1/18/19.
//

/// Corner values that map to `CACornerMask`
public enum Corner {
    case bottomLeft, bottomRight, topLeft, topRight, all, top, bottom

    public var cornerMask: CACornerMask {
        switch self {
        case .bottomRight:
            return CACornerMask.layerMaxXMaxYCorner
        case .bottomLeft:
            return CACornerMask.layerMinXMaxYCorner
        case .topLeft:
            return CACornerMask.layerMinXMinYCorner
        case .topRight:
            return CACornerMask.layerMaxXMinYCorner
        case .top:
            return [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        case .bottom:
            return [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
        case .all:
            return [.layerMaxXMaxYCorner, .layerMinXMaxYCorner, .layerMinXMinYCorner, .layerMaxXMinYCorner]
        }
    }

}
