//
//  PhotoCollectionViewCell.swift
//  PhotoCollection
//
//  Created by Spencer Curtis on 8/2/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class PhotoCollectionViewCell: UICollectionViewCell {

    var photo: Photo?
    var imageView = UIImageView()
    var photoLabel = UILabel()


    func updateViews() {
        guard let photo = photo else { return }

        imageView.image = UIImage(data: photo.imageData)
        photoLabel.text = photo.title
    }

    func setUPSubviews() {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit

        addSubview(imageView)

        // This is the Y Positions
        NSLayoutConstraint(item: imageView,
                           attribute: .top,
                           relatedBy: .equal,
                           toItem: self,
                           attribute: .top,
                           multiplier: 1,
                           constant: 4).isActive = true

        // This is the X Position
        NSLayoutConstraint(item: imageView,
                           attribute: .leading,
                           relatedBy: .equal,
                           toItem: self,
                           attribute: .leading,
                           multiplier: 1,
                           constant: 4).isActive = true

        // This is th Width
         NSLayoutConstraint(item: imageView,
                                  attribute: .trailing,
                                  relatedBy: .equal,
                                  toItem: self,
                                  attribute: .trailing,
                                  multiplier: 1,
                                  constant: -4).isActive = true
        // This is the Height
        NSLayoutConstraint(item: imageView,
                                  attribute: .height,
                                  relatedBy: .equal,
                                  toItem: imageView,
                                  attribute: .width,
                                  multiplier: 1,
                                  constant: 0).isActive = true


    }

    
}
