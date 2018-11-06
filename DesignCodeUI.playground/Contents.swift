//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    let cardView = UIView()
    let titleLabel = UILabel()
    let captionLabel = UILabel()
    let coverImageView = UIImageView()
    let backgroundImageView = UIImageView()
    let descriptionLabel = UILabel()
    let closeButton = UIButton()
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white

        cardView.frame = CGRect(x: 20, y: 255, width: 300, height: 250)
        cardView.backgroundColor = .white
        cardView.layer.cornerRadius = 14
        cardView.layer.shadowOpacity = 0.25
        cardView.layer.shadowOffset = CGSize(width: 0, height: 10)
        cardView.layer.shadowRadius = 10
        
        titleLabel.frame = CGRect(x: 16, y: 16, width: 272, height: 38)
        titleLabel.text = "Learn Swift 4"
        titleLabel.textColor = .white
        titleLabel.font = UIFont.systemFont(ofSize: 32, weight: .semibold)
        
        captionLabel.frame = CGRect(x: 16, y: 204, width: 272, height: 40)
        captionLabel.text = "Design directly in Playground"
        captionLabel.textColor = .white
        captionLabel.numberOfLines = 0
        
        descriptionLabel.frame = CGRect(x: 20, y: 448, width: 335, height: 132)
        descriptionLabel.text = "This is the test from what I've determined that needs to go into this block. This is the test from what I've determined that needs to go into this block. This is the test from what I've determined that needs to go into this block."
        descriptionLabel.textColor = .black
        descriptionLabel.numberOfLines = 10
        descriptionLabel.alpha = 0
    
        coverImageView.frame = CGRect(x: 0, y: 0, width: 300, height: 250)
        coverImageView.contentMode = .scaleAspectFill
        coverImageView.image = UIImage(named: "Cover.jpg")
        coverImageView.clipsToBounds = true
        coverImageView.layer.cornerRadius = 10
        
        backgroundImageView.frame = CGRect(x: 0, y: 0, width: 375, height: 667)
        backgroundImageView.image = UIImage(named: "Chapters Screen@2x.png")
        
        closeButton.frame = CGRect(x: 328, y: 20, width: 28, height: 28)
        closeButton.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.5)
        closeButton.layer.cornerRadius = 14
        closeButton.alpha = 0
        closeButton.setImage(#imageLiteral(resourceName: "Action-Close@2x.png"), for: .normal)
        closeButton.addTarget(self, action: #selector(closeButtonTapped), for: .touchUpInside)
        
        cardView.addSubview(coverImageView)
        cardView.addSubview(captionLabel)
        cardView.addSubview(descriptionLabel)
        cardView.addSubview(titleLabel)
        cardView.addSubview(closeButton)
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(cardViewTapped))
        cardView.addGestureRecognizer(tap)
        cardView.isUserInteractionEnabled = true
        
        
        view.addSubview(backgroundImageView)
        view.addSubview(cardView) // Adding CardView to screen from above
 
        self.view = view

    }
    
    @objc func closeButtonTapped() {
        let animator = UIViewPropertyAnimator(duration: 0.7, dampingRatio: 0.7) {

            // Reset to original values
            self.cardView.frame = CGRect(x: 20, y: 255, width: 300, height: 250)
            self.cardView.layer.cornerRadius = 14
            self.coverImageView.frame = CGRect(x: 0, y: 0, width: 300, height: 250)
            self.coverImageView.layer.cornerRadius = 14
            self.titleLabel.frame = CGRect(x: 16, y: 16, width: 272, height: 38)
            self.captionLabel.frame = CGRect(x: 16, y: 204, width: 272, height: 40)
            self.descriptionLabel.alpha = 0
            self.closeButton.alpha = 0
        }
        animator.startAnimation(afterDelay: 1)
        
    }
    
    @objc func cardViewTapped() {
        let animator = UIViewPropertyAnimator(duration: 0.7, dampingRatio: 0.7) {
            // End State of animation
            // Use self because below is nested
            self.cardView.frame = CGRect(x: 0, y: 0, width: 375, height: 667)
            self.cardView.layer.cornerRadius = 0
            self.coverImageView.frame = CGRect(x: 0, y: 0, width: 375, height: 420)
            self.coverImageView.layer.cornerRadius = 0
            self.titleLabel.frame = CGRect(x: 20, y: 20, width: 374, height: 38)
            self.captionLabel.frame = CGRect(x: 20, y: 370, width: 272, height: 40)
            self.descriptionLabel.alpha = 1
            self.closeButton.alpha = 1
        }
        animator.startAnimation(afterDelay: 1)
        // Expand card to take full size of screen
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
