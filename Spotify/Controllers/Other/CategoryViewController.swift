//
//  CategoryViewController.swift
//  Spotify
//
//  Created by lynnguyen on 01/02/2024.
//

import UIKit

class CategoryViewController: UIViewController {
    
    private let categoy: Category
    
    private let collectionView: UICollectionView = UICollectionView(
        frame: .zero,
        collectionViewLayout: UICollectionViewCompositionalLayout(
            sectionProvider: { _, _ -> NSCollectionLayoutSection? in
                let item = NSCollectionLayoutItem(
                    layoutSize: .init(
                        widthDimension: .fractionalWidth(1/2),
                        heightDimension: .fractionalHeight(1)
                    )
                )
                
                item.contentInsets = NSDirectionalEdgeInsets(
                    top: 5,
                    leading: 5,
                    bottom: 5,
                    trailing: 5
                )
                
                let group = NSCollectionLayoutGroup.horizontal(
                    layoutSize: .init(
                        widthDimension: .fractionalWidth(1),
                        heightDimension: .absolute(250)
                    ),
                    repeatingSubitem: item,
                    count: 2
                )
                
                group.contentInsets = NSDirectionalEdgeInsets(
                    top: 5,
                    leading: 5,
                    bottom: 5,
                    trailing: 5
                )
                
                let section = NSCollectionLayoutSection(group: group)
                return section
            })
    )
    
    // MARK: - Init
    init(category: Category) {
        self.categoy = category
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private var playlists = [Playlist]()
    
    // MARK: - lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = categoy.name
        
        view.backgroundColor = .systemBackground
        view.addSubview(collectionView)
        collectionView.backgroundColor = .systemBackground
        collectionView.register(
            FeaturedPlaylistCollectionViewCell.self,
            forCellWithReuseIdentifier: FeaturedPlaylistCollectionViewCell.identifier
        )
        collectionView.delegate = self
        collectionView.dataSource = self
        
        APICaller.shared.getCategoryPlaylists(category: categoy) { [weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let playlists):
                    self?.playlists = playlists
                    self?.collectionView.reloadData()
                case .failure(let error):
                    print(error.localizedDescription)
                }
                
            }
            
        }
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        collectionView.frame = view.bounds
    }
}

extension CategoryViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return playlists.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: FeaturedPlaylistCollectionViewCell.identifier,
            for: indexPath
        ) as? FeaturedPlaylistCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        let playlist = playlists[indexPath.row]
        
        cell.configure(with: FeaturedPlaylistCellViewModel(
            name: playlist.name,
            artworkURL: URL(string: playlist.images.first?.url ?? ""),
            creatorName: playlist.owner.display_name
        ))
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
    
        let vc = PlaylistViewController(playlist: playlists[indexPath.row])
        vc.navigationItem.largeTitleDisplayMode = .never
        navigationController?.pushViewController(vc, animated: true)
    }
}
