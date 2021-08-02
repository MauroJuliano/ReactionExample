//
//  ViewController.swift
//  ReactionExample
//
//  Created by Mauro G Figueiredo on 02/08/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var viewREaction: ReactionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var btnReaction = UIButton(frame: CGRect(x: 100, y: 300, width: 200, height: 30))
                btnReaction.setTitle("Long Press here", for: .normal)
                btnReaction.setTitleColor(UIColor.red, for: .normal)
                view.addSubview(btnReaction)
        var reactionView = ReactionView()
        
        let reactions: [Reaction] = [Reaction(title: "sorriso", imageName: "sorriso"),
        Reaction(title: "kiss", imageName: "kiss"),
        Reaction(title: "lingua", imageName: "lingua")]
        
        reactionView.initialize(delegate: self, reactionsArray: reactions, sourceView: self.view, gestureView: btnReaction)
        view.addSubview(reactionView)
        // Do any additional setup after loading the view.
    }


}
extension ViewController: FacebookReactionDelegate {
    func selectedReaction(reaction: Reaction) {
        print("selected--- \(reaction.title)")
    }
    
  
}

