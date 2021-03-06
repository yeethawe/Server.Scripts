mapQuests = require "lib/mapQuests"
npcSpeakers = require "lib/npcSpeakers"
mapEffects = require "lib/mapEffects"
mapFields = require "lib/mapFields"
	
quest = target.get_quest(mapQuests.getID("AranTut2"))
lilin = self.as_speaker(npcSpeakers.getID("Lilin"))

if quest.record_ex_key("helper") == "" then
	self.say ({
		lilin.get_speech("You've finally awoken...!"),
		target.get_speech("And you are...?"),
		lilin.get_speech("The hero who fought against the Black Mage... I've been waiting for you to wake up!"),
		target.get_speech("Who... Who are you? And what are you talking about?"),
		target.get_speech("And who am I...? I can't remember anything... Ouch, my head hurts!")
	})
	target.reserved_effect(mapEffects.getReservedEffect("face"))
	target.reserved_effect(mapEffects.getReservedEffect("clickLilin"))
	quest.update_ex("helper", "clear") -- cm.updateAreaInfo(21019, "helper=clear");
else
	self.say ({
		lilin.get_speech("Are you alright?"),
		target.get_speech("I can't remember anything. Where am I? And who are you...?"),
		lilin.get_speech("Stay calm. There is no need to panic. You can't remember anything because the curse of the Black Mage erased your memory. I'll tell you everything you need to know...step by step."),
		lilin.get_speech("You're a hero who fought the Black Mage and saved Maple World hundreds of years ago. But at the very last moment, the curse of the Black Mage put you to sleep for a long, long time. That's when you lost all of your memories."),
		lilin.get_speech("This island is called Rien, and it's where the Black Mage trapped you. Despite its name, this island is always covered in ice and snow because of the Black Mage's curse. You were found deep inside the Ice Cave."),
		lilin.get_speech("My name is Lilin and I belong to the clan of Rien. The Rien Clan has been waiting for a hero to return for a long time now, and we finally found you. You've finally returned!"),
		lilin.get_speech("I've said too much. It's okay if you don't really understand everything I just told you. You'll get it eventually. For now, #byou should head to town#k. I'll stay by your side and help you until you get there.")
	})
	target.hire_tutor(true)
	target.transfer_field(mapFields.getID("ColdForest1"), 0)
end