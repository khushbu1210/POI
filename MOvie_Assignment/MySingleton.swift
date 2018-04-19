//
//  MySingleton.swift
//  MOvie_Assignment
//
//  Created by Macstudent on 2017-04-07.
//  Copyright © 2017 Macstudent. All rights reserved.
//func getMovie_Id() -> String









import Foundation
class MySingleton
{
    
    private var MovieList = [Movie]()
    private init(){}
    
    static let sharedInstant: MySingleton=MySingleton()
    
    func getMovieById(MovieName:String) -> Movie?{
        //return Movie(MovieName:"admin", MoviePassword:"pas123")
        for khushbu in MovieList
        {
            if (khushbu.getMovie_Name() == MovieName) {
                return khushbu
            }
            
        }
        return nil
    }
    
    
    
    func getPostor_Image(Postor_Image :String) -> Movie?{
        //return Movie(MovieName:"admin", MoviePassword:"pas123")
        for heli in MovieList
        {
            if (heli.getPostor_Image() == Postor_Image) {
                return heli
            }
            
        }
        return nil
    }
    func getProdcution_Company(Prodcution_Company :String) -> Movie?{
        //return Movie(MovieName:"admin", MoviePassword:"pas123")
        for heli in MovieList
        {
            if (heli.getProdcution_Company() == Prodcution_Company) {
                return heli
            }
            
        }
        return nil
    }
    
    
        
    
    
    
    func addNewMovie(newMovie:Movie) {
        MovieList.append(newMovie)
    }
    
    func getAllMovies() -> [Movie]{
        return MovieList
    }
    
    func deletemoview(id:Int)
    {
        MovieList.remove(at: id)
    }
}
