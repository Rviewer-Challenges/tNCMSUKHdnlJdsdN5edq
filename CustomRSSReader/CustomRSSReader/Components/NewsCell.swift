//
//  NewsCell.swift
//  CustomRSSReader
//
//  Created by Mario Hernandez Corral on 29/6/22.
//

import SwiftUI

struct NewsCell: View {
	
	var newsImage = "sample"
	var newsSource = "Apple Sfera"
	var newsDate = "4/8"
	var newsTitle = "Iphone 14 reveal images are true, watch them!"
	
	let cellHeight = UIScreen.main.bounds.height * 0.15
	
    var body: some View {
		HStack(alignment: .top, spacing: 15) {
			Image(newsImage)
				.resizable()
				.frame(width: 140, height: 120)
				.scaledToFit()
				.cornerRadius(20)
			
			VStack (alignment: .leading, spacing: 15) {
				HStack {
					Text(newsSource)
						.font(.headline)
					Spacer()
					Text(newsDate)
						.foregroundColor(.gray)
				}
				Text(newsTitle)
					.font(.title3)
					.bold()
			}
		}
		.frame(height: cellHeight)
		.padding()
    }
}

struct NewsCell_Previews: PreviewProvider {
    static var previews: some View {
        NewsCell()
    }
}
