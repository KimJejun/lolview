
<%@ page import="kr.lolview.GameStats"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'gameStats.label', default: 'GameStats')}" />
<title>asdfasd</title>
<style type="text/css">
.list.recent-simple {
	font-size: 0.8em;
	display: inline-block;
}
.list.recent-simple li {
	float: left;
	width: 93%;
	color: black;
}
.list.recent-simple, .list.recent-simple-detail {
	list-style: none;
}
.list.recent-simple-detail li {
	float: left;
	height: 90px;
}
.champion-thumbnail {
	width: 60px;height: 60px;
}

.champion-thumbnail-small {
	width: 16px;height: 16px;
}

.champion-thumbnail-msmall {
	width: 25px;height: 25px;
}
</style>
<script type="text/javascript">
$(function(){
	$('.game_detail').hide();

	 function runEffect($targetDiv) {
	      // most effect types need no options passed by default
	      var options = {};
	 
	      // run the effect
	      $targetDiv.show( 'clip', options, 500 );
    };
	 
    // set effect from select menu value
    $(".btn-game-detail-show").click(function() {
      	runEffect($(this).parent().parent().next());
      	return false;
    });
})
</script>
</head>
<body>
	<div>
		<g:form class="form-inline" url="[action:'show', controller:'GameStats']" method="GET">
			<g:textField name="summonerName" class="input-xlarge" placeholder="소환사명" />
			<button type="submit" class="btn btn-success">Find!</button>
		</g:form>
	</div>
	<div>
		<h4>${summonerName}</h4> 최근 10경기 (8승 2패) 
	</div>
	
	<div>
		<ul class="nav nav-tabs">
			<li class="active"><a href="#">기본</a></li>
			<li><a href="#">최근게임</a></li>
			<li><a href="#">챔피언 통계</a></li>
		</ul>
	</div>
	<div>
		<ul class="list recent-simple" >
			<li class="alert alert-success" style="margin-bottom: 5px;padding-bottom: 12px;padding-top: 3px;">
				<ul class="list recent-simple-detail">
					<li style="width: 10%">
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/champion/icons/99.jpg" class="champion-thumbnail img-rounded" original-title="럭스"><br>
						럭스<br>
						광명의소녀<br>
					</li>
					<li style="width: 12%" class="text-align-center">
						<span class="lable-win">승리</span>
						<span class="lable-normal-bold">일반게임</span>
						4인큐<br>
						3일전<br>
					</li>
					<li style="width: 15%">
						<span class="lable-kill">16</span> / <span class="lable-dead">2</span> / 12<br>
						트리플킬<br>
						268 Minion kills<br>
						KDA 비율<br>
					</li>
					<li style="width: 12%" class="form-horizontal">
						Level 18<br>
						Gold <span class="lable-gold">12,1212</span><br>
						와드 구매 12 회<br>
					</li>
					<li style="width: 15%">
						<img src="http://s.op.gg/images/spells/14.png" class="champion-thumbnail-msmall img-rounded">
						<img src="http://s.op.gg/images/spells/6.png" class="champion-thumbnail-msmall img-rounded"><br>
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/item/3020.png" class="champion-thumbnail-msmall img-rounded">
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/item/3020.png" class="champion-thumbnail-msmall img-rounded">
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/item/3020.png" class="champion-thumbnail-msmall img-rounded"><br>
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/item/3020.png" class="champion-thumbnail-msmall img-rounded">
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/item/3020.png" class="champion-thumbnail-msmall img-rounded">
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/item/3020.png" class="champion-thumbnail-msmall img-rounded">
					</li>
					<li style="width: 16%">
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/champion/icons/114.jpg" class="champion-thumbnail-small img-rounded">
						<a href="#" target="_blank" style="color: inherit;">최다안</a><br>
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/champion/icons/114.jpg" class="champion-thumbnail-small img-rounded">
						<a href="#" target="_blank" style="color: inherit;">최다안</a><br>
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/champion/icons/114.jpg" class="champion-thumbnail-small img-rounded">
						<a href="#" target="_blank" style="color: inherit;">최다안</a><br>
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/champion/icons/114.jpg" class="champion-thumbnail-small img-rounded">
						<a href="#" target="_blank" style="color: inherit;">최다안</a><br>
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/champion/icons/114.jpg" class="champion-thumbnail-small img-rounded">
						<a href="#" target="_blank" style="color: inherit;">최다안</a>						
					</li>
					<li style="width: 16%">
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/champion/icons/114.jpg" class="champion-thumbnail-small img-rounded">
						<a href="#" target="_blank" style="color: inherit;">최다안</a><br>
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/champion/icons/114.jpg" class="champion-thumbnail-small img-rounded">
						<a href="#" target="_blank" style="color: inherit;">최다안</a><br>
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/champion/icons/114.jpg" class="champion-thumbnail-small img-rounded">
						<a href="#" target="_blank" style="color: inherit;">최다안</a><br>
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/champion/icons/114.jpg" class="champion-thumbnail-small img-rounded">
						<a href="#" target="_blank" style="color: inherit;">최다안</a><br>
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/champion/icons/114.jpg" class="champion-thumbnail-small img-rounded">
						<a href="#" target="_blank" style="color: inherit;">최다안</a>
					</li>
				</ul>
			</li>
			<li class="alert alert-success" style="margin-bottom: 5px;padding-bottom: 12px;padding-top: 3px;">
				<ul class="list recent-simple-detail">
					<li style="width: 10%">
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/champion/icons/99.jpg" class="champion-thumbnail img-rounded" original-title="럭스"><br>
						럭스<br>
						광명의소녀<br>
					</li>
					<li style="width: 12%">
						<span class="lable-win">승리</span>
						<span class="lable-normal-bold">일반게임</span>
						4인큐<br>
						3일전<br>
					</li>
					<li style="width: 15%">
						<span class="lable-kill">16</span> / <span class="lable-dead">2</span> / 12<br>
						트리플킬<br>
						268 Minion kills<br>
						KDA 비율<br>
					</li>
					<li style="width: 12%" class="form-horizontal">
						Level 18<br>
						Gold <span class="lable-gold">12,1212</span><br>
						와드 구매 12 회<br>
					</li>
					<li style="width: 15%">
						<img src="http://s.op.gg/images/spells/14.png" class="champion-thumbnail-msmall img-rounded">
						<img src="http://s.op.gg/images/spells/4.png" class="champion-thumbnail-msmall img-rounded"><br>
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/item/3020.png" class="champion-thumbnail-msmall img-rounded">
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/item/3020.png" class="champion-thumbnail-msmall img-rounded">
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/item/3020.png" class="champion-thumbnail-msmall img-rounded"><br>
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/item/3020.png" class="champion-thumbnail-msmall img-rounded">
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/item/3020.png" class="champion-thumbnail-msmall img-rounded">
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/item/3020.png" class="champion-thumbnail-msmall img-rounded">
					</li>
					<li style="width: 18%">
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/champion/icons/114.jpg" class="champion-thumbnail-small img-rounded">
						<a href="#" target="_blank" style="color: inherit;">최다안</a><br>
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/champion/icons/114.jpg" class="champion-thumbnail-small img-rounded">
						<a href="#" target="_blank" style="color: inherit;">최다안</a><br>
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/champion/icons/114.jpg" class="champion-thumbnail-small img-rounded">
						<a href="#" target="_blank" style="color: inherit;">최다안</a><br>
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/champion/icons/114.jpg" class="champion-thumbnail-small img-rounded">
						<a href="#" target="_blank" style="color: inherit;">최다안</a><br>
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/champion/icons/114.jpg" class="champion-thumbnail-small img-rounded">
						<a href="#" target="_blank" style="color: inherit;">최다안</a>						
					</li>
					<li style="width: 18%">
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/champion/icons/114.jpg" class="champion-thumbnail-small img-rounded">
						<a href="#" target="_blank" style="color: inherit;">최다안</a><br>
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/champion/icons/114.jpg" class="champion-thumbnail-small img-rounded">
						<a href="#" target="_blank" style="color: inherit;">최다안</a><br>
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/champion/icons/114.jpg" class="champion-thumbnail-small img-rounded">
						<a href="#" target="_blank" style="color: inherit;">최다안</a><br>
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/champion/icons/114.jpg" class="champion-thumbnail-small img-rounded">
						<a href="#" target="_blank" style="color: inherit;">최다안</a><br>
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/champion/icons/114.jpg" class="champion-thumbnail-small img-rounded">
						<a href="#" target="_blank" style="color: inherit;">최다안</a>
					</li>
				</ul>
			</li><li class="alert alert-success" style="margin-bottom: 5px;padding-bottom: 12px;padding-top: 3px;">
				<ul class="list recent-simple-detail">
					<li style="width: 10%">
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/champion/icons/99.jpg" class="champion-thumbnail img-rounded" original-title="럭스"><br>
						럭스<br>
						광명의소녀<br>
					</li>
					<li style="width: 12%">
						<span class="lable-win">승리</span>
						<span class="lable-normal-bold">일반게임</span>
						4인큐<br>
						3일전<br>
					</li>
					<li style="width: 15%">
						<span class="lable-kill">16</span> / <span class="lable-dead">2</span> / 12<br>
						트리플킬<br>
						268 Minion kills<br>
						KDA 비율<br>
					</li>
					<li style="width: 12%" class="form-horizontal">
						Level 18<br>
						Gold <span class="lable-gold">12,1212</span><br>
						와드 구매 12 회<br>
					</li>
					<li style="width: 15%">
						<img src="http://s.op.gg/images/spells/14.png" class="champion-thumbnail-msmall img-rounded">
						<img src="http://s.op.gg/images/spells/4.png" class="champion-thumbnail-msmall img-rounded"><br>
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/item/3020.png" class="champion-thumbnail-msmall img-rounded">
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/item/3020.png" class="champion-thumbnail-msmall img-rounded">
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/item/3020.png" class="champion-thumbnail-msmall img-rounded"><br>
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/item/3020.png" class="champion-thumbnail-msmall img-rounded">
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/item/3020.png" class="champion-thumbnail-msmall img-rounded">
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/item/3020.png" class="champion-thumbnail-msmall img-rounded">
					</li>
					<li style="width: 18%">
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/champion/icons/114.jpg" class="champion-thumbnail-small img-rounded">
						<a href="#" target="_blank" style="color: inherit;">최다안</a><br>
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/champion/icons/114.jpg" class="champion-thumbnail-small img-rounded">
						<a href="#" target="_blank" style="color: inherit;">최다안</a><br>
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/champion/icons/114.jpg" class="champion-thumbnail-small img-rounded">
						<a href="#" target="_blank" style="color: inherit;">최다안</a><br>
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/champion/icons/114.jpg" class="champion-thumbnail-small img-rounded">
						<a href="#" target="_blank" style="color: inherit;">최다안</a><br>
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/champion/icons/114.jpg" class="champion-thumbnail-small img-rounded">
						<a href="#" target="_blank" style="color: inherit;">최다안</a>						
					</li>
					<li style="width: 18%">
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/champion/icons/114.jpg" class="champion-thumbnail-small img-rounded">
						<a href="#" target="_blank" style="color: inherit;">최다안</a><br>
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/champion/icons/114.jpg" class="champion-thumbnail-small img-rounded">
						<a href="#" target="_blank" style="color: inherit;">최다안</a><br>
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/champion/icons/114.jpg" class="champion-thumbnail-small img-rounded">
						<a href="#" target="_blank" style="color: inherit;">최다안</a><br>
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/champion/icons/114.jpg" class="champion-thumbnail-small img-rounded">
						<a href="#" target="_blank" style="color: inherit;">최다안</a><br>
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/champion/icons/114.jpg" class="champion-thumbnail-small img-rounded">
						<a href="#" target="_blank" style="color: inherit;">최다안</a>
					</li>
				</ul>
			</li><li class="alert alert-error" style="margin-bottom: 5px;padding-bottom: 12px;padding-top: 3px;">
				<ul class="list recent-simple-detail">
					<li style="width: 10%">
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/champion/icons/99.jpg" class="champion-thumbnail img-rounded" original-title="럭스"><br>
						럭스<br>
						광명의소녀<br>
					</li>
					<li style="width: 12%">
						<span class="lable-win">승리</span>
						<span class="lable-normal-bold">일반게임</span>
						4인큐<br>
						3일전<br>
					</li>
					<li style="width: 15%">
						<span class="lable-kill">16</span> / <span class="lable-dead">2</span> / 12<br>
						트리플킬<br>
						268 Minion kills<br>
						KDA 비율<br>
					</li>
					<li style="width: 12%" class="form-horizontal">
						Level 18<br>
						Gold <span class="lable-gold">12,1212</span><br>
						와드 구매 12 회<br>
					</li>
					<li style="width: 15%">
						<img src="http://s.op.gg/images/spells/14.png" class="champion-thumbnail-msmall img-rounded">
						<img src="http://s.op.gg/images/spells/4.png" class="champion-thumbnail-msmall img-rounded"><br>
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/item/3020.png" class="champion-thumbnail-msmall img-rounded">
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/item/3020.png" class="champion-thumbnail-msmall img-rounded">
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/item/3020.png" class="champion-thumbnail-msmall img-rounded"><br>
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/item/3020.png" class="champion-thumbnail-msmall img-rounded">
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/item/3020.png" class="champion-thumbnail-msmall img-rounded">
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/item/3020.png" class="champion-thumbnail-msmall img-rounded">
					</li>
					<li style="width: 18%">
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/champion/icons/114.jpg" class="champion-thumbnail-small img-rounded">
						<a href="#" target="_blank" style="color: inherit;">최다안</a><br>
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/champion/icons/114.jpg" class="champion-thumbnail-small img-rounded">
						<a href="#" target="_blank" style="color: inherit;">최다안</a><br>
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/champion/icons/114.jpg" class="champion-thumbnail-small img-rounded">
						<a href="#" target="_blank" style="color: inherit;">최다안</a><br>
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/champion/icons/114.jpg" class="champion-thumbnail-small img-rounded">
						<a href="#" target="_blank" style="color: inherit;">최다안</a><br>
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/champion/icons/114.jpg" class="champion-thumbnail-small img-rounded">
						<a href="#" target="_blank" style="color: inherit;">최다안</a>						
					</li>
					<li style="width: 18%">
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/champion/icons/114.jpg" class="champion-thumbnail-small img-rounded">
						<a href="#" target="_blank" style="color: inherit;">최다안</a><br>
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/champion/icons/114.jpg" class="champion-thumbnail-small img-rounded">
						<a href="#" target="_blank" style="color: inherit;">최다안</a><br>
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/champion/icons/114.jpg" class="champion-thumbnail-small img-rounded">
						<a href="#" target="_blank" style="color: inherit;">최다안</a><br>
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/champion/icons/114.jpg" class="champion-thumbnail-small img-rounded">
						<a href="#" target="_blank" style="color: inherit;">최다안</a><br>
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/champion/icons/114.jpg" class="champion-thumbnail-small img-rounded">
						<a href="#" target="_blank" style="color: inherit;">최다안</a>
					</li>
				</ul>
			</li><li class="alert alert-success" style="margin-bottom: 5px;padding-bottom: 12px;padding-top: 3px;">
				<ul class="list recent-simple-detail">
					<li style="width: 10%">
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/champion/icons/99.jpg" class="champion-thumbnail img-rounded" original-title="럭스"><br>
						럭스<br>
						광명의소녀<br>
					</li>
					<li style="width: 12%">
						<span class="lable-win">승리</span>
						<span class="lable-normal-bold">일반게임</span>
						4인큐<br>
						3일전<br>
					</li>
					<li style="width: 15%">
						<span class="lable-kill">16</span> / <span class="lable-dead">2</span> / 12<br>
						트리플킬<br>
						268 Minion kills<br>
						KDA 비율<br>
					</li>
					<li style="width: 12%" class="form-horizontal">
						Level 18<br>
						Gold <span class="lable-gold">12,1212</span><br>
						와드 구매 12 회<br>
					</li>
					<li style="width: 15%">
						<img src="http://s.op.gg/images/spells/14.png" class="champion-thumbnail-msmall img-rounded">
						<img src="http://s.op.gg/images/spells/4.png" class="champion-thumbnail-msmall img-rounded"><br>
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/item/3020.png" class="champion-thumbnail-msmall img-rounded">
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/item/3020.png" class="champion-thumbnail-msmall img-rounded">
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/item/3020.png" class="champion-thumbnail-msmall img-rounded"><br>
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/item/3020.png" class="champion-thumbnail-msmall img-rounded">
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/item/3020.png" class="champion-thumbnail-msmall img-rounded">
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/item/3020.png" class="champion-thumbnail-msmall img-rounded">
					</li>
					<li style="width: 18%">
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/champion/icons/114.jpg" class="champion-thumbnail-small img-rounded">
						<a href="#" target="_blank" style="color: inherit;">최다안</a><br>
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/champion/icons/114.jpg" class="champion-thumbnail-small img-rounded">
						<a href="#" target="_blank" style="color: inherit;">최다안</a><br>
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/champion/icons/114.jpg" class="champion-thumbnail-small img-rounded">
						<a href="#" target="_blank" style="color: inherit;">최다안</a><br>
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/champion/icons/114.jpg" class="champion-thumbnail-small img-rounded">
						<a href="#" target="_blank" style="color: inherit;">최다안</a><br>
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/champion/icons/114.jpg" class="champion-thumbnail-small img-rounded">
						<a href="#" target="_blank" style="color: inherit;">최다안</a>						
					</li>
					<li style="width: 18%">
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/champion/icons/114.jpg" class="champion-thumbnail-small img-rounded">
						<a href="#" target="_blank" style="color: inherit;">최다안</a><br>
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/champion/icons/114.jpg" class="champion-thumbnail-small img-rounded">
						<a href="#" target="_blank" style="color: inherit;">최다안</a><br>
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/champion/icons/114.jpg" class="champion-thumbnail-small img-rounded">
						<a href="#" target="_blank" style="color: inherit;">최다안</a><br>
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/champion/icons/114.jpg" class="champion-thumbnail-small img-rounded">
						<a href="#" target="_blank" style="color: inherit;">최다안</a><br>
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/champion/icons/114.jpg" class="champion-thumbnail-small img-rounded">
						<a href="#" target="_blank" style="color: inherit;">최다안</a>
					</li>
				</ul>
			</li><li class="alert alert-error" style="margin-bottom: 5px;padding-bottom: 12px;padding-top: 3px;">
				<ul class="list recent-simple-detail">
					<li style="width: 10%">
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/champion/icons/99.jpg" class="champion-thumbnail img-rounded" original-title="럭스"><br>
						럭스<br>
						광명의소녀<br>
					</li>
					<li style="width: 12%">
						<span class="lable-win">승리</span>
						<span class="lable-normal-bold">일반게임</span>
						4인큐<br>
						3일전<br>
					</li>
					<li style="width: 15%">
						<span class="lable-kill">16</span> / <span class="lable-dead">2</span> / 12<br>
						트리플킬<br>
						268 Minion kills<br>
						KDA 비율<br>
					</li>
					<li style="width: 12%" class="form-horizontal">
						Level 18<br>
						Gold <span class="lable-gold">12,1212</span><br>
						와드 구매 12 회<br>
					</li>
					<li style="width: 15%">
						<img src="http://s.op.gg/images/spells/14.png" class="champion-thumbnail-msmall img-rounded">
						<img src="http://s.op.gg/images/spells/4.png" class="champion-thumbnail-msmall img-rounded"><br>
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/item/3020.png" class="champion-thumbnail-msmall img-rounded">
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/item/3020.png" class="champion-thumbnail-msmall img-rounded">
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/item/3020.png" class="champion-thumbnail-msmall img-rounded"><br>
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/item/3020.png" class="champion-thumbnail-msmall img-rounded">
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/item/3020.png" class="champion-thumbnail-msmall img-rounded">
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/item/3020.png" class="champion-thumbnail-msmall img-rounded">
					</li>
					<li style="width: 18%">
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/champion/icons/114.jpg" class="champion-thumbnail-small img-rounded">
						<a href="#" target="_blank" style="color: inherit;">최다안</a><br>
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/champion/icons/114.jpg" class="champion-thumbnail-small img-rounded">
						<a href="#" target="_blank" style="color: inherit;">최다안</a><br>
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/champion/icons/114.jpg" class="champion-thumbnail-small img-rounded">
						<a href="#" target="_blank" style="color: inherit;">최다안</a><br>
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/champion/icons/114.jpg" class="champion-thumbnail-small img-rounded">
						<a href="#" target="_blank" style="color: inherit;">최다안</a><br>
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/champion/icons/114.jpg" class="champion-thumbnail-small img-rounded">
						<a href="#" target="_blank" style="color: inherit;">최다안</a>						
					</li>
					<li style="width: 18%">
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/champion/icons/114.jpg" class="champion-thumbnail-small img-rounded">
						<a href="#" target="_blank" style="color: inherit;">최다안</a><br>
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/champion/icons/114.jpg" class="champion-thumbnail-small img-rounded">
						<a href="#" target="_blank" style="color: inherit;">최다안</a><br>
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/champion/icons/114.jpg" class="champion-thumbnail-small img-rounded">
						<a href="#" target="_blank" style="color: inherit;">최다안</a><br>
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/champion/icons/114.jpg" class="champion-thumbnail-small img-rounded">
						<a href="#" target="_blank" style="color: inherit;">최다안</a><br>
						<img src="http://na.leagueoflegends.com/sites/default/files/game_data/1.0.0.154/content/champion/icons/114.jpg" class="champion-thumbnail-small img-rounded">
						<a href="#" target="_blank" style="color: inherit;">최다안</a>
					</li>
				</ul>
			</li>
		</ul>
	</div>
</body>
</html>
