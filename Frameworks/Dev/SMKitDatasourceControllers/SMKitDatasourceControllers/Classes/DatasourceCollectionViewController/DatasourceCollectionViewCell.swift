//
//  DatasourceCell.swift
//  Components
//
//  Created by Jeany Sergei Meza Rodriguez on 2017/01/02.
//  Copyright © 2017 OneVision. All rights reserved.
//

import UIKit
import SMKitExtensions

/// DatasourceCollectionViewCell is the base cell class for all headers, cells, and footers used in DatasourceController and Datasource.  Using this cell, you can access the row's model object via datasourceItem.  You can also access the controller as well.
open class DatasourceCollectionViewCell: UICollectionViewCell {
   
   open var datasourceItem: Any?
   open weak var controller: DatasourceCollectionViewController?
   
   open let separatorLineView: UIView = {
      let lineView = UIView()
      lineView.backgroundColor = UIColor.init(white: 0, alpha: 0.5)
      lineView.isHidden = true
      return lineView
   }()
   
   override public init(frame: CGRect) {
      super.init(frame: frame)
      setupViews()
   }
   
   ///Override this method to provide your own custom views.
   open func setupViews() {
      clipsToBounds = true
      contentView.addSubview(separatorLineView)
      separatorLineView.addAnchors(toTop: nil, toRight: contentView.rightAnchor, toBottom: contentView.bottomAnchor, toLeft: contentView.leftAnchor, topConstant: 0, rightConstant: 0, leftConstant: 0, bottomConstant: 0, width: 0, height: 0.5)
   }
   
   public required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}
