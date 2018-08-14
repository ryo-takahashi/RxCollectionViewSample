import RxSwift
import RxCocoa
import RxDataSources

typealias TimelineSectionModel = SectionModel<TimelineSection, TimelineItem>

enum TimelineSection {
    case news
}

enum TimelineItem {
    case article(article: Article)
}

class TimelineViewModel {
    let items = BehaviorRelay<[TimelineSectionModel]>(value: [])

    func updateItems() {
        var sections: [TimelineSectionModel] = []

        let item1 = TimelineItem.article(article: Article(title: "コミックマーケットでスリをした２６歳男性逮捕", updatedAt: Date()))
        let item2 = TimelineItem.article(article: Article(title: "２７日明け方頃から関東全域に大雨の予想", updatedAt: Date()))
        let item3 = TimelineItem.article(article: Article(title: "夫が知らない　妻の帰省ストレス", updatedAt: Date()))
        let articleSection = TimelineSectionModel(model: .news, items: [item1, item2, item3])
        sections.append(articleSection)

        items.accept(sections)
    }
}
