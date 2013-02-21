package kr.lolview

class GameStatsController {
	static scaffold = true

	def show() {
		[summonerName : params.summonerName, gameStatsInstance : params]
	}	
}
