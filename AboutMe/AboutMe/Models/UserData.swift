//
//  UserData.swift
//  AboutMe
//
//  Created by Vic on 01.12.2023.
//

struct User {
    let userName: String
    let userPassword: String
    
    let person = Person()
}

struct Person {
    let personName = "Victor"
    let personLastname = "Sergeev"
    let personCompany = "Unemployed"
    let personDivision = "None"
    let personPosition = "None"
    let personBio = """
        Родился в 1988 году в городе Ростове-на-Дону, родители работали в аэропорту, сам с июля 2007 по октябрь 2022
        работал в сфере гражданской авиации на различных должностях. Люблю SUP-сёрфинг, увлекаюсь астрофотографией.
        С момента владения своим первым iPhone 3Gs в 2011 загорелся идеей создавать свои приложения, но не мог отказаться
        от карьеры в авиации. Когда гражданская авиация в первом квартале 2022 в РФ законилась решил попробовать осуществить
        свою мечту.
"""
}
