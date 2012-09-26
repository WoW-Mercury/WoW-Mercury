-- Cartel de la fuente de Dalaran

-- INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, -- `spawntimesecs`, `animprogress`, `state`)
-- VALUES
-- (73369, 202443, 571, 1, 1, 5804.2, 639.833, 647.773, 5.59055, 0, 0, 0.339436, -0.940629, 300, 100, 1);

DELETE FROM `gameobject` WHERE `id` = 202443;

-- La Luz del Alba autocompletable

-- UPDATE `quest_template` SET `ReqCreatureOrGOId1` = '29245' WHERE `entry` = 12801;
-- UPDATE `creature_template` SET `ScriptName` = 'npc_highlord_darion_mograine' WHERE `entry` = 29173;

UPDATE `quest_template` SET `ReqCreatureOrGOId1` = '29173' WHERE `entry` = 12801;
UPDATE `creature_template` SET `ScriptName` = '' WHERE `entry` = 29173;