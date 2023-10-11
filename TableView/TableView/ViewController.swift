//
//  ViewController.swift
//  TableView
//
//  Created by 김정호 on 10/11/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var productTableView: UITableView!
    
    let productImage = [#imageLiteral(resourceName: "chair"), #imageLiteral(resourceName: "moniter"), #imageLiteral(resourceName: "keyboard2"), #imageLiteral(resourceName: "perfume"), #imageLiteral(resourceName: "phone"), #imageLiteral(resourceName: "macbook"), #imageLiteral(resourceName: "notebook"), #imageLiteral(resourceName: "airPods"), #imageLiteral(resourceName: "watch"), #imageLiteral(resourceName: "slippers"), #imageLiteral(resourceName: "shoes"), #imageLiteral(resourceName: "ipad"), #imageLiteral(resourceName: "camera"), #imageLiteral(resourceName: "mouse"), #imageLiteral(resourceName: "thousand"), #imageLiteral(resourceName: "keyboard"), #imageLiteral(resourceName: "phone2"), #imageLiteral(resourceName: "water")]
    let productTitle = ["허먼밀러 의자 팝니다.", "lg 24gn660 팔아요!", "레오폴드 키보드 팔아요.", "조말론 향수 팔아요~!", "갤럭시S20팝니다", "맥북프로16인치 팔아요~", "그램 노트북 팔아요!", "에어팟 2세대 팔아요", "애플워치 팔아요~", "아디다스 슬리퍼 팔아요", "뉴발란스993 팔아요", "아이패드에어5팝니다!!!", "캐논 카메라 팝니다 ~!!", "로지텍 마우스 G304 팔아요", "애플 광택용 천 팝니다!", "애플 매직 키보드 팔아용", "아이폰14pro팝니다.", "삼다수 물 2L 6개 팔아요"]
    let productAddress = ["칠암동", "칠암동", "칠암동", "칠암동", "칠암동", "칠암동", "칠암동", "칠암동", "칠암동", "칠암동", "칠암동", "칠암동", "칠암동", "칠암동", "칠암동", "칠암동", "칠암동", "칠암동"]
    let productMoney = ["10,001원", "10,002원", "10,003원", "10,004원", "10,005원", "10,006원", "10,007원", "10,008원", "10,009원", "10,010원", "10,011원", "10,012원", "10,013원", "10,014원", "10,015원", "10,016원", "10,017원", "10,018원"]
    let productChatCount = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18"]
    let productHeartCount = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        productTableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productTitle.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = productTableView.dequeueReusableCell(withIdentifier: "productCell", for: indexPath) as! TableViewCell
        cell.productImage.image = productImage[indexPath.row]
        cell.titleLabel.text = productTitle[indexPath.row]
        cell.addressLabel.text = productAddress[indexPath.row]
        cell.moneyLabel.text = productMoney[indexPath.row]
        cell.chatCountLabel.text = productChatCount[indexPath.row]
        cell.heartCountLabel.text = productHeartCount[indexPath.row]
        return cell
    }
}

