//
//  LoadingIndicatorView.swift
//  Twitar
//
//  Created by  OYEBODE YUSUF AYODEJI on 10/1/23.
//

import SwiftUI

struct LoadingIndicatorView: View {
	//			MARK: - Properties
	var tintColor: Color = .secondary
	var scaleSize: CGFloat = 2.0
	
	//			MARK: - Body
    var body: some View {
			ProgressView()
				.scaleEffect(scaleSize, anchor: .center)
				.progressViewStyle(CircularProgressViewStyle(tint: tintColor))
    }
}

#Preview {
    LoadingIndicatorView()
}
