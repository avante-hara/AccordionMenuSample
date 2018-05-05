import UIKit

class ViewModel {
    private var sectionContents: [SectionContents] = []

    func addSectionContent(content: SectionContents) {
        sectionContents.append(content)
    }

    func sectionCount() -> Int {
        return sectionContents.count
    }

    func rowCount(section: Int) -> Int {
        if sectionCount() == 0 { return 0 }
        // 開いているセクションだったらgenre分の個数を返す
        if sectionContents[section].isOpen { return sectionContents[section].genreTitles?.count ?? 0 }
        // 開いてないセクションだったら0
        return 0
    }

    func categoryTitle(section: Int) -> String? {
        if sectionCount() == 0 { return nil }
        return sectionContents[section].categoryTitle
    }
    
}

struct SectionContents {
    var categoryTitle: String?
    var isOpen: Bool = false
    var genreTitles: [String]?

    init(categoryTitle: String? = nil, isOpen: Bool = false, genreTitles: [String]? = nil) {
        self.categoryTitle = categoryTitle
        self.isOpen = isOpen
        self.genreTitles = genreTitles
    }
}
