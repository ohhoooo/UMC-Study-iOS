//
//  WeatherManager.swift
//  Networking
//
//  Created by 김정호 on 11/29/23.
//

import UIKit

class WeatherManager {
    
    // API 주소
    let baseUrl = "https://api.openweathermap.org/data/2.5/weather"
    
    // 파라미터
    let location = "Seoul" // 지역
    let apiKey = "api 키" // api 키
    let language = "kr" // 언어
    let unit = "metric" // 단위
    
    // MARK: - 날씨 불러오기
    func getWeather(completion: @escaping (WeatherInfo?) -> Void) {
        
        // URL구조체 만들기
        guard let url = URL(string: "\(baseUrl)?q=\(location)&appid=\(apiKey)&lang=\(language)&units=\(unit)") else {
            print("Error: cannot create URL")
            return
        }
        
        // URL요청 생성
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        // 요청을 가지고 작업세션시작
        URLSession.shared.dataTask(with: request) { data, response, error in
            // 에러가 없어야 넘어감
            guard error == nil else {
                print("Error: error calling GET")
                print(error!)
                return
            }
            // 옵셔널 바인딩
            guard let safeData = data else {
                print("Error: Did not receive data")
                return
            }
            // HTTP 200번대 정상코드인 경우만 다음 코드로 넘어감
            guard let response = response as? HTTPURLResponse, (200 ..< 299) ~= response.statusCode else {
                print("Error: HTTP request failed")
                return
            }
                
            // 데이터 분석하기
            if let weather = self.parseJSON(safeData) {
                completion(weather)
            } else {
                completion(nil)
            }
        }.resume()
    }
    
    func parseJSON(_ weather: Data) -> WeatherInfo? {
        do {
            let decoder = JSONDecoder()
            
            let decodedData = try decoder.decode(WeatherInfo.self, from: weather)

            return decodedData
            
        } catch {
            return nil
        }
    }
}

