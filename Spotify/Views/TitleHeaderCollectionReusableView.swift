//
//  TitleHeaderCollectionReusableView.swift
//  Spotify
//
//  Created by lynnguyen on 29/01/2024.
//

import UIKit

final class TitleHeaderCollectionReusableView: UICollectionReusableView {
    static let identifier = String(describing: TitleHeaderCollectionReusableView.self)
    
    private let label: UILabel = {
        let label = UILabel()
        label.textColor = .label    
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 18, weight: .regular)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemBackground
        addSubview(label)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        label.frame = CGRect(x: 15, y: 0, width: width - 30, height: height)
    }
    
    func configure(with title: String) {
        label.text = title
    }
}
