//
//  UserData.swift
//  LoginApp
//
//  Created by Ксн Тлскн on 05.10.2022.
//

struct User {
    let login: String
    let password: String
    let information: Person
    
    init(login: String = "user", password: String = "password", information: Person) {
        self.login = login
        self.password = password
        self.information = information
    }
}

struct Person {
    let info: String
    let name: String
    
    init(info: String, name: String = "Ксеня") {
        self.info = info
        self.name = name
    }
    
    static func getPerson() -> Person {
       Person(info: "Rovkjdfjvgod")
    }
}



//enum Person: String {
//    case name = "Ксеня Птичкина"
//    case post = "IOS разработчица"
//    case mainInfo = "Мне 29 лет. Родилась и выросла в Якутске - это холодное место с якутяночками, кумысом, вечной мерзлотой и музеем мамонтов. Последние 6 лет живу в Краснодаре."
//    case workInfo = "Последнее место работы в Plarium в качестве бренд-менеджера, занималась развитием бренда разработчика мобильных игр, внутренними и внешними коммуникациями. После сокращения поняла, что нужно заниматься чем-то более востребованным. Влюбилась в мобильную разработку и вот я здесь. Все к лучшему!"
//    case dreamInfo = "Мечтаю увидеть мир и иметь возможность работать с любой точки."
//    case cat = "Дом - это то место, где тебя любят и ждут. Поэтому я завела кота по имени Космо, он позволяет мне жить с ним 😋 Что может быть лучше кота?"
//    case hobby = "Раньше я часто путшествовала и пробовала новые активные виды спорта. Но теперь больше остаюсь дома."
//    case youtube = "Решила завести Youtube-канал. На меня можно подписаться: pptichka. У меня целых 4 подписчика! 😌"
//    case github = "Ну а пока больше тружусь тут: https://github.com/pptichka."
//    case telegram = "По всем вопросам мне можно писать сюда: t.me/ptichkinaksenia"
//}

    
