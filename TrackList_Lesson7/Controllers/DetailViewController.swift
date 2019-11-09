//
//  DetailViewController.swift
//  TrackList_Lesson7
//
//  Created by Artjoms Vorona on 09/11/2019.
//  Copyright © 2019 Artjoms Vorona. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
//    var trackName: String!

    var song: Song!
    
    @IBOutlet weak var trackImageView: UIImageView!
    @IBOutlet weak var trackNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        trackImageView.image = UIImage(named: trackName)
//        trackNameLabel.text = trackName
        trackImageView.image = UIImage(named: song.cover)
        trackNameLabel.text = song.track + " " + song.album
    }
    
}
