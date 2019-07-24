mapQuests = require "lib/mapQuests"
mapEffects = require "lib/mapEffects"

quest = target.get_quest(mapQuests.getID("AranTut"))

if quest.record_ex_key("arr1") == "" then
	target.avatar_oriented_effect(mapEffects.getAvatarOrientedEffect("tutorialArrow1"))
    quest.update_ex("arr1", "o")
end