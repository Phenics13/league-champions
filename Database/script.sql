-- League of Legends Database

-- Create Positions table
CREATE TABLE Positions (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    description TEXT NOT NULL,
    image_url TEXT
);

-- Insert data into Positions table
INSERT INTO Positions (id, name, description, image_url) VALUES
(1, 'Top', 'The top lane is the lane that is the most isolated from the rest of the map. It is the longest lane and is usually where the tankiest champions go.', '/img/positions/Top_icon.webp'),
(2, 'Jungle', 'The jungle is the area between the lanes, containing multiple neutral monsters that can be killed for gold and experience.', '/img/positions/Jungle_icon.webp'),
(3, 'Mid', 'The mid lane is the shortest lane and is usually where the mage or assassin champions go. It is the most central lane on the map.', '/img/positions/Middle_icon.webp'),
(4, 'ADC', 'The ADC (Attack Damage Carry) is the champion that deals the most physical damage on the team. They are usually paired with a support in the bot lane.', '/img/positions/Bottom_icon.webp'),
(5, 'Support', 'The support is the champion that helps the ADC in the bot lane. They are usually the champions that provide healing, shielding, or crowd control.', '/img/positions/Support_icon.webp');

-- Create Ranges table
CREATE TABLE Ranges (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    image_url TEXT
);

-- Insert data into Ranges table
INSERT INTO Ranges (id, name, image_url) VALUES
(1, 'Melee', '/img/ranges/Melee_role.webp'),
(2, 'Ranged', '/img/ranges/Ranges_role.webp');

-- Create Abilities table
CREATE TABLE Abilities (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    description TEXT NOT NULL,
    image_url TEXT
);
-- cSpell: disable
-- Insert data into Abilities table
INSERT INTO Abilities (id, name, description, image_url) VALUES
-- Yone Abilities
(1, 'Way of the Hunter', 'INNATE - INTENT: Yones Critical strike chance icon total critical strike chance is multiplied by 2.5 from all other sources, but his Critical strike icon critical strikes deal only (57.5% + 45% 45%) AD bonus physical damage. Additionally, every 1% critical strike chance in excess of 100% is converted into 0.4 bonus AD. INNATE - STEEL AND SPIRIT: Yones basic attacks alternate between his Steel Sword and Azakana Sword on-attack. Yone begins attacking with Steel Sword, and basic attacks with Azakana Sword deal 50% AD physical damage and 50% AD magic damage.', '/img/abilities/yone/Yone_Way_of_the_Hunter.webp'),
(2, 'Mortal Steel', 'ACTIVE: Yone thrusts forward with his sword, dealing physical damage to enemies hit. If Mortal Steel hits an enemy, Yone gains a stack of Gathering Storm for 6 seconds, up to a maximum of 2, with the duration refreshing on subsequent hits. Gathering Storm: Yone gains 2% bonus critical strike chance, up to a maximum of 8% bonus critical strike chance.', '/img/abilities/yone/Yone_Mortal_Steel.webp'),
(3, 'Spirit Cleave', 'ACTIVE: Yone cleaves forward in the target direction, dealing physical damage to enemies hit. If Spirit Cleave hits an enemy, Yone gains a stack of Gathering Storm for 6 seconds, up to a maximum of 2, with the duration refreshing on subsequent hits. Gathering Storm: Yone gains 2% bonus critical strike chance, up to a maximum of 8% bonus critical strike chance.', '/img/abilities/yone/Yone_Spirit_Cleave.webp'),
(4, 'Soul Unbound', 'ACTIVE: Yone enters a spirit form, gaining movement speed and leaving his body behind for up to 5 seconds. When Yones spirit form expires or is recast, he dashes back to his body and deals magic damage to enemies within a cone in front of him, increased by 0% − 100% (based on time active) based on the distance traveled. Yone cannot be targeted by enemies while in spirit form.', '/img/abilities/yone/Yone_Soul_Unbound.webp'),
(5, 'Fate Sealed', 'ACTIVE: Yone strikes all enemies in a line, blinking behind the last champion hit and knocking all enemies hit up for 0.75 seconds. Fate Sealed can be recast within 1 second of the first cast, and does so automatically after 1 second. Fate Sealed can be recast within 1 second of the first cast, and does so automatically after 1 second.', '/img/abilities/yone/Yone_Fate_Sealed.webp'),
-- Yasuo Abilities
(6, 'Way of the Wanderer', 'INNATE: Yasuo generates a Flow stack for every 59 / 52 / 46 units he travels by any means. At 100 stacks, Yasuo consumes them to gain a shield that absorbs 100 − 510 (based on level) damage for up to 1.5 seconds. The shield triggers when Yasuo takes champion or monster damage. Yasuo also gains double the amount of critical strike chance from all sources, but his critical strikes deal 90% AD bonus physical damage.', '/img/abilities/yasuo/Yasuo_Way_of_the_Wanderer.webp'),
(7, 'Steel Tempest', 'ACTIVE: Yasuo thrusts his sword forward, dealing physical damage to all enemies in a line. If cast while dashing, the area of effect is changed to a circle.', '/img/abilities/yasuo/Yasuo_Steel_Tempest.webp'),
(8, 'Wind Wall', 'ACTIVE: Yasuo creates a gust of wind that travels forward to form a wall in front of him. The wall slowly drifts forward 50 units over 0.25 seconds, blocking all enemy projectiles except tower hits.', '/img/abilities/yasuo/Yasuo_Wind_Wall.webp'),
(9, 'Sweeping Blade', 'ACTIVE: Yasuo dashes a fixed distance through a target enemy, dealing magic damage to it. Each cast increases the next dashs base damage by 25%, up to 50% bonus damage. Yasuo cannot dash to the same target more than once every few seconds.', '/img/abilities/yasuo/Yasuo_Sweeping_Blade.webp'),
(10, 'Last Breath', 'ACTIVE: Yasuo blinks to the nearest visible airborne enemy champion to the cursor, instantly generating maximum Flow. Upon arrival, he suspends all airborne units within a 400-radius area of his target in the air for 1 second while dealing them physical damage.', '/img/abilities/yasuo/Yasuo_Last_Breath.webp'),
-- Zed Abilities
(11, 'Contempt for the Weak', 'INNATE: Zeds basic attacks against targets below 50% of their maximum health deal bonus magic damage. This effect cannot occur on the same target more than once every few seconds.', '/img/abilities/zed/Zed_Contempt_for_the_Weak.webp'),
(12, 'Razor Shuriken', 'ACTIVE: Zed throws his spinning blades forward, dealing physical damage to the first enemy they pass through and 60% damage to enemies thereafter.', '/img/abilities/zed/Zed_Razor_Shuriken.webp'),
(13, 'Living Shadow', 'ACTIVE: Zed spawns a shadow at the target location for 5 seconds, remaining stationary until Zed reactivates Living Shadow or switches places with the shadow. Zed can reactivate Living Shadow to swap positions with this shadow.', '/img/abilities/zed/Zed_Living_Shadow.webp'),
(14, 'Shadow Slash', 'ACTIVE: Zed and his shadows slash, dealing physical damage to nearby enemies. Each enemy champion hit by Zeds slash reduces Living Shadows cooldown by 2 seconds.', '/img/abilities/zed/Zed_Shadow_Slash.webp'),
(15, 'Death Mark', 'ACTIVE: Zed becomes untargetable and dashes to the target enemy champion. Upon arrival, he marks the target for death and spawns a shadow that lasts for 6 seconds at the casters location. Reactivating Death Mark will cause Zed to switch positions with this shadow. After 3 seconds, the mark triggers, dealing physical damage equal to a percentage of the damage dealt to the target by Zed while the mark was active.', '/img/abilities/zed/Zed_Death_Mark.webp'),
-- Ahri Abilities
(16, 'Essence Theft', 'INNATE: Ahri gains a stack of Essence Theft whenever one of her spells hits an enemy (max: 3 per cast, 9 total). Upon reaching 9 stacks, Ahri gains the ability to cast Essence Theft, healing herself for each enemy hit by her next ability.', '/img/abilities/ahri/Ahri_Essence_Theft.webp'),
(17, 'Orb of Deception', 'ACTIVE: Ahri sends an orb of arcane energy in the target direction, dealing magic damage to all enemies it passes through, then pulls it back, dealing true damage to all enemies it passes through on the way back.', '/img/abilities/ahri/Ahri_Orb_of_Deception.webp'),
(18, 'Fox-Fire', 'ACTIVE: Ahri releases three fox-fires that lock onto and attack nearby enemies.', '/img/abilities/ahri/Ahri_Fox-Fire.webp'),
(19, 'Charm', 'ACTIVE: Ahri blows a kiss in the target direction, dealing magic damage to the first enemy hit and charming them, causing them to walk harmlessly towards her for a few seconds.', '/img/abilities/ahri/Ahri_Charm.webp'),
(20, 'Spirit Rush', 'ACTIVE: Ahri dashes in the target direction, dealing magic damage to all enemies she passes through. Spirit Rush can be cast up to two additional times within 10 seconds of activation at no additional cost.', '/img/abilities/ahri/Ahri_Spirit_Rush.webp'),
-- Jhin Abilities
(21, 'Whisper', 'INNATE: Jhins basic attacks consume ammunition for 4 rounds. The fourth shot is a guaranteed critical strike and deals bonus physical damage. Jhin can attack once every 10 / 9 / 8 / 7 / 6 seconds, affected by attack speed.', '/img/abilities/jhin/Jhin_Whisper.webp'),
(22, 'Dancing Grenade', 'ACTIVE: Jhin throws a grenade at the target enemy that bounces to up to 4 additional enemies. The grenade deals physical damage to each enemy hit, with the damage decreasing by 10% for each subsequent target hit.', '/img/abilities/jhin/Jhin_Dancing_Grenade.webp'),
(23, 'Deadly Flourish', 'ACTIVE: Jhin fires a shot at the target enemy that stops on the first champion hit, dealing physical damage, and rooting them for a duration.', '/img/abilities/jhin/Jhin_Deadly_Flourish.webp'),
(24, 'Captive Audience', 'ACTIVE: Jhin places a trap at the target location that, once armed, reveals and slows all nearby enemies. If a champion triggers the trap, it will explode, dealing physical damage and rooting the champion.', '/img/abilities/jhin/Jhin_Captive_Audience.webp'),
(25, 'Curtain Call', 'ACTIVE: Jhin channels for 10 seconds, enabling him to fire 4 super shots at extreme range in quick succession. The shots stop on the first champion hit, dealing physical damage to all enemies hit and slowing them for 0.75 seconds.', '/img/abilities/jhin/Jhin_Curtain_Call.webp'),
-- Senna Abilities
(26, 'Absolution', 'INNATE: Senna collects Mist from enemy champions that die near her, permanently increasing her attack damage and attack range. Additionally, Senna can use Absolution to collect Mist Wraiths that spawn from dead enemies.', '/img/abilities/senna/Senna_Absolution.webp'),
(27, 'Piercing Darkness', 'ACTIVE: Senna fires a bolt of piercing shadow through an ally or enemy. Enemies hit take physical damage, while allies hit are healed.', '/img/abilities/senna/Senna_Piercing_Darkness.webp'),
(28, 'Last Embrace', 'ACTIVE: Senna throws a globule of Black Mist at the target area, dealing magic damage to the first enemy hit and rooting them after a brief delay.', '/img/abilities/senna/Senna_Last_Embrace.webp'),
(29, 'Curse of the Black Mist', 'ACTIVE: Senna dissolves into a cloud of mist for a brief period, becoming a wraith. Allied champions who enter the mist are Camouflaged and become wraiths when they leave.', '/img/abilities/senna/Senna_Curse_of_the_Black_Mist.webp'),
(30, 'Dawning Shadow', 'ACTIVE: Senna fires a global beam that shields allies and damages enemies.', '/img/abilities/senna/Senna_Dawning_Shadow.webp'),
-- Leona Abilities
(31, 'Sunlight', 'INNATE: Leonas abilities mark enemies hit with Sunlight for 1.5 seconds. When allied champions deal damage to those enemies, they consume the Sunlight debuff to deal bonus magic damage.', '/img/abilities/leona/Leona_Sunlight.webp'),
(32, 'Shield of Daybreak', 'ACTIVE: Leonas next basic attack gains 75 bonus range and deals bonus magic damage, stunning the target for 1.25 seconds.', '/img/abilities/leona/Leona_Shield_of_Daybreak.webp'),
(33, 'Eclipse', 'ACTIVE: Leona raises her shield to gain bonus Armor and Magic resistance for 3 seconds. When the effect ends, she deals magic damage to nearby enemies and prolongs the effect for a bonus 3 seconds if any enemies are struck.', '/img/abilities/leona/Leona_Eclipse.webp'),
(34, 'Zenith Blade', 'ACTIVE: Leona projects a solar image of her sword, dealing magic damage to all enemies in a line. Leona dashes to the last enemy champion struck, rooting them for 0.5 seconds and applying the same effect to all other enemy champions hit.', '/img/abilities/leona/Leona_Zenith_Blade.webp'),
(35, 'Solar Flare', 'ACTIVE: Leona calls down a beam of solar energy to the target location after a 0.625-second delay, dealing magic damage to all enemies hit and slowing them for 1.5 seconds.', '/img/abilities/leona/Leona_Solar_Flare.webp'),
-- Thresh Abilities
(36, 'Damnation', 'INNATE: Thresh collects the souls of dead enemies by approaching them or by placing Dark Passage lanterns nearby. Souls permanently grant him armor and ability power.', '/img/abilities/thresh/Thresh_Damnation.webp'),
(37, 'Death Sentence', 'ACTIVE: Thresh throws his scythe in the target direction, dealing magic damage to the first enemy hit, pulling them towards him and stunning them for 1.5 seconds.', '/img/abilities/thresh/Thresh_Death_Sentence.webp'),
(38, 'Dark Passage', 'ACTIVE: Thresh throws his lantern to the target location, shielding all nearby allies for up to 4 seconds. If an ally right-clicks the lantern, they will dash to Thresh.', '/img/abilities/thresh/Thresh_Dark_Passage.webp'),
(39, 'Flay', 'ACTIVE: Thresh sweeps his chain in the target direction, dealing magic damage to all enemies hit and pushing them in the same direction.', '/img/abilities/thresh/Thresh_Flay.webp'),
(40, 'The Box', 'ACTIVE: Thresh creates a prison of spectral walls around him, dealing magic damage and slowing all enemies who pass through them.', '/img/abilities/thresh/Thresh_The_Box.webp'),
-- Braum Abilities
(41, 'Concussive Blows', 'INNATE: Braum applies Concussive Blows to enemies hit by his basic attacks, Winters Bite, or Glacial Fissure. Once the first stack is applied, Braum and his allies can autoattack the target 3 times to consume the stacks and stun the target for 1.25 / 1.5 / 1.75 seconds.', '/img/abilities/braum/Braum_Concussive_Blows.webp'),
(42, 'Winters Bite', 'ACTIVE: Braum propels ice from his shield in the target direction, dealing magic damage to the first enemy hit and slowing them for 2 seconds.', '/img/abilities/braum/Braum_Winters_Bite.webp'),
(43, 'Stand Behind Me', 'ACTIVE: Braum leaps to the target ally, positioning himself between his target and the nearest enemy champion, gaining bonus armor and magic resistance for 3 seconds.', '/img/abilities/braum/Braum_Stand_Behind_Me.webp'),
(44, 'Unbreakable', 'ACTIVE: Braum raises his shield in the target direction, creating a barrier that intercepts all incoming non-turret enemy projectiles. The first instance of damage blocked by his shield is negated, and subsequent instances deal reduced damage.', '/img/abilities/braum/Braum_Unbreakable.webp'),
(45, 'Glacial Fissure', 'ACTIVE: Braum slams his shield into the ground, dealing magic damage to all enemies in a line and knocking them up for 1.5 seconds. A fissure remains for 4 seconds, slowing enemies within and granting sight.', '/img/abilities/braum/Braum_Glacial_Fissure.webp'),
-- Lulu Abilities
(46, 'Pix, Faerie Companion', 'INNATE: Pix fires a barrage of 3 bolts, dealing magic damage to the first enemy they hit. Pix can be commanded to attack targets by Lulu.', '/img/abilities/lulu/Lulu_Pix_Faerie_Companion.webp'),
(47, 'Glitterlance', 'ACTIVE: Lulu and Pix each fire a magic bolt in the target direction, dealing magic damage to the first enemy they hit. Enemies hit are slowed for 1.5 seconds.', '/img/abilities/lulu/Lulu_Glitterlance.webp'),
(48, 'Whimsy', 'ACTIVE: Lulu polymorphs the target enemy champion for a duration, disabling their ability to attack or cast abilities and reducing their base movement speed.', '/img/abilities/lulu/Lulu_Whimsy.webp'),
(49, 'Help, Pix!', 'ACTIVE: Lulu commands Pix to jump to the target ally, shielding them for up to 6 seconds. Additionally, Pix will then follow and aid their attacks.', '/img/abilities/lulu/Lulu_Help_Pix.webp'),
(50, 'Wild Growth', 'ACTIVE: Lulu enlarges the target allied champion, knocking up enemies near them and granting them bonus health.', '/img/abilities/lulu/Lulu_Wild_Growth.webp'),
-- Lux Abilities
(51, 'Illumination', 'INNATE: Luxs damaging spells charge the target with energy for 6 seconds. Luxs next attack ignites the energy, dealing bonus magic damage to the target.', '/img/abilities/lux/Lux_Illumination.webp'),
(52, 'Light Binding', 'ACTIVE: Lux releases a sphere of light in the target direction, binding and dealing magic damage to up to two enemy units hit.', '/img/abilities/lux/Lux_Light_Binding.webp'),
(53, 'Prismatic Barrier', 'ACTIVE: Lux throws her wand in the target direction, shielding herself and all allied champions it touches for up to 3 seconds.', '/img/abilities/lux/Lux_Pristmatic_Barrier.webp'),
(54, 'Lucent Singularity', 'ACTIVE: Lux sends an anomaly of twisted light to the target area, slowing nearby enemies. Lux can detonate it to deal magic damage to enemies in the area.', '/img/abilities/lux/Lux_Lucent_Singularity.webp'),
(55, 'Final Spark', 'ACTIVE: After gathering energy, Lux fires a beam of light in a line that deals magic damage to all enemies hit.', '/img/abilities/lux/Lux_Final_Spark.webp'),
-- Sylas Abilities
(56, 'Petricite Burst', 'INNATE: Sylass basic attacks are empowered by his chains, gaining 50 bonus attack range and dealing bonus magic damage. Sylass basic attacks against enemy champions consume a portion of their maximum health to deal bonus magic damage.', '/img/abilities/sylas/Sylas_Petricite_Burst.webp'),
(57, 'Chain Lash', 'ACTIVE: Sylas lashes his chains out in the target direction, dealing magic damage to the first enemy hit and slowing them for 2 seconds.', '/img/abilities/sylas/Sylas_Chain_Lash.webp'),
(58, 'Kingslayer', 'ACTIVE: Sylas lunges at the target enemy with a powerful strike, dealing magic damage and healing himself. If the target is below a certain health threshold, Kingslayer deals increased damage and heals Sylas for a percentage of his missing health.', '/img/abilities/sylas/Sylas_Kingslayer.webp'),
(59, 'Abscond/Abduct', 'ACTIVE: Sylas dashes a fixed distance in the target direction. After a brief delay, he can recast Abscond to whip out his chains in the target direction, stunning the first enemy hit.', '/img/abilities/sylas/Sylas_Abscond_Abduct.webp'),
(60, 'Hijack', 'ACTIVE: Sylas hijacks the target enemy champions ultimate ability and can cast it freely.', '/img/abilities/sylas/Sylas_Hijack.webp'),
-- Katarina Abilities
(61, 'Voracity', 'INNATE: Katarinas ability cooldowns are reduced by 15 seconds whenever an enemy champion dies within 3 seconds of her damaging them.', '/img/abilities/katarina/Katarina_Voracity.webp'),
(62, 'Bouncing Blade', 'ACTIVE: Katarina throws a dagger to the target enemy that bounces to up to 2 nearby enemies, dealing magic damage to each target.', '/img/abilities/katarina/Katarina_Bouncing_Blade.webp'),
(63, 'Preparation', 'ACTIVE: Katarina tosses a dagger into the air and gains 50 bonus movement speed for 1.25 seconds.', '/img/abilities/katarina/Katarina_Preparation.webp'),
(64, 'Shunpo', 'ACTIVE: Katarina blinks to the target location around the target enemy or Dagger, dealing magic damage to the nearest enemy in range.', '/img/abilities/katarina/Katarina_Shunpo.webp'),
(65, 'Death Lotus', 'ACTIVE: Katarina becomes a flurry of blades, throwing daggers at the 3 nearest enemy champions within range over 2.5 seconds, dealing magic damage to each enemy hit.', '/img/abilities/katarina/Katarina_Death_Lotus.webp'),
-- Akali Abilities
(66, 'Assassins Mark', 'INNATE: Akalis damaging abilities against enemy champions create a ring around them for 4 seconds. Exiting the ring empowers Akalis next basic attack to gain bonus range and deal bonus magic damage.', '/img/abilities/akali/Akali_Assassins_Mark.webp'),
(67, 'Five Point Strike', 'ACTIVE: Akali throws shurikens in the target direction, dealing magic damage to enemies hit.', '/img/abilities/akali/Akali_Five_Point_Strike.webp'),
(68, 'Twilight Shroud', 'ACTIVE: Akali creates a smoke cover for 5 seconds, becoming invisible and gaining bonus movement speed. While under the cover of Twilight Shroud, Akali is obscured and can move through units.', '/img/abilities/akali/Akali_Twilight_Shroud.webp'),
(69, 'Shuriken Flip', 'ACTIVE: Akali backflips and throws a shuriken in the target direction, dealing magic damage to the first enemy hit.', '/img/abilities/akali/Akali_Shuriken_Flip.webp'),
(70, 'Perfect Execution', 'ACTIVE: Akali dashes in the target direction, dealing magic damage to enemies hit. Akali can recast Perfect Execution within a 0.5-second window after the first cast, with the second cast dealing increased damage based on the missing health of enemies hit by the first cast.', '/img/abilities/akali/Akali_Perfect_Execution.webp'),
-- Kayle Abilities
(71, 'Divine Ascent', 'INNATE: Kayles basic attacks and Reckoning grant a stack of Divine Ascent for 5 seconds, stacking up to 5 times. At 5 stacks, Kayle becomes Exalted, gaining bonus attack range and bonus magic damage on-hit.', '/img/abilities/kayle/Kayle_Divine_Ascent.webp'),
(72, 'Radiant Blast', 'ACTIVE: Kayle summons a celestial sword that stops on the first enemy hit, dealing magic damage and slowing them for 3 seconds.', '/img/abilities/kayle/Kayle_Radiant_Blast.webp'),
(73, 'Celestial Blessing', 'ACTIVE: Kayle blesses the target allied champion or herself, healing them and granting them bonus movement speed for 2 seconds.', '/img/abilities/kayle/Kayle_Celestial_Blessing.webp'),
(74, 'Starfire Spellblade', 'ACTIVE: Kayle empowers her next basic attack to deal bonus magic damage.', '/img/abilities/kayle/Kayle_Starfire_Spellblade.webp'),
(75, 'Divine Judgment', 'ACTIVE: Kayle bathes the target allied champion or herself in holy light, rendering them immune to all damage for a few seconds.', '/img/abilities/kayle/Kayle_Divine_Judgment.webp'),
-- Morgana Abilities
(76, 'Soul Siphon', 'INNATE: Morgana heals for a percentage of the damage she deals to champions, large minions, and large monsters.', '/img/abilities/morgana/Morgana_Soul_Siphon.webp'),
(77, 'Dark Binding', 'ACTIVE: Morgana releases a sphere of dark magic in the target direction, dealing magic damage to the first enemy hit and rooting them for a duration.', '/img/abilities/morgana/Morgana_Dark_Binding.webp'),
(78, 'Tormented Shadow', 'ACTIVE: Morgana infects the target area for 5 seconds, causing enemies within to take magic damage every second.', '/img/abilities/morgana/Morgana_Tormented_Shadow.webp'),
(79, 'Black Shield', 'ACTIVE: Morgana shields the target allied champion for up to 5 seconds, absorbing magic damage and granting crowd control immunity.', '/img/abilities/morgana/Morgana_Black_Shield.webp'),
(80, 'Soul Shackles', 'ACTIVE: Morgana latches chains of energy onto nearby enemy champions, dealing magic damage and slowing them. If the target remains shackled for a duration, they are stunned.', '/img/abilities/morgana/Morgana_Soul_Shackles.webp'),
-- Jinx Abilities
(81, 'Get Excited!', 'INNATE: Jinx gains bonus movement speed whenever she damages an enemy champion or tower that is then killed or destroyed within 3 seconds.', '/img/abilities/jinx/Jinx_Get_Excited.webp'),
(82, 'Switcheroo!', 'TOGGLE: Jinx swaps weapons, changing her basic attacks and Fishbones, the Rocket Launcher, for 1.5 seconds.', '/img/abilities/jinx/Jinx_Switcheroo.webp'),
(83, 'Zap!', 'ACTIVE: Jinx fires a shock blast that deals physical damage to the first enemy hit, also granting sight and slowing them for 2 seconds.', '/img/abilities/jinx/Jinx_Zap.webp'),
(84, 'Flame Chompers!', 'ACTIVE: Jinx tosses out 3 chompers that, once armed, explode on contact with enemy champions, rooting them for 1.5 seconds and dealing magic damage over 1.5 seconds to nearby enemies.', '/img/abilities/jinx/Jinx_Flame_Chompers.webp'),
(85, 'Super Mega Death Rocket!', 'ACTIVE: Jinx fires a rocket that travels in a line, exploding on the first enemy champion hit, dealing physical damage to the target and all nearby enemies based on their missing health.', '/img/abilities/jinx/Jinx_Super_Mega_Death_Rocket.webp'),
-- Ashe Abilities
(86, 'Frost Shot', 'INNATE: Ashes basic attacks and abilities apply Frost to enemies hit, slowing them for 2 seconds.', '/img/abilities/ashe/Ashe_Frost_Shot.webp'),
(87, 'Rangers Focus', 'ACTIVE: Ashe gains bonus attack speed and empowers her basic attacks to fire a flurry of arrows for the duration.', '/img/abilities/ashe/Ashe_Rangers_Focus.webp'),
(88, 'Volley', 'ACTIVE: Ashe fires 9 arrows in a cone in the target direction, dealing physical damage to all enemies hit.', '/img/abilities/ashe/Ashe_Volley.webp'),
(89, 'Hawkshot', 'ACTIVE: Ashe sends her Hawk Spirit on a scouting mission to the target location, granting sight of its path and the target area for 2 seconds.', '/img/abilities/ashe/Ashe_Hawkshot.webp'),
(90, 'Enchanted Crystal Arrow', 'ACTIVE: Ashe fires a missile of ice in the target direction that shatters upon hitting an enemy champion, dealing magic damage to all enemies hit and stunning them for a duration.', '/img/abilities/ashe/Ashe_Enchanted_Crystal_Arrow.webp'),
-- Miss Fortune Abilities
(91, 'Love Tap', 'INNATE: Miss Fortunes basic attacks deal bonus physical damage to the target.', '/img/abilities/missfortune/Miss_Fortune_Love_Tap.webp'),
(92, 'Double Up', 'ACTIVE: Miss Fortune fires a shot at the target enemy that deals physical damage and applies on-hit effects. If the target is killed by Double Up or is killed within 0.25 seconds of being hit by it, the following shot will deal bonus physical damage.', '/img/abilities/missfortune/Miss_Fortune_Double_Up.webp'),
(93, 'Strut', 'INNATE: Miss Fortune gains bonus movement speed if she has not taken damage in the last 5 seconds, increasing to a greater amount after 5 seconds.', '/img/abilities/missfortune/Miss_Fortune_Strut.webp'),
(94, 'Make It Rain', 'ACTIVE: Miss Fortune rains down bullets at the target location, dealing magic damage over 2 seconds and slowing enemies within.', '/img/abilities/missfortune/Miss_Fortune_Make_It_Rain.webp'),
(95, 'Bullet Time', 'ACTIVE: Miss Fortune channels for 3 seconds, firing waves of bullets in a cone in front of her that deal physical damage to all enemies hit.', '/img/abilities/missfortune/Miss_Fortune_Bullet_Time.webp'),
-- Sivir Abilities
(96, 'Fleet of Foot', 'INNATE: Sivir gains bonus movement speed for 2 seconds whenever she damages an enemy champion with an ability.', '/img/abilities/sivir/Sivir_Fleet_of_Foot.webp'),
(97, 'Boomerang Blade', 'ACTIVE: Sivir hurls her crossblade in the target direction, dealing physical damage to the first enemy hit and reduced damage to each subsequent target.', '/img/abilities/sivir/Sivir_Boomerang_Blade.webp'),
(98, 'Ricochet', 'ACTIVE: Sivirs next 3 basic attacks bounce to nearby enemies, dealing physical damage to each target hit.', '/img/abilities/sivir/Sivir_Ricochet.webp'),
(99, 'Spell Shield', 'ACTIVE: Sivir creates a magical barrier that blocks the next enemy ability that hits her. If an ability is blocked by the shield, Sivir regains mana.', '/img/abilities/sivir/Sivir_Spell_Shield.webp'),
(100, 'On The Hunt', 'ACTIVE: Sivir rallies her allies for 8 seconds, granting all nearby allies bonus movement speed for 2 seconds.', '/img/abilities/sivir/Sivir_On_The_Hunt.webp');

-- cSpell: enable
-- Create Classes table
CREATE TABLE Classes (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    image_url TEXT
);

-- Insert data into Classes table
INSERT INTO Classes (id, name, image_url) VALUES
(1, 'Tank', '/img/classes/Tank_icon.webp'),
(2, 'Fighter', '/img/classes/Fighter_icon.webp'),
(3, 'Mage', '/img/classes/Mage_icon.webp'),
(4, 'Assassin ', '/img/classes/Slayer_icon.webp'),
(5, 'Marksman', '/img/classes/Marksman_icon.webp'),
(6, 'Support', '/img/classes/Controller_icon.webp');


-- Create Champions table
CREATE TABLE Champions (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    release_date DATE NOT NULL,
    lore TEXT NOT NULL,
    image_url TEXT,
    icon_url TEXT,

    range_id INT,

    passive_ability_id INT,
    first_ability_id INT,
    second_ability_id INT,
    third_ability_id INT,
    ultimate_ability_id INT,

    price_id INT,

    damage INT, -- 1 to 3
    toughness INT, -- 1 to 3
    control INT, -- 1 to 3
    mobility INT, -- 1 to 3
    utility INT, -- 1 to 3

    difficulty INT, -- 1 to 3

    FOREIGN KEY (range_id) REFERENCES Ranges(id),
    FOREIGN KEY (passive_ability_id) REFERENCES Abilities(id),
    FOREIGN KEY (first_ability_id) REFERENCES Abilities(id),
    FOREIGN KEY (second_ability_id) REFERENCES Abilities(id),
    FOREIGN KEY (third_ability_id) REFERENCES Abilities(id),
    FOREIGN KEY (ultimate_ability_id) REFERENCES Abilities(id),
    FOREIGN KEY (price_id) REFERENCES Prices(id)
);

-- Insert data into Champions table
INSERT INTO Champions (id, name, release_date, lore, image_url, icon_url, range_id, passive_ability_id, first_ability_id, second_ability_id, third_ability_id, ultimate_ability_id, damage, toughness, control, mobility, utility, difficulty, price_id) VALUES
(1, 'Yone', '2020-08-06', 'Yone was a swordsman who was killed by his brother Yasuo, but was later resurrected by the spirit of an ancient warrior. Now, Yone seeks to redeem himself and find his own path.', '/img/champions/Yone_OriginalSkin.webp', '/img/champions/Yone_OriginalCircle.webp', 1, 1, 2, 3, 4, 5, 3, 1, 2, 3, 1, 3, 3),
(2, 'Yasuo', '2013-12-13', 'Yasuo is a swordsman who seeks to clear his name after being falsely accused of murdering his master. He wields a wind technique that allows him to cut down his enemies with ease.', '/img/champions/Yasuo_OriginalSkin.webp', '/img/champions/Yasuo_OriginalCircle.webp', 1, 6, 7, 8, 9, 10, 3, 1, 2, 3, 1, 3, 3),
(3, 'Zed', '2012-11-13', 'Zed is a master of shadows who seeks to become the strongest ninja in the world. He wields a technique that allows him to create shadow clones and strike his enemies from a distance.', '/img/champions/Zed_OriginalSkin.webp', '/img/champions/Zed_OriginalCircle.webp', 1, 11, 12, 13, 14, 15, 3, 1, 2, 3, 1, 3, 3),
(4, 'Ahri', '2011-12-14', 'Ahri is a nine-tailed fox who seeks to become human by consuming the life force of others. She wields a technique that allows her to charm her enemies and drain their life force.', '/img/champions/Ahri_OriginalSkin.webp', '/img/champions/Ahri_OriginalCircle.webp', 2, 16, 17, 18, 19, 20, 3, 1, 2, 3, 1, 3, 3),
(5, 'Jhin', '2016-02-01', 'Jhin is a psychopathic killer who seeks to create the perfect masterpiece with his victims. He wields a technique that allows him to snipe his enemies from a distance and execute them with precision.', '/img/champions/Jhin_OriginalSkin.webp', '/img/champions/Jhin_OriginalCircle.webp', 2, 21, 22, 23, 24, 25, 3, 1, 2, 3, 1, 3, 3),
(6, 'Senna', '2019-11-10', 'Senna is a former prisoner of the Black Mist who seeks to free her people from the Shadow Isles. She wields a technique that allows her to heal her allies and damage her enemies from a distance.', '/img/champions/Senna_OriginalSkin.webp', '/img/champions/Senna_OriginalCircle.webp', 2, 26, 27, 28, 29, 30, 3, 1, 2, 3, 1, 3, 3),
(7, 'Leona', '2011-07-13', 'Leona is a warrior of the Solari who seeks to protect her people from the darkness. She wields a technique that allows her to stun her enemies and shield her allies from harm.', '/img/champions/Leona_OriginalSkin.webp', '/img/champions/Leona_OriginalCircle.webp', 1, 31, 32, 33, 34, 35, 3, 1, 2, 3, 1, 3, 3),
(8, 'Thresh', '2013-01-23', 'Thresh is a sadistic jailer who seeks to collect the souls of the living. He wields a technique that allows him to hook his enemies and drag them into the darkness.', '/img/champions/Thresh_OriginalSkin.webp', '/img/champions/Thresh_OriginalCircle.webp', 1, 36, 37, 38, 39, 40, 3, 1, 2, 3, 1, 3, 3),
(9, 'Braum', '2014-05-12', 'Braum is a gentle giant who seeks to protect the innocent from harm. He wields a technique that allows him to shield his allies and knock back his enemies with ease.', '/img/champions/Braum_OriginalSkin.webp', '/img/champions/Braum_OriginalCircle.webp', 1, 41, 42, 43, 44, 45, 3, 1, 2, 3, 1, 3, 3),
(10, 'Lulu', '2012-03-20', 'Lulu is a mischievous yordle who seeks to spread chaos wherever she goes. She wields a technique that allows her to polymorph her enemies and shield her allies from harm.', '/img/champions/Lulu_OriginalSkin.webp', '/img/champions/Lulu_OriginalCircle.webp', 2, 46, 47, 48, 49, 50, 3, 1, 2, 3, 1, 3, 3),
(11, 'Lux', '2010-10-19', 'Lux is a mage of the Demacian military who seeks to bring light to the darkness. She wields a technique that allows her to snare her enemies and unleash a powerful laser beam.', '/img/champions/Lux_OriginalSkin.webp', '/img/champions/Lux_OriginalCircle.webp', 2, 51, 52, 53, 54, 55, 3, 1, 2, 3, 1, 3, 3),
(12, 'Sylas', '2019-01-25', 'Sylas is a mage who seeks to free his people from the oppression of the mageseekers. He wields a technique that allows him to steal the ultimates of his enemies and turn them against them.', '/img/champions/Sylas_OriginalSkin.webp', '/img/champions/Sylas_OriginalCircle.webp', 1, 56, 57, 58, 59, 60, 3, 1, 2, 3, 1, 3, 3),
(13, 'Katarina', '2009-09-19', 'Katarina is an assassin who seeks to prove herself as the best in the world. She wields a technique that allows her to blink to her enemies and unleash a flurry of blades.', '/img/champions/Katarina_OriginalSkin.webp', '/img/champions/Katarina_OriginalCircle.webp', 1, 61, 62, 63, 64, 65, 3, 1, 2, 3, 1, 3, 3),
(14, 'Akali', '2010-05-11', 'Akali is a ninja who seeks to restore the balance between good and evil. She wields a technique that allows her to dash to her enemies and unleash a flurry of blows.', '/img/champions/Akali_OriginalSkin.webp', '/img/champions/Akali_OriginalCircle.webp', 1, 66, 67, 68, 69, 70, 3, 1, 2, 3, 1, 3, 3),
(15, 'Kayle', '2009-02-21', 'Kayle is an angel who seeks to bring justice to the world. She wields a technique that allows her to shield her allies and unleash a barrage of holy fire.', '/img/champions/Kayle_OriginalSkin.webp', '/img/champions/Kayle_OriginalCircle.webp', 1, 71, 72, 73, 74, 75, 3, 1, 2, 3, 1, 3, 3),
(16, 'Morgana', '2009-02-21', 'Morgana is a fallen angel who seeks to bring darkness to the world. She wields a technique that allows her to snare her enemies and unleash a barrage of dark magic.', '/img/champions/Morgana_OriginalSkin.webp', '/img/champions/Morgana_OriginalCircle.webp', 2, 76, 77, 78, 79, 80, 3, 1, 2, 3, 1, 3, 3),
(17, 'Jinx', '2013-10-10', 'Jinx is a psychopathic killer who seeks to create chaos wherever she goes. She wields a technique that allows her to snipe her enemies from a distance and unleash a barrage of rockets.', '/img/champions/Jinx_OriginalSkin.webp', '/img/champions/Jinx_OriginalCircle.webp', 2, 81, 82, 83, 84, 85, 3, 1, 2, 3, 1, 3, 3),
(18, 'Ashe', '2009-02-21', 'Ashe is a frost archer who seeks to bring peace to the world. She wields a technique that allows her to slow her enemies and unleash a barrage of arrows.', '/img/champions/Ashe_OriginalSkin.webp', '/img/champions/Ashe_OriginalCircle.webp', 2, 86, 87, 88, 89, 90, 3, 1, 2, 3, 1, 3, 3),
(19, 'Miss Fortune', '2009-09-08', 'Miss Fortune is a bounty hunter who seeks to bring justice to the world. She wields a technique that allows her to slow her enemies and unleash a barrage of bullets.', '/img/champions/Miss_Fortune_OriginalSkin.webp', '/img/champions/Miss_Fortune_OriginalCircle.webp', 2, 91, 92, 93, 94, 95, 3, 1, 2, 3, 1, 3, 3),
(20, 'Sivir', '2009-02-21', 'Sivir is a mercenary who seeks to bring justice to the world. She wields a technique that allows her to shield her allies and unleash a barrage of boomerangs.', '/img/champions/Sivir_OriginalSkin.webp', '/img/champions/Sivir_OriginalCircle.webp', 2, 96, 97, 98, 99, 100, 3, 1, 2, 3, 1, 3, 3);

-- Create ChampionClasses table
CREATE TABLE ChampionClasses (
    champion_id INT,
    class_id INT,

    PRIMARY KEY (champion_id, class_id),
    FOREIGN KEY (champion_id) REFERENCES Champions(id),
    FOREIGN KEY (class_id) REFERENCES Classes(id)
);

-- Insert data into ChampionClasses table
INSERT INTO ChampionClasses (champion_id, class_id) VALUES
(1, 4), -- Yone is a Assassin
(1, 2), -- Yone is also a Fighter
(2, 4), -- Yasuo is a Assassin
(2, 2), -- Yasuo is also a Fighter
(3, 4), -- Zed is a Assassin
(3, 2), -- Zed is also a Fighter
(4, 3), -- Ahri is a Mage
(5, 3), -- Jhin is a Mage
(5, 5), -- Jhin is also a Marksman
(6, 5), -- Senna is a Marksman
(6, 6), -- Senna is also a Support
(7, 1), -- Leona is a Tank
(7, 6), -- Leona is also a Support
(8, 1), -- Thresh is a Tank
(8, 6), -- Thresh is also a Support
(9, 1), -- Braum is a Tank
(9, 6), -- Braum is also a Support
(10, 3), -- Lulu is a Mage
(10, 6), -- Lulu is also a Support
(11, 3), -- Lux is a Mage
(11, 6), -- Lux is also a Support
(12, 3), -- Sylas is a Mage
(12, 2), -- Sylas is also a Fighter
(13, 4), -- Katarina is a Assassin
(14, 4), -- Akali is a Assassin
(15, 2), -- Kayle is a Fighter
(16, 3), -- Morgana is a Mage
(16, 6), -- Morgana is also a Support
(17, 5), -- Jinx is a Marksman
(18, 5), -- Ashe is a Marksman
(19, 5), -- Miss Fortune is a Marksman
(20, 5); -- Sivir is a Marksman

-- Create ChampionPositions table
CREATE TABLE ChampionPositions (
    champion_id INT,
    position_id INT,

    PRIMARY KEY (champion_id, position_id),
    FOREIGN KEY (champion_id) REFERENCES Champions(id),
    FOREIGN KEY (position_id) REFERENCES Positions(id)
);

-- Insert data into ChampionPositions table
INSERT INTO ChampionPositions (champion_id, position_id) VALUES
(1, 3), -- Yone is a Mid laner
(1, 1), -- Yone can also be played Top
(2, 3), -- Yasuo is a Mid laner
(2, 1), -- Yasuo can also be played Top
(3, 3), -- Zed is a Mid laner
(4, 3), -- Ahri is a Mid laner
(5, 3), -- Jhin is a Mid laner
(5, 4), -- Jhin can also be played as an ADC
(6, 4), -- Senna is an ADC
(7, 5), -- Leona is a Support
(8, 5), -- Thresh is a Support
(9, 5), -- Braum is a Support
(10, 5), -- Lulu is a Support
(11, 5), -- Lux is a Support
(12, 3), -- Sylas is a Mid laner
(13, 3), -- Katarina is a Mid laner
(14, 3), -- Akali is a Mid laner
(15, 1), -- Kayle is a Top laner
(16, 3), -- Morgana is a Mid laner
(16, 5), -- Morgana is also a Support
(17, 4), -- Jinx is an ADC
(18, 4), -- Ashe is an ADC
(19, 4), -- Miss Fortune is an ADC
(20, 4); -- Sivir is an ADC

-- Create Skins table
CREATE TABLE Skins (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    release_date DATE NOT NULL,
    image_url TEXT,
    champion_id INT,
    riot_points INT,

    FOREIGN KEY (champion_id) REFERENCES Champions(id)
);

-- Insert data into Skins table
INSERT INTO Skins (id, name, release_date, image_url, champion_id, riot_points) VALUES
(1, 'Original Yone', '2020-08-06', '/img/skins/Yone_OriginalSkin.webp', 1, 975),
(2, 'Spirit Blossom Yone', '2020-08-06', '/img/skins/Yone_SpiritBlossomSkin.webp', 1, 1350),
(3, 'Battle Academia Yone', '2020-08-06', '/img/skins/Yone_BattleAcademiaSkin.webp', 1, 1350),
(4, 'Dawnbringer Yone', '2020-08-06', '/img/skins/Yone_DawnbringerSkin.webp', 1, 1820),
(5, 'Ocean Song Yone', '2020-08-06', '/img/skins/Yone_OceanSongSkin.webp', 1, 1350);

-- Create Prices table
CREATE TABLE Prices (
    id INT PRIMARY KEY,
    blue_essence INT NOT NULL,
    riot_points INT NOT NULL
);

-- Insert data into Prices table
INSERT INTO Prices (id, blue_essence, riot_points) VALUES
(1, 6300, 975),
(2, 4800, 880),
(3, 3150, 790),
(4, 1350, 585),
(5, 450, 260);
