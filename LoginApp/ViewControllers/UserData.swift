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
    let name: String
    let post: String
    let mainInfo: String
    let workInfo: String
    let dreamInfo: String
    let catInfo: String
    let hobby: String
    let youtube: String
    let gitHub: String
    let telegram: String
    
    init(
        name: String,
         post: String,
         mainInfo: String,
         workInfo: String,
         dreamInfo: String,
         catInfo: String,
         hobby: String,
         youtube: String,
         gitHub: String,
         telegram: String
    ) {
        self.name = name
        self.post = post
        self.mainInfo = mainInfo
        self.workInfo = workInfo
        self.dreamInfo = dreamInfo
        self.catInfo = catInfo
        self.hobby = hobby
        self.youtube = youtube
        self.gitHub = gitHub
        self.telegram = telegram
    }
    
    static func getPerson() -> Person {
       Person(
        name: "Ксеня Птичкина",
        post: "IOS разработчица",
        mainInfo: "Мне 29 лет. Родилась и выросла в Якутске - это холодное место с якутяночками, кумысом, вечной мерзлотой и музеем мамонтов. Последние 6 лет живу в Краснодаре.",
        workInfo: "Работала в Plarium в качестве бренд-менеджера, развивала бренд разработчика мобильных игр. Но поняла, что нужно заниматься чем-то более востребованным. Все к лучшему!",
        dreamInfo: "Мечтаю увидеть мир и иметь возможность работать с любой точки.",
        catInfo: "Дом - это то место, где тебя любят и ждут. Поэтому я завела кота по имени Космо, он позволяет мне жить с ним 😋 Что может быть лучше кота?",
        hobby: "Раньше я часто путешествовала и пробовала новые активные виды спорта. Но теперь больше остаюсь дома.",
        youtube: "Решила завести Youtube-канал. Мой ник: pptichka. У меня целых 4 подписчика! 😌",
        gitHub: "Ну а пока больше тружусь тут: https://github.com/pptichka.",
        telegram: "По всем вопросам мне можно писать сюда: t.me/ptichkinaksenia."
       )
    }
}


    
