import UIKit

class ApplicationCoordinator: Coordinator {
    let kanjiStorage: KanjiStorage
    let window: UIWindow
    let rootViewController: UINavigationController
    let allKanjiListCoordinator: AllKanjiListCoordinator
    
    init(window: UIWindow) { //4
        self.window = window
        kanjiStorage = KanjiStorage()
        rootViewController = UINavigationController()
        rootViewController.navigationBar.prefersLargeTitles = true
        
        allKanjiListCoordinator = AllKanjiListCoordinator(presenter: rootViewController, kanjiStorage: kanjiStorage)
    }
    
    func start() {  // 6
        window.rootViewController = rootViewController
        window.makeKeyAndVisible()
        
        allKanjiListCoordinator.start()
    }
}
