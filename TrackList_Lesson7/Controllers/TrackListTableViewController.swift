//
//  TrackListTableViewController.swift
//  TrackList_Lesson7
//
//  Created by Artjoms Vorona on 09/11/2019.
//  Copyright © 2019 Artjoms Vorona. All rights reserved.
//

import UIKit

class TrackListTableViewController: UITableViewController {
    
//    var trackList = [
//        "Carly Rae Japsen - Dedicated",
//        "Dj Khaled - Father of",
//        "Injury Reserve - Jailbrake",
//        "Jonas Brothers - Happiness Begins ",
//        "Joyner Lucas - adhd",
//        "Maluma - 11-11",
//        "Never Young - LOSER",
//        "Rammstein - rammstein",
//        "Skepta - Ignorance Is Bliss",
//        "Skillet - Victory",
//        "Tylor the Creator - IGOR",
//        "YG - Stop Snitching",
//    ]
    
    var songs = Song.createSong()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

         self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
//        return trackList.count
        return songs.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TrackListCell", for: indexPath)

//        cell.textLabel?.text = trackList[indexPath.row]
//        cell.textLabel?.numberOfLines = 0
//
//        cell.imageView?.image = UIImage(named: trackList[indexPath.row])
        
        let song = songs[indexPath.row]
        cell.textLabel?.text = song.track
        cell.detailTextLabel?.text = song.album
        cell.imageView?.image = UIImage(named: song.cover)

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }



    // MARK: - Table View Delegate
    
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        
//        let currentTrack = trackList.remove(at: fromIndexPath.row)
//        trackList.insert(currentTrack, at: to.row)
        
        let currentTrack = songs.remove(at: fromIndexPath.row)
        songs.insert(currentTrack, at: to.row)
        
        tableView.reloadData()
    }

    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .none
    }

    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            let detailVC = segue.destination as! DetailViewController
//            detailVC.trackName = trackList[indexPath.row]
            detailVC.song = songs[indexPath.row]
        }
    }
    

}
