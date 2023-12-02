//
//  UserData.swift
//  AboutMe
//
//  Created by Vic on 01.12.2023.
//

struct User {
    let name: String
    let password: String
    
    let personData: Person
    
    static func getUser() -> User {
        return User(
            name: "User",
            password: "1111",
            personData: Person(
                firstName: "Victor",
                lastName: "Sergeev",
                company: "Aeroflot",
                division: "Ground operations",
                position: "former employee",
                bio: """
                Родился в 1988 году в городе Ростове-на-Дону, родители работали в аэропорту, во многом благодаря этому
                пошел по их стопам, с июля 2007 по октябрь 2022 работал в сфере гражданской авиации на различных должностях.
                Люблю путешествовать, SUP-сёрфинг, увлекаюсь астрофотографией, иногда варю домашнее пиво, и делаю сидр(сезон).
                Не люблю летать на самолетах, предпочитаю передвигаться наземным транспортом.
                """
            )
        )
    }
}

struct Person {
    var firstName: String
    var lastName: String
    var company: String
    var division: String
    var position: String
    var bio: String
}
