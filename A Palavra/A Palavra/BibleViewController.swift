import UIKit

class BibleViewController: UIViewController {
    
    let topView: UIView = {
        let topView = UIView()
        topView.translatesAutoresizingMaskIntoConstraints = false
        
        return topView
    }()
    
    let middleView: UIView = {
        let middleView = UIView()
        middleView.translatesAutoresizingMaskIntoConstraints = false
        
        return middleView
    }()
    
    let bookSelector: UIView = {
        let bookSelector = UIView()
        bookSelector.backgroundColor = .littleDark
        bookSelector.layer.cornerRadius = 18
        bookSelector.layer.maskedCorners = [
            .layerMinXMaxYCorner,
            .layerMaxXMaxYCorner,
            .layerMaxXMinYCorner,
            .layerMinXMinYCorner
        ]
        
        bookSelector.translatesAutoresizingMaskIntoConstraints = false
        return bookSelector
    }()
    
    let selectionText: UILabel = {
        let selectionText = UILabel()
        selectionText.text = "Gênesis 1"
        selectionText.font = UIFont.boldSystemFont(ofSize: 18.0)
        selectionText.textColor = .light
      
        selectionText.translatesAutoresizingMaskIntoConstraints = false
        
        return selectionText
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
          
        setupView()
        setupConstraints()
    }
    
    func setupView() {
        view.backgroundColor = .hightDark
        view.addSubview(topView)
        
        topView.addSubview(bookSelector)
        bookSelector.addSubview(selectionText)
        
        view.addSubview(middleView)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            
            // TopView
            topView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            topView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            topView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            
            topView.heightAnchor.constraint(equalToConstant: 70),
            
            // BookSelector
            bookSelector.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 10),
            bookSelector.centerYAnchor.constraint(equalTo: topView.centerYAnchor),
            bookSelector.heightAnchor.constraint(equalToConstant: 36),
            bookSelector.widthAnchor.constraint(equalToConstant: 150),
            
            // SelectorText
            selectionText.centerXAnchor.constraint(equalTo: bookSelector.centerXAnchor),
            selectionText.centerYAnchor.constraint(equalTo: bookSelector.centerYAnchor),
            
            // MiddleView
            middleView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            middleView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            middleView.topAnchor.constraint(equalTo: topView.bottomAnchor),
            middleView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
            
        ])
    }

}

#Preview {
    BibleViewController()
}

