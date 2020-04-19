//
//  MovieDetailsViewController.swift
//  flixster
//
//  Created by Sohum Sheth on 4/18/20.
//  Copyright © 2020 Sohum Sheth. All rights reserved.
//

import UIKit
import AlamofireImage

class MovieDetailsViewController: UIViewController {

    @IBOutlet weak var backdropView: UIImageView!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var title_label: UILabel!
    @IBOutlet weak var synopsis_label: UILabel!
    
    var movie: [String:Any]!
    override func viewDidLoad() {
        super.viewDidLoad()

        title_label.text = movie["title"] as? String
        title_label.sizeToFit()
        synopsis_label.text = movie["overview"] as? String
        synopsis_label.sizeToFit()
        
        let base_url = "https://image.tmdb.org/t/p/w185"
        let poster_path = movie["poster_path"] as! String
        let poster_url = URL(string: base_url + poster_path)
        posterView.af_setImage(withURL: poster_url!)
        
        let backdrop_path = movie["backdrop_path"] as! String
        let backdrop_url = URL(string: "https://image.tmdb.org/t/p/w780" + backdrop_path)
        backdropView.af_setImage(withURL: backdrop_url!)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
