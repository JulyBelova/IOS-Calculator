//
//  CalcHeaderCell.swift
//  IOS Calculator App
//
//  Created by July Belova on 17.02.2024.
//

import UIKit

class CalcHeaderCell: UICollectionReusableView {
    
    static let identifier = "CalcHeaderCell"
    
    //MARK: - UI Components
    private let label: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.textAlignment = .right
        label.font = .systemFont(ofSize: 72, weight: .regular)
        label.text = "Error"
        return label
    }()

    
    //MARK: - livecycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupUI()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Configure
    public func congigure(currentCalcText: String) {
        self.label.text = currentCalcText
    }
    
    //MARK: - UI Setup
    private func setupUI() {
        self.backgroundColor = .black
        
        self.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            self.label.trailingAnchor.constraint(equalTo: self.layoutMarginsGuide.trailingAnchor),
            self.label.leadingAnchor.constraint(equalTo: self.layoutMarginsGuide.leadingAnchor),
            self.label.bottomAnchor.constraint(equalTo: self.layoutMarginsGuide.bottomAnchor),
        ])
    }
    
    
}
