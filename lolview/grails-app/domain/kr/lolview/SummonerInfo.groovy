package kr.lolview

class SummonerInfo {
	String name
	
	static hasMany = [matchHistorys: MatchInfo]
	
    static constraints = {
		name(blank:false, unique: true)
    }
}
