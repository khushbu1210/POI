//
//  Movie.swift
//  MOvie_Assignment
//
//  Created by Macstudent on 2017-04-07.
//  Copyright © 2017 Macstudent. All rights reserved.
//


import Foundation


class Movie
{
    
    var Movie_Id: String!
    var Movie_Name: String!
    var Release_Date:String!
    var Actor_Name:String!
    var Actress_Name:String!
    var Movie_Category:String!
    var Director_Name:String!
    var Postor_Image:String!
    var Prodcution_Company:String!
    var Duration:String!
    var Award:String!
    
    
    
    init(Movie_Id: String,Movie_Name: String,Release_Date:String,Actor_Name:String,Actress_Name:String,Movie_Category:String,Director_Name:String,Postor_Image:String,Prodcution_Company:String,Duration:String,Award:String)
    {
        
        self.Movie_Id = Movie_Id
        self.Movie_Name = Movie_Name
        self.Release_Date = Release_Date
        self.Actor_Name = Actor_Name
        self.Actress_Name = Actress_Name
        self.Movie_Category = Movie_Category
        self.Director_Name = Director_Name
        self.Postor_Image = Postor_Image
        self.Prodcution_Company = Prodcution_Company
        self.Duration = Duration
        self.Award = Award
    }
    
    func getMovie_Id() -> String
    {
        return Movie_Id
    }
    
    func getMovie_Name() -> String
    {
        return Movie_Name
    }
    func getRelease_Date () -> String
    {
        return Release_Date
    }
    func getActor_Name () -> String
    {
        return Actor_Name
    }
    func getActress_Name() -> String
    {
        return Actress_Name
    }
    func getMovie_Category() -> String
    {
        return Movie_Category
    }
    func getDirector_Name() -> String
    {
        return Director_Name
    }
    func getPostor_Image() -> String
    {
        return Postor_Image
    }
    func getProdcution_Company() -> String
    {
        return Prodcution_Company
    }
    func getDuration() -> String
    {
        return Duration    }
    func getAward() -> String
    {
        return Award
    }
    
    
    
}

