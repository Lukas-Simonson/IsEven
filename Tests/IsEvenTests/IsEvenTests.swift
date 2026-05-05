//
//  IsEvenTests.swift
//  IsEven
//
//  Created by Lukas Simonson on 5/5/26.
//

import Testing
@testable import IsEven

@Suite
struct `Is Even Tests` {
    // For our Suite, what tests do we need to implement
    @Test
    func `isEven, when given an even number, returns true`() {
        // Given
        let myEvenNumber = 42
        
        // When
        let result = isEven(myEvenNumber)
        
        // Then
        #expect(result, "isEven returned false for a given even value.")
    }
    
    @Test
    func `isEven, when given an odd number, returns false`() {
        // Given
        let myOddNumber = 15
        
        // When
        let result = isEven(myOddNumber)
        
        // Then
        #expect(result == false, "isEven returned true for a given odd value.")
    }
    
    @Test
    func `isEven, when given a negative even number, returns true`() {
        // Given
        let myEvenNumber = -6
        
        // When
        let result = isEven(myEvenNumber)
        
        // Then
        #expect(result, "isEven returned false for a given negative even value.")
    }
    
    @Test
    func `isEven, when given a negative odd number, returns false`() {
        // Given
        let myOddNumber = -67
        
        // When
        let result = isEven(myOddNumber)
        
        // Then
        #expect(result == false, "isEven returned true for a given negative odd value.")
    }
}
