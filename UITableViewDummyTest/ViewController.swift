//
//  ViewController.swift
//  UITableViewDummyTest
//
//  Created by takahashi_hidemune on 2021/03/16.
//

import UIKit

class ViewController: UIViewController {
    var initialLoad = false

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        tableView.beginUpdates()
    }

    override func viewDidAppear(_ animated: Bool) {
        initialLoad = true
        tableView.beginUpdates()

        tableView.endUpdates()
        tableView.endUpdates()
    }


}


extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return initialLoad ? 0 : 40
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return initialLoad ? 0 : 40
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }


}

extension ViewController: UITableViewDelegate {

}
