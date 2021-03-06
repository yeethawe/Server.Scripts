charJob = require "lib/charJob"
charInventory = require "lib/charInventory"
mapQuests = require "lib/mapQuests"
npcSpeakers = require "lib/npcSpeakers"
charConstants = require "lib/charConstants"

quest = target.get_quest(mapQuests.getID("VeteranAdventurer"))
mapleAdmin = self.as_speaker(npcSpeakers.getID("MapleAdmin"))

if charJob.belongsTo("explorers") and target.level >= charConstants.getLvlCheckValue("thirdJobAdv") then
	charInventory.awardVeteranAdventurerMedal()
	quest.complete()
	mapleAdmin.say("You have earned the <Veteran Adventurer> title. You can receive a Medal from NPC Dalair.")
	mapleAdmin.say("Congratulations on earning your honorable #b<Veteran Adventurer>#k title. I wish you the best of luck in your future endeavors! Keep up the good work. \r\n\r\n#fUI/UIWindow.img/QuestIcon/4/0# \r\n\r\n#v1142109:##t1142109#  1 ")
end