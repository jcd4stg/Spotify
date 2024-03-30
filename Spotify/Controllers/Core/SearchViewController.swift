//
//  SearchViewController.swift
//  Spotify
//
//  Created by lynnguyen on 16/01/2024.
//

import UIKit
import SafariServices

class SearchViewController: UIViewController, UISearchResultsUpdating, UISearchBarDelegate {
    
    let searchController: UISearchController = {
        let vc = UISearchController(searchResultsController: SearchResultsViewController())
        vc.searchBar.placeholder = "Songs, Artists, Albums"
        vc.searchBar.searchBarStyle = .minimal
        vc.definesPresentationContext = true
        return vc
    }()
        
    private let collectionView: UICollectionView = UICollectionView(
        frame: .zero,
        collectionViewLayout: UICollectionViewCompositionalLayout(
            sectionProvider: { _, _ -> NSCollectionLayoutSection? in
                return SearchViewController.createSectionLayoutForSeachController()
        })
    )
    
    private var categories = [Category]()
    private var viewModel = [CategoryCollectionViewCellViewModel]()
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        searchController.searchResultsUpdater = self
        searchController.searchBar.delegate = self
        navigationItem.searchController = searchController
        
        view.addSubview(collectionView)
        collectionView.register(
            CategoryCollectionViewCell.self,
            forCellWithReuseIdentifier: CategoryCollectionViewCell.identifier
        )
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.backgroundColor = .systemBackground
        
        APICaller.shared.getCategories { [weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let categories):
                    self?.categories = categories
                    self?.viewModel = categories.compactMap({
                        return CategoryCollectionViewCellViewModel(
                            title: $0.name,
                            artworkURL: URL(string: $0.icons.first?.url ?? "")
                        )
                    })
                    self?.collectionView.reloadData()
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
            
        }
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        // Perform search
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        collectionView.frame = view.bounds
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        guard let resultController = searchController.searchResultsController as? SearchResultsViewController,
              let query = searchController.searchBar.text,
              !query.trimmingCharacters(in: .whitespaces).isEmpty else {
            return
        }
        
        resultController.delegate = self
        
        APICaller.shared.search(with: query) { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let result):
                    resultController.update(with: result)
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        }

    }
}
extension SearchViewController: SearchResultsViewControllerDelegate {
    func didTapResult(_ result: SearchResult) {
        switch result {
        case .artist(let model):
            print(model.external_urls)
            guard let url = URL(string: model.external_urls["spotify"] ?? "") else {
                return
            }
            let vc = SFSafariViewController(url: url)
            present(vc, animated: true)
            
        case .album(let model):
            let vc = AlbumViewController(album: model)
            vc.navigationItem.largeTitleDisplayMode = .never
            navigationController?.pushViewController(vc, animated: true)
            
        case .track(let model):
            PlaybackPresenter.shared.startPlayback(
                from: self,
                track: model
            )
            
        case .playlist(let model):
            let vc = PlaylistViewController(playlist: model)
            vc.navigationItem.largeTitleDisplayMode = .never
            navigationController?.pushViewController(vc, animated: true)

        }
    }
    
}
extension SearchViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: CategoryCollectionViewCell.identifier,
            for: indexPath
        ) as? CategoryCollectionViewCell else {
            return UICollectionViewCell()
        }
        let category = viewModel[indexPath.row]
        cell.configure(with: category)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
        
        HapticsManager.shared.vibrateForSelection()
        
        let category = categories[indexPath.row]
        let vc = CategoryViewController(category: category)
        navigationItem.largeTitleDisplayMode = .never
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
    static func createSectionLayoutForSeachController() -> NSCollectionLayoutSection {
        let item = NSCollectionLayoutItem(
            layoutSize: NSCollectionLayoutSize(
                widthDimension: .fractionalWidth(1/2),
                heightDimension: .fractionalHeight(1))
        )
        item.contentInsets = NSDirectionalEdgeInsets(
            top: 2,
            leading: 7,
            bottom: 2,
            trailing: 7
        )
        
        let group = NSCollectionLayoutGroup.horizontal(
            layoutSize: .init(
                widthDimension: .fractionalWidth(1),
                heightDimension: .absolute(150)
            ),
            repeatingSubitem: item,
            count: 2
        )
        
        group.contentInsets = NSDirectionalEdgeInsets(
            top: 10,
            leading: 0,
            bottom: 10,
            trailing: 0
        )
        
        let section = NSCollectionLayoutSection(group: group)
        return section
        
    }
}
