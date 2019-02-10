//
//  CCTestTests.swift
//  CCTestTests
//
//  Created by 김예은 on 09/02/2019.
//  Copyright © 2019 kyeahen. All rights reserved.
//

import XCTest
@testable import CCTest

class CCTestTests: XCTestCase {
    
    // - 클래스 안에 속하는 테스트 메소드들이 호출되기 전 항상 호출되는 메소드
    // - 초기화 코드
    /* 이 테스트 클래스에서 진행되는 모든 테스트 케이스에서 공통으로 필요로 하는 행위들을 정의해준다.
    테스트 케이스에서 필요한 객체들이 이 메소드에서 생성해줄 수 있다. */
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    // - 모든 테스트 케이스 메소드들이 종료된 후 호출되는 메소드
    // - 해체 코드
    /* setUp 메소드와 유사하지만 그 반대로 모든 테스트 케이스 메소드들이 종료된 후 호출되는 메소드로 setUp에서 생성된다.
    테스트 메소드에서 사용된 것들을 정리해주고 해제할 필요가 있을 때 해당 내용들을 tearDown에 작성해주면 된다. */
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    // 각 케이스는 하나의 메소드로 분리하여 작성해야한다.
    // 테스트 메소드도 메소드로 하나의 기능만을 수행해야하기 때문에 하나의 테스트 메소드 안에 여러 케이스를 넣는 것은 올바른 방법이 아니다.
    
    // - MARK: Practice1(Pow)
    func pow(_ target: Int) -> Int {
        return target*target
    }
    
    func testPowerFunction(){
        // given - 입력값을 제공, 섹션에서 필요한 모든 값을 설정
        let expectedValue = 9
        // when -  입력 값을 사용해 테스트의 대상이 되는 메소드를 실행, 테스트 중인 코드
        let testingResult = pow(3)
        // then - 결과 값을 증명 (기대값과 비교), 섹션에서 예상한 결과를 확인하고 테스트가 실패할 때의 메시지를 출력
        XCTAssertEqual(expectedValue, testingResult, "결과 값이 올바르지 않습니다.")
    }
    
    // - MARK: Practice2(윤년)
    func testVanillaLeapYear() {
        let year = Year(calendarYear: 1996)
        XCTAssertTrue(year.isLeapYear)
    }
    
    func testAnyOldYear() {
        let year = Year(calendarYear: 1997)
        XCTAssertTrue(!year.isLeapYear)
    }
    
    func testCentury() {
        let year = Year(calendarYear: 1900)
        XCTAssertTrue(!year.isLeapYear)
    }
    
    func testExceptionalCentury() {
        let year = Year(calendarYear: 2400)
        XCTAssertTrue(year.isLeapYear)
    }
    
    // - MARK: Test3(Calculator)
    func testAddFunction(){
        // given - 입력값을 제공, 섹션에서 필요한 모든 값을 설정
        let expectedResult = 5
        // when -  입력 값을 사용해 테스트의 대상이 되는 메소드를 실행, 테스트 중인 코드
        let testingResult = Calculator.add(1, 4)
        // then - 결과 값을 증명 (기대값과 비교), 섹션에서 예상한 결과를 확인하고 테스트가 실패할 때의 메시지를 출력
        XCTAssertEqual(expectedResult, testingResult, "결과 값이 올바르지 않습니다.")
    }
    
    func testSubFunction() {
        let expectedResult = 3
        let testingResult = Calculator.sub(4, 1)
        XCTAssertEqual(expectedResult, testingResult, "결과 값이 올바르지 않습니다.")
    }
    
    func testMulFunction() {
        let expectedResult = 8
        let testingResult = Calculator.mul(4, 2)
        XCTAssertEqual(expectedResult, testingResult, "결과 값이 올바르지 않습니다.")
    }
    
    func testDivFunction() {
        let expectedResult = 2
        let testingResult = Calculator.div(4, 2)
        XCTAssertEqual(expectedResult, testingResult, "결과 값이 올바르지 않습니다.")
    }
    
}
