//
//  Download.swift
//  DownTube
//
//  Created by Adam Boyd on 2016-06-05.
//  Copyright © 2016 Adam. All rights reserved.
//

import Foundation

class Download: NSObject {
    var url: String
    var isDownloading: Bool = false
    var progress: Float = 0.0
    
    var downloadTask: URLSessionDownloadTask?
    var resumeData: Data?
    
    init(url: String) {
        self.url = url
    }
    
    var isDone: Bool {
        return self.progress >= 1
    }
}
