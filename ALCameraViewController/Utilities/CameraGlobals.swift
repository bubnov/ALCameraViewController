//
//  CameraGlobals.swift
//  ALCameraViewController
//
//  Created by Alex Littlejohn on 2016/02/16.
//  Copyright © 2016 zero. All rights reserved.
//

import UIKit
import AVFoundation

internal let itemSpacing: CGFloat = 1
internal let columns: CGFloat = 4
internal let thumbnailDimension = (UIScreen.main.bounds.width - ((columns * itemSpacing) - itemSpacing))/columns
internal let scale = UIScreen.main.scale

public class CameraGlobals {
    public static let shared = CameraGlobals()
    
    public var bundle = Bundle(for: CameraViewController.self)
    public var bundleForString:Bundle = {
        let tempBundle = Bundle(for: CameraViewController.self)
        print(tempBundle.path(forResource: "ALCameraViewControllerStrings", ofType: "bundle"))
        print(tempBundle.path(forResource: "ALCameraViewControllerStrings.bundle", ofType: nil))
        print(Bundle.main.path(forResource: "ALCameraViewControllerStrings.bundle", ofType: nil))
        print(Bundle.main.path(forResource: "ALCameraViewControllerStrings.bundle", ofType: nil))
        let stringsBundlePath:String = tempBundle.path(forResource: "ALCameraViewControllerStrings", ofType: "bundle")!
        let bundle = Bundle(path: stringsBundlePath)!// ?? Bundle.main
//        print(bundle.path(forResource: "ConfirmViewController", ofType: "xib"))
//        print(bundle.loadNibNamed("ConfirmViewController", owner: nil, options: nil))
        print( try? FileManager.default.contentsOfDirectory(atPath: stringsBundlePath))

        return bundle
    }()
    
    public var stringsTable = NSLocale.current.languageCode
    public var photoLibraryThumbnailSize = CGSize(width: thumbnailDimension, height: thumbnailDimension)
    public var defaultCameraPosition = AVCaptureDevicePosition.back
}

func recursivePathsForResources(type: String, bundlePath: String) -> [NSURL] {
    
    print( try? FileManager.default.contentsOfDirectory(atPath: bundlePath))
    
//    // Enumerators are recursive
//    let enumerator = FileManager.default.enumerator(atPath: bundlePath)
//    var filePaths = [NSURL]()
//    
//    while let filePath = enumerator?.nextObject() as? String {
//        
//        if NSURL(fileURLWithPath: filePath).pathExtension == type {
//            filePaths.append(bundlePath.URLByAppendingPathComponent(filePath))
//        }
//    }
    
//    return filePaths
    return []
}
