//
//  simple_appTests.swift
//  simple-appTests
//
//  Created by Abyss Alora on 13/04/2025.
//

import Testing
@testable import simple_app

struct simple_appValidationTests {
    
    @Test(
        arguments:
            zip(
                ["sh0rT=", "missingDigit=", "missingc4pital=", "M1ssingSpecialchar", "Str0ngPassword="],
                [false, false, false, false, true]
            )
    )
    func strongPasswordValidationTest(_ input: String, _ shouldPass: Bool) async throws {
        let rule = StrongPassword()
        let result = rule.validate(input)
        
        if shouldPass {
            #expect(result == nil)
        } else {
            #expect(result != nil)
        }
    }
    
    @Test(
        arguments:
            zip(
                ["sh0rT=", ""],
                [true, false]
            )
    )
    func isNotEmptyValidationTest(_ input: String, _ shouldPass: Bool) async throws {
        let rule = IsNotEmpty()
        let result = rule.validate(input)
        
        if shouldPass {
            #expect(result == nil)
        } else {
            #expect(result != nil)
        }
    }
    
    @Test(
        arguments:
            zip(
                ["short", "verylongpassword"],
                [false, true]
            )
    )
    func minLengthValidationTest(_ input: String, _ shouldPass: Bool) async throws {
        let rule = MinLength(min: 8)
        let result = rule.validate(input)
        
        if shouldPass {
            #expect(result == nil)
        } else {
            #expect(result != nil)
        }
    }
    
    @Test(
        arguments:
            zip(
                ["c0ntains", "withoutDigit"],
                [true, false]
            )
    )
    func containsDigitValidationTest(_ input: String, _ shouldPass: Bool) async throws {
        let rule = ContainsDigit()
        let result = rule.validate(input)
        
        if shouldPass {
            #expect(result == nil)
        } else {
            #expect(result != nil)
        }
    }
    
    @Test(
        arguments:
            zip(
                ["hasSpecialChar=", "HasNotSpecialChar"],
                [true, false]
            )
    )
    func containsSpecialCharacterValidationTest(_ input: String, _ shouldPass: Bool) async throws {
        let rule = ContainsSpecialCharacter()
        let result = rule.validate(input)
        
        if shouldPass {
            #expect(result == nil)
        } else {
            #expect(result != nil)
        }
    }
    
    @Test(
        arguments:
            zip(
                ["hasCapital", "nocapital"],
                [true, false]
            )
    )
    func containsCapitalValidationTest(_ input: String, _ shouldPass: Bool) async throws {
        let rule = ContainsCapital()
        let result = rule.validate(input)
        
        if shouldPass {
            #expect(result == nil)
        } else {
            #expect(result != nil)
        }
    }

}
