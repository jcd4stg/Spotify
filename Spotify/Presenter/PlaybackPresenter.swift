//
//  PlaybackPresenter.swift
//  Spotify
//
//  Created by lynnguyen on 04/02/2024.
//

import Foundation
import UIKit
import AVFoundation

protocol PlayerDatasource: AnyObject {
    var songName: String? { get }
    var subtitle: String? { get }
    var imageURL: URL? { get }
}

final class PlaybackPresenter {
    static let shared = PlaybackPresenter()
    
    private var track: AudioTrack?
    private var tracks: [AudioTrack] = []
    
    var index = 0
    
    var currentTrack: AudioTrack? {
        if let track = track, tracks.isEmpty {
            return track
        }
        else if let player = self.playerQueue, !tracks.isEmpty {
            return tracks[index]
        }
        return nil
    }
    
    var player: AVPlayer?
    var playerQueue: AVQueuePlayer?
    
    var playerVC: PlayerViewController?
    
    func startPlayback(
        from viewController: UIViewController, 
        track: AudioTrack
    ) {
        guard let url = URL(string: track.preview_url ?? "") else {
            return
        }
        player = AVPlayer(url: url)
        player?.volume = 0.5
        
        self.tracks = []
        self.track = track

        let vc = PlayerViewController()
        vc.title = track.name
        vc.dataSource = self
        vc.delegate = self
        
        viewController.present(UINavigationController(rootViewController: vc), animated: true) { [weak self] in
            self?.player?.play()
        }
        
        playerVC = vc
    }
    
    func startPlayback(
        from viewController: UIViewController,
        tracks: [AudioTrack]
    ) {
        self.tracks = tracks
        self.track = nil
        
        playerQueue = AVQueuePlayer(items: tracks.compactMap({
            guard let url = URL(string: $0.preview_url ?? "") else {
                return nil
            }
            return AVPlayerItem(url: url)
            
        }))
        playerQueue?.volume = 0.5
        playerQueue?.play()
        
        let vc = PlayerViewController()
        vc.dataSource = self
        vc.delegate = self

        viewController.present(UINavigationController(rootViewController: vc), animated: true, completion: nil)
        playerVC = vc

    }

}

extension PlaybackPresenter: PlayerDatasource {
    var songName: String? {
        return currentTrack?.name
    }
    
    var subtitle: String? {
        return currentTrack?.artists.first?.name
    }
    
    var imageURL: URL? {
        return URL(string: currentTrack?.album?.images.first?.url ?? "")
    }
}

extension PlaybackPresenter: PlayerViewControllerDelegate {
    
    func didSlideSlider(_ value: Float) {
        player?.volume = value
    }

    func didTapPlayPause() {
        if let player = player {
            if player.timeControlStatus == .playing {
                player.pause()
            }
            else if player.timeControlStatus == .paused {
                player.play()
            }
        }
        else if let player = playerQueue {
            if player.timeControlStatus == .playing {
                player.pause()
            }
            else if player.timeControlStatus == .paused {
                player.play()
            }
        }
    }
    
    func didTapForward() {
        if tracks.isEmpty {
            // not playlist or album
            player?.pause()
        }
        else if let player = playerQueue {
            player.advanceToNextItem()
            index += 1
            print(index)
            playerVC?.refreshUI()
        }
    }
    
    func didTapBackward() {
        if tracks.isEmpty {
            // not playlist or album
            player?.pause()
            player?.play()
        }
        else if let firstItem = playerQueue?.items().first {
            playerQueue?.pause()
            playerQueue?.removeAllItems()
            playerQueue = AVQueuePlayer(items: [firstItem])
            playerQueue?.play()
            playerQueue?.volume = 0.5

        }
    }
}
