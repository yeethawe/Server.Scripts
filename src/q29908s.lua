charJob = require "lib/charJob"
charInventory = require "lib/charInventory"
mapQuests = require "lib/mapQuests"
npcSpeakers = require "lib/npcSpeakers"
charConstants = require "lib/charConstants"

quest = target.get_quest(mapQuests.getID("AdvancedKnight"))
cygnus = self.as_speaker(npcSpeakers.getID("Cygnus"))

if charJob.belongsTo("knightsOfCygnus") and target.level >= charConstants.getLvlCheckValue("thirdJobAdv") then
	charInventory.awardAdvancedKnightMedal()
	quest.complete()
	cygnus.say("You have earned the <Advanced Knight> title. You can receive a Medal from NPC Dalair.")
	cygnus.say("Congratulations on earning your honorable #b<Advanced Knight>#k title. I wish you the best of luck in your future endeavors! Keep up the good work. \r\n\r\n#fUI/UIWindow.img/QuestIcon/4/0# \r\n\r\n#v1142108:##t1142108#  1 ")
end