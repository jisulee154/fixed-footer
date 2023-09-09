//
//  ViewController.swift
//  FixFooterDemo
//
//  Created by 이지수 on 2023/09/09.
//

import UIKit

class ViewController: UIViewController {

    var tableView: UITableView!
    var footerView: FooterView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        setUpTableView()
        setUpFooter()
    }

    
}

extension ViewController {
    func setUpTableView() {
        //MARK: - setting tableView
        tableView = UITableView()
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.dataSource = self
        tableView.delegate = self
        
        self.view.addSubview(tableView)
        
        // setting autolayout of tableView
        tableView.snp.makeConstraints {
            $0.top.leading.trailing.equalTo(self.view)
            $0.height.greaterThanOrEqualTo(500)
        }
    }
    
    func setUpFooter() {
        //MARK: - setting footerView
        footerView = FooterView(frame: CGRectZero)
        
        self.view.addSubview(footerView)
        
        // setting autolayout of footerView
        footerView.snp.makeConstraints {
            $0.height.greaterThanOrEqualTo(150)
            $0.top.equalTo(tableView.snp.bottom)
            $0.leading.trailing.bottom.equalTo(self.view)
        }
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    //MARK: - UITableView Protocols
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "Row \(indexPath.row)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //
    }
    
    //MARK: - setting height for tableview cell
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    
}
