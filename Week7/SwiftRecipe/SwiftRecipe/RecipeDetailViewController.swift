//
//  RecipeDetailViewController.swift
//  SwiftRecipe
//
//  Created by Kaleo Kim on 6/15/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

import UIKit

func heightForText(string: String, constrinedToWidth width:CGFloat) -> CGFloat {
    let nsString = string as NSString
    return nsString.boundingRectWithSize(CGSize(width: width, height: CGFloat.max), options: NSStringDrawingOptions.UsesLineFragmentOrigin, attributes: [NSFontAttributeName: UIFont.systemFontOfSize(17)], context: nil).size.height
}

class RecipeDetailViewController: UIViewController {

    var recipeIndex = 0
    let margin: CGFloat = 15.0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .whiteColor()
        self.title = RARecipes.titleAtIndex(self.recipeIndex)
        
        let scrollView = UIScrollView(frame: self.view.bounds)
        self.view.addSubview(scrollView)
        
        let topMargin: CGFloat = 20.0
        
        //we need to calculate the height of the description
        
        let heightForDescription = heightForText(RARecipes.descriptionAtIndex(self.recipeIndex), constrinedToWidth: self.view.bounds.size.width - 2 * self.margin)
        
        let descriptionLabel = UILabel(frame: CGRect(x: margin, y: topMargin, width: self.view.bounds.size.width - 2 * self.margin, height: heightForDescription))
        descriptionLabel.text = RARecipes.descriptionAtIndex(self.recipeIndex)
        descriptionLabel.numberOfLines = 0
        scrollView.addSubview(description)
        
        var top = topMargin + heightForDescription + margin * 2.0
        
        let ingredientsTitleLabel = UILabel(frame: CGRect(x: margin, y: top, width: self.view.bounds.size.width - 2 * self.margin, height: 20))
        ingredientsTitleLabel.text = "Ingredients"
        ingredientsTitleLabel.font = UIFont.boldSystemFontOfSize(17.0)
        scrollView.addSubview(ingredientsTitleLabel)
        
        top += 20 + margin
        
        let numberOfingredients = RARecipes.ingredientCountAtIndex(self.recipeIndex)
        
        for i in 0..<numberOfingredients {
            let volumeLabel = UILabel(frame: CGRect(x: margin, y: top, width: (self.view.frame.size.width - 2 * margin) / 4, height: 20.0))
            volumeLabel.font = UIFont.boldSystemFontOfSize(15)
            volumeLabel.text = RARecipes.ingredientVolumeAtIndex(i, inRecipeAtIndex: self.recipeIndex)
            scrollView.addSubview(volumeLabel)
            
            let typeLabel = UILabel(frame: CGRect(x: margin + (self.view.frame.size.width - 2 * margin) / 4, y: top, width: (self.view.frame.size.width - 2 * margin) * 3 / 4, height: 20.0))
            typeLabel.numberOfLines = 0
            typeLabel.font = UIFont.boldSystemFontOfSize(15)
            typeLabel.text = RARecipes.ingredientTypeAtIndex(i, inRecipeAtIndex: self.recipeIndex)
            scrollView.addSubview(typeLabel)
            
            top += 20 + margin
        }
        
        top += margin
        
        let directionsTitleLabel = UILabel(frame: CGRect(x: margin, y: top, width: self.view.frame.size.width - 2 * margin, height: 20.0))
        directionsTitleLabel.text = "Directions"
        directionsTitleLabel.font = UIFont.boldSystemFontOfSize(15)
        scrollView.addSubview(directionsTitleLabel)
        
        top += 20 + margin
        
        let numberOfDirections = RARecipes.directionsAtIndex(self.recipeIndex).count
        for 
    }

}






