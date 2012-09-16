-- Jaina pasiva para que no te ataque en la quest La Bendición del Jefe de Guerra (13189)

UPDATE `creature_template` SET `npcflag` = '0', `unit_flags` = '768' WHERE `entry` = 32364;

-- DALARAN
-- Pandora receller borrado (se les va la olla a los de mangos)

DELETE FROM `creature` WHERE `id` = 99321;

-- Fuente Dalaran restablecida hasta que se mate a Arthas

UPDATE `gameobject` SET `State` = '1' WHERE `id` = 202616;

-- Yunque que faltaba en Orgrimmar

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
	(null, 173066, 1, 1, 1, 1524.84, -4371.5, 18.1591, 4.7092, 0, 0, 0.708235, -0.705977, 25, 255, 1);

DELETE FROM `spell_proc_event` WHERE `entry` IN (51698);
INSERT INTO `spell_proc_event` VALUES
(51698, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x0054110, 0x0000002, 0, 0, 1);

-- Fix Honor entre Ladrones

DELETE FROM `spell_proc_event` WHERE `entry` IN (51698);
INSERT INTO `spell_proc_event` VALUES
(51698, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x0054110, 0x0000002, 0, 0, 1);

-- Guardias de Forjaz y Exodar

UPDATE `creature_template` SET `minlevel` = '75', `maxlevel` = '75' WHERE `entry` = 5595;
UPDATE `creature_template` SET `minlevel` = '75', `maxlevel` = '75' WHERE `entry` = 16733;

-- Escudo de Velen (20674)

UPDATE `creature_template` SET `minlevel` = '80', `maxlevel` = '80' WHERE `entry` = 20674;

-- Will of the forsaken
INSERT INTO `spell_linked` (`entry`, `linked_entry`, `type`, `effect_mask`, `comment`) VALUES
(7744, 72757, 4, 0, 'Will of the forsaken +  Medallion of the horde'),
(72752, 7744, 4, 0, 'Will of the forsaken +  Medallion of the horde'),
(72757, 7744, 4, 0, 'Will of the forsaken +  Medallion of the horde');
