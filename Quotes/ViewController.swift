//
//  ViewController.swift
//  Quotes
//
//  Created by Ana Leticia Camargos on 06/04/19.
//  Copyright © 2019 Ana Leticia Camargos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var quoteTextLabel: UILabel!
    @IBOutlet weak var authorNameLabel: UILabel!
    @IBOutlet weak var authorImageView: UIImageView!
    
    var quoteBook = QuoteBook()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func getNewQuote () {
        let newQuote = quoteBook.getRandomQuote()
        let author = quoteBook.getAuthor(for: newQuote)
        let authorImageName = quoteBook.getImageName(for: author)
        
        self.quoteTextLabel.text = newQuote
        self.authorNameLabel.text = author
        self.authorImageView.image = UIImage(named: authorImageName)
    }
}

