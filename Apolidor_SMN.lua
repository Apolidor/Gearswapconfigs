include('organizer-lib')

function get_sets()
    --------------------------------------
    -- Variables
    --------------------------------------
    gear_mode = 0
    weapon_mode = 0
    avatar = "none"

    --------------------------------------
    -- Precast sets
    --------------------------------------
    sets.precast = {}
    sets.precast.JA = {}
    --sets.precast.JA['ja'] = {}    
    sets.precast['Astral Flow'] = {head={ name="Glyphic Horn +1", augments={'Enhances "Astral Flow" effect',}},}
    sets.precast.Bloodpact = {
        main={ name="Espiritus", augments={'Enmity-6','Pet: "Mag.Atk.Bns."+30','Pet: Damage taken -4%',}},
        sub="Vox Grip",
        ammo="Sancus Sachet +1",
        head="Beckoner's Horn +1",
        body="Baayami Robe",
        hands="Baayami Cuffs",
        legs="Baayami Slops",
        feet="Baayami Sabots",
        neck="Incanter's Torque",
        waist="Lucidity Sash",
        left_ear="Lodurr Earring",
        right_ear="Evans Earring",
        left_ring="Stikini Ring",
        right_ring="Evoker's Ring",
        back={ name="Conveyance Cape", augments={'Summoning magic skill +2','Pet: Enmity+9','Blood Pact Dmg.+2','Blood Pact ab. del. II -2',}},
        }
    sets.precast.FC = {}
    sets.precast.FCAvatar = {    
        main={ name="Grioavolr", augments={'Blood Pact Dmg.+8','Pet: Mag. Acc.+26','Pet: "Mag.Atk.Bns."+29','DMG:+2',}},
        sub="Clerisy Strap",
        ammo="Sapience Orb",
        head={ name="Merlinic Hood", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','"Occult Acumen"+9','INT+6','"Mag.Atk.Bns."+4',}},
        body="Baayami Robe",
        hands="Repartie Gloves",
        legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
        feet={ name="Merlinic Crackows", augments={'"Mag.Atk.Bns."+30','Mag. crit. hit dmg. +9%','INT+15','Mag. Acc.+15',}},
        right_ear="Malignance Earring",
        left_ear="Loquac. Earring",
        right_ring="Naji's Loop",
        left_ring="Kishar Ring",
    } 
    sets.precast.AvatarsFavor = {head="Beckoner's Horn +1",}    
    sets.precast['Elemental Siphon'] = {
        main="Chatoyant Staff",
        sub="Vox Grip",
        head="Baayami Hat",
        body="Baayami Robe",
        hands="Baayami Cuffs",
        legs="Baayami Slops",
        feet="Beck. Pigaches +1",
        neck="Incanter's Torque",
        waist="Ligeia Sash",
        left_ear="Smn. Earring",
        right_ear="Lodurr Earring",
        left_ring="Fervor Ring",
        right_ring="Evoker's Ring",
        back={ name="Conveyance Cape", augments={'Summoning magic skill +2','Pet: Enmity+9','Blood Pact Dmg.+2','Blood Pact ab. del. II -2',}},
        } 

        --------------------------------------
    -- Weaponskill sets
    --------------------------------------
    -- default set
    sets.precast.WS = {}        
    sets.precast['Shattersoul'] = set_combine(sets.precast.WS, {
        body="Count's Garb",
        hands={ name="Glyphic Bracers +1", augments={'Inc. Sp. "Blood Pact" magic burst dmg.',}},
        legs="Telchine Braconi",
        feet="Beck. Pigaches +1",
        neck="Fotia Gorget",
        waist="Fotia Belt",
        left_ear="Ishvara Earring",
        right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        right_ring="Apate Ring",
        })
    sets.precast['Myrkr'] = set_combine(sets.precast.WS, {
        body="Count's Garb",
        hands={ name="Glyphic Bracers +1", augments={'Inc. Sp. "Blood Pact" magic burst dmg.',}},
        legs="Telchine Braconi",
        feet="Beck. Pigaches +1",
        neck="Fotia Gorget",
        waist="Fotia Belt",
        left_ear="Ishvara Earring",
        right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        right_ring="Apate Ring",
        })
    sets.precast['Garland of Bliss'] = set_combine(sets.precast.WS, {
        ammo="Oshasha's Treatise",
        head={ name="Nyame Helm", augments={'Path: B',}},
        body={ name="Nyame Mail", augments={'Path: B',}},
        hands={ name="Nyame Gauntlets", augments={'Path: B',}},
        legs={ name="Nyame Flanchard", augments={'Path: B',}},
        feet={ name="Nyame Sollerets", augments={'Path: B',}},
        neck="Saevus Pendant +1",
        waist="Fotia Belt",
        left_ear="Friomisi Earring",
        right_ear="Malignance Earring",
        left_ring="Karieyh Ring",
        right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
        back={ name="Campestres's Cape", augments={'Pet: M.Acc.+20 Pet: M.Dmg.+20','Pet: Magic Damage+10','Pet: Haste+10','Pet: Damage taken -5%',}},
        })

    --------------------------------------
    -- Midcast sets
    --------------------------------------
    sets.midcast = {}
    -- sets.midcast['Enfeebling Magic']  = {}
    -- sets.midcast['Enhancing Magic']  = {}
    -- sets.midcast['Elemental Magic']  = {}
    sets.midcast.BPPhysical = {
        main={ name="Gridarvor", augments={'Pet: Accuracy+70','Pet: Attack+70','Pet: "Dbl. Atk."+15',}},
        sub="Elan Strap +1",
        ammo="Sancus Sachet +1",
        head={ name="Helios Band", augments={'Pet: Attack+26 Pet: Rng.Atk.+26','Pet: "Dbl. Atk."+7','Blood Pact Dmg.+6',}},
        body="Con. Doublet +3",
        hands={ name="Merlinic Dastanas", augments={'Pet: Attack+19 Pet: Rng.Atk.+19','Blood Pact Dmg.+10',}},
        legs={ name="Apogee Slacks +1", augments={'Pet: STR+20','Blood Pact Dmg.+14','Pet: "Dbl. Atk."+4',}},
        feet={ name="Apogee Pumps +1", augments={'MP+80','Pet: Attack+35','Blood Pact Dmg.+8',}},
        neck={ name="Smn. Collar +1", augments={'Path: A',}},
        waist="Incarnation Sash",
        left_ear="Gelos Earring",
        right_ear="Lugalbanda Earring",
        left_ring="Varar Ring +1",
        right_ring="Varar Ring +1",
        back={ name="Campestres's Cape", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20',}},
        }
    sets.midcast.BPPMagical = {
        main={ name="Grioavolr", augments={'Blood Pact Dmg.+8','Pet: Mag. Acc.+26','Pet: "Mag.Atk.Bns."+29','DMG:+2',}},
        sub="Elan Strap +1",
        ammo="Sancus Sachet +1",
        head="Cath Palug crown",
        body={ name="Apo. Dalmatica +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
        hands={ name="Merlinic Dastanas", augments={'Pet: Mag. Acc.+17 Pet: "Mag.Atk.Bns."+17','Blood Pact Dmg.+7','Pet: DEX+7','Pet: "Mag.Atk.Bns."+14',}},
        legs={ name="Apogee Slacks", augments={'MP+60','Pet: "Mag.Atk.Bns."+30','Blood Pact Dmg.+7',}},
        feet={ name="Apogee Pumps +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
        neck={ name="Smn. Collar +1", augments={'Path: A',}},
        waist="Regal Belt",
        left_ear="Gelos Earring",
        right_ear="Lugalbanda Earring",
        left_ring="Varar Ring +1",
        right_ring="Varar Ring +1",
        back={ name="Campestres's Cape", augments={'Pet: M.Acc.+20 Pet: M.Dmg.+20','Pet: Magic Damage+10','Pet: Haste+10','Pet: Damage taken -5%',}},
        }
    sets.midcast.BPHybrid = {
        main={ name="Grioavolr", augments={'Blood Pact Dmg.+8','Pet: Mag. Acc.+26','Pet: "Mag.Atk.Bns."+29','DMG:+2',}},
        sub="Elan Strap +1",
        ammo="Sancus Sachet +1",
        head="Cath Palug crown",
        body={ name="Apo. Dalmatica +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
        hands={ name="Merlinic Dastanas", augments={'Pet: Mag. Acc.+17 Pet: "Mag.Atk.Bns."+17','Blood Pact Dmg.+7','Pet: DEX+7','Pet: "Mag.Atk.Bns."+14',}},
        legs={ name="Apogee Slacks", augments={'MP+60','Pet: "Mag.Atk.Bns."+30','Blood Pact Dmg.+7',}},
        feet={ name="Apogee Pumps +1", augments={'MP+80','Pet: Attack+35','Blood Pact Dmg.+8',}},
        neck={ name="Smn. Collar +1", augments={'Path: A',}},
        waist="Regal Belt",
        left_ear="Gelos Earring",
        right_ear="Lugalbanda Earring",
        left_ring="Varar Ring +1",
        right_ring="Varar Ring +1",
        back={ name="Campestres's Cape", augments={'Pet: M.Acc.+20 Pet: M.Dmg.+20','Pet: Magic Damage+10','Pet: Haste+10','Pet: Damage taken -5%',}},
        }
    sets.midcast.Odin = {}
    sets.midcast.Alexander = {
        head="Beckoner's Horn +1",
        body="Beck. Doublet +1",
        hands={ name="Glyphic Bracers +1", augments={'Inc. Sp. "Blood Pact" magic burst dmg.',}},
        legs="Beck. Spats +1",
        left_ear="Smn. Earring",
        left_ring="Fervor Ring",
        right_ring="Evoker's Ring",
        back={ name="Conveyance Cape", augments={'Summoning magic skill +2','Pet: Enmity+9','Blood Pact Dmg.+2','Blood Pact ab. del. II -2',}},
        }
    sets.midcast.BPBurst = {
        main={ name="Grioavolr", augments={'Blood Pact Dmg.+8','Pet: Mag. Acc.+26','Pet: "Mag.Atk.Bns."+29','DMG:+2',}},
        sub="Elan Strap +1",
        ammo="Sancus Sachet +1",
        head={ name="Apogee Crown +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
        body={ name="Apo. Dalmatica +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
        hands={ name="Merlinic Dastanas", augments={'Pet: Mag. Acc.+17 Pet: "Mag.Atk.Bns."+17','Blood Pact Dmg.+7','Pet: DEX+7','Pet: "Mag.Atk.Bns."+14',}},
        legs={ name="Enticer's Pants", augments={'MP+15',}},
        feet={ name="Apogee Pumps +1", augments={'MP+80','Pet: Attack+35','Blood Pact Dmg.+8',}},
        neck={ name="Smn. Collar +1", augments={'Path: A',}},
        waist="Caller's Sash",
        left_ear="Gelos Earring",
        right_ear="Kyrene's Earring",
        left_ring="Varar Ring +1",
        right_ring="Varar Ring +1",
        back={ name="Campestres's Cape", augments={'Pet: M.Acc.+20 Pet: M.Dmg.+20','Pet: Magic Damage+10','Pet: Haste+10','Pet: Damage taken -5%',}},
        }
    sets.midcast.BPEnhancing = {
        main={ name="Espiritus", augments={'Enmity-6','Pet: "Mag.Atk.Bns."+30','Pet: Damage taken -4%',}},
        sub="Vox Grip",
        head="Baayami Hat",
        body="Baayami Robe",
        hands="Baayami Cuffs",
        legs="Baayami Slops",
        feet="Baayami Sabots",
        neck="Incanter's Torque",
        waist="Lucidity Sash",
        left_ear="Smn. Earring",
        right_ear="Lodurr Earring",
        left_ring="Stikini Ring",
        right_ring="Evoker's Ring",
        back={ name="Conveyance Cape", augments={'Summoning magic skill +2','Pet: Enmity+9','Blood Pact Dmg.+2','Blood Pact ab. del. II -2',}},
        }
    sets.midcast.BPEnfeebling = {
        head={ name="Helios Band", augments={'Pet: Attack+26 Pet: Rng.Atk.+26','Pet: "Dbl. Atk."+7','Blood Pact Dmg.+6',}},
        body="Beck. Doublet +1",
        hands="Asteria Mitts +1",
        legs="Beck. Spats +1",
        feet="Beck. Pigaches +1",
        waist="Caller's Sash",
        left_ring="Varar Ring +1",
        right_ring="Varar Ring +1",
        back={ name="Campestres's Cape", augments={'Pet: M.Acc.+20 Pet: M.Dmg.+20','Pet: Magic Damage+10','Pet: Haste+10','Pet: Damage taken -5%',}},
        }

    --------------------------------------
    -- Idle/resting/defense/etc sets
    --------------------------------------
    sets.aftercast = {}
    sets.aftercast.Idle = {}
    sets.aftercast.Weapon = {}  
    
    -- gear_mode
    sets.aftercast.Idle[0]={    -- refresh
        main={ name="Espiritus", augments={'Enmity-6','Pet: "Mag.Atk.Bns."+30','Pet: Damage taken -4%',}},
        sub="Elan Strap +1",
        ammo="Sancus Sachet +1",
        head="Beckoner's Horn +1",
        body={ name="Shomonjijoe +1", augments={'Path: A',}},
        hands="Asteria Mitts +1",
        legs={ name="Assid. Pants +1", augments={'Path: A',}},
        back={ name="Campestres's Cape", augments={'Pet: M.Acc.+20 Pet: M.Dmg.+20','Pet: Magic Damage+10','Pet: Haste+10','Pet: Damage taken -5%',}},
        }
    sets.aftercast.Idle[1]={    -- Perpetuation cost
        main={ name="Gridarvor", augments={'Pet: Accuracy+70','Pet: Attack+70','Pet: "Dbl. Atk."+15',}},
        sub="Elan Strap +1",
        ammo="Sancus Sachet +1",
        head="Beckoner's Horn +1",
        body={ name="Shomonjijoe +1", augments={'Path: A',}},
        hands="Asteria Mitts +1",
        legs={ name="Assid. Pants +1", augments={'Path: A',}},
        feet="Baayami Sabots",
        neck="Caller's Pendant",
        waist="Lucidity Sash",
        left_ear="Evans Earring",
        right_ear="Kyrene's Earring",
        left_ring="Bifrost Ring",
        right_ring="Evoker's Ring",
        back={ name="Campestres's Cape", augments={'Pet: M.Acc.+20 Pet: M.Dmg.+20','Pet: Magic Damage+10','Pet: Haste+10','Pet: Damage taken -5%',}},
        }

    sets.aftercast.Idle[2]={ 
        main="Nirvana",
        sub="Kaja Grip",
        ammo="Sancus Sachet +1",
        head="Bunzi's Hat",
        body="Bunzi's Robe",
        hands="Bunzi's Gloves",
        legs="Bunzi's Pants",
        feet="Bunzi's Sabots",
        neck="Fotia Gorget",
        waist="Fotia Belt",
        left_ear="Cessance Earring",
        right_ear="Brutal Earring",
        left_ring="Petrov Ring",
        right_ring="Rajas Ring",
        back={ name="Campestres's Cape", augments={'Pet: M.Acc.+20 Pet: M.Dmg.+20','Pet: Magic Damage+10','Pet: Haste+10','Pet: Damage taken -5%',}},
        }

    -- weapon_mode        
    sets.aftercast.Weapon[0]={}       
    sets.aftercast.Weapon[1]={}    

    -- Variables and notes to myself
    Debuff_BPs = T{'Diamond Storm','Sleepga','Slowga','Tidal Roar','Shock Squall','Nightmare','Pavor Nocturnus','Ultimate Terror','Somnolence','Lunar Cry','Lunar Roar'}
    Magical_BPs = T{'Heavenly Strike','Wind Blade','Holy Mist','Night Terror','Thunderstorm','Geocrush','Meteor Strike','Conflag Strike','Grand Fall','Lunar Bay','Thunderspark','Nether Blast',
        'Aerial Blast','Searing Light','Diamond Dust','Earthen Fury','Zantetsuken','Tidal Wave','Judgment Bolt','Inferno','Howling Moon','Ruinous Omen','Sonic Buffet'}
    Additional_effect_BPs = T{'Rock Throw'}    
    AvatarList = S{'Shiva','Ramuh','Garuda','Leviathan','Diabolos','Titan','Fenrir','Ifrit','Carbuncle',
        'Fire Spirit','Air Spirit','Ice Spirit','Thunder Spirit','Light Spirit','Dark Spirit','Earth Spirit','Water Spirit',
        'Cait Sith','Alexander','Odin','Atomos','Siren'}

end

function pet_change(pet,gain)
    equip_aftercast(player.status,pet)
    if pet.isvalid then
        gear_mode = 1
        -- windower.send_command('input /p Opening Schillchain ')
        avatar = pet.name
    else
        gear_mode = 0
        -- send_command('input /p huhu')
        avatar = "none"
    end    
change_crossbar()
equip(sets.aftercast.Idle[gear_mode])
end

-------------------------------------------------------------------------------------------------------------------
-- Job-specific hooks for standard casting events.
-------------------------------------------------------------------------------------------------------------------
function precast(spell)
    -- Job Ability-Boost
    if sets.precast[spell.english] then
        equip(sets.precast[spell.english])
    -- Fast Cast for Magic    
    elseif spell.action_type == 'Magic' then
            equip(sets.precast.FCAvatar)
    end
end

function midcast(spell) 
    -- Magic-Boost   
    -- if string.find(spell.english,'part of the name') then 
    --     equip(sets.midcast.magic)
    -- elseif spell.english == 'exact name' then
    --     equip(sets.midcast.magic)
    -- elseif spell.skill == 'Enfeebling Magic' then
    --     equip(sets.midcast['Enfeebling Magic'])
    -- elseif spell.skill == 'Enhancing Magic' then
    --     equip(sets.midcast['Enhancing Magic'])
    -- elseif spell.skill == 'Elemental Magic' then
    --     equip(sets.midcast['Elemental Magic'])
    -- elseif spell.skill then
    --     equip(sets.aftercast.Idle)
    -- end
    if pet_midaction() then
        return
    end
    if string.find(spell.type,'BloodPact') then
        if buffactive['Astral Conduit'] then
            pet_midcast(spell)
        end
    end
end

function aftercast(spell)
    if pet_midaction() then
        return
    elseif spell and string.find(spell.type,'BloodPact') and not spell.interrupted then
        pet_midcast(spell)
    else
        -- Don't want to swap away too quickly if I'm about to put BP damage gear on
        -- Need to wait 1 in order to allow pet information to update on Release.
        equip_aftercast(player.status,pet)
    end
--        equip(sets.aftercast.Idle[gear_mode],sets.aftercast.Weapon[weapon_mode])
end

function pet_midcast(spell)
    if spell.name == 'Perfect Defense' then
        equip(sets.midcast.Alexander)
    elseif spell.type=='BloodPactWard' then
        if Debuff_BPs:contains(spell.name) then
            equip(sets.midcast.BPEnfeebling)
        else
            equip(sets.midcast.BPEnhancing)
        end
    elseif spell.type=='BloodPactRage' then
        if Magical_BPs:contains(spell.name) or string.find(spell.name,' II') or string.find(spell.name,' IV') then
            equip(sets.midcast.BPPMagical)
        elseif Additional_effect_BPs:contains(spell.name) then -- for BPs where the additional effect matters more than the damage
            equip(sets.midcast.BPEnfeebling)
        elseif string.find(spell.name,'Flaming') then
            equip(sets.midcast.BPHybrid)
        else
            equip(sets.midcast.BPPhysical)
        end
    end
end

function pet_aftercast(spell)
    equip_aftercast(player.status,pet)
end

function equip_aftercast(status,pet)
    equip(sets.aftercast.Idle[gear_mode],sets.aftercast.Weapon[weapon_mode])
end

function aftercast(spell)
    if gear_mode==2 then
        equip(set_combine(sets.aftercast.Idle[gear_mode],sets.aftercast.Weapon[weapon_mode]))	
	end
end
-------------------------------------------------------------------------------------------------------------------
-- Stances
-------------------------------------------------------------------------------------------------------------------
function self_command(command)
    if command:lower() == 'switchgear' then gear_mode = (gear_mode+1)%3 end
    equip(sets.aftercast.Idle[gear_mode])

    if command:lower() == 'switchweapon' then weapon_mode = (weapon_mode+1)%1 end
    equip(sets.aftercast.Weapon[weapon_mode])
    switch_statustext(gear_mode,weapon_mode)
end

function switch_statustext(gear_mode,weapon_mode)
    if gear_mode == 0 then
        gear_description = "Refresh______"
    elseif gear_mode == 1 then
        gear_description = "Perpetuation_"
    elseif gear_mode == 2 then
        gear_description = "Mythic_______"
    end
    if weapon_mode == 0 then
        weapon_description = "Scythe"
    elseif weapon_mode == 1 then
        weapon_description = "GreatSword"
    elseif weapon_mode == 2 then
        weapon_description = "Sword"
    end
    send_command('input //text status text Gear:'..gear_description..' Weapon:'..weapon_description)
end

function change_crossbar()
    if avatar == "none" then
        send_command('input //xivcrossbar set job-default 1 5 ma "Carbuncle" me "Carbuncle"')
        send_command('input //xivcrossbar set job-default 1 6 ma "Titan" me "Titan"')
        send_command('input //xivcrossbar set job-default 1 7 ma "Cait Sith" me "Cait Sith"')
        send_command('input //xivcrossbar set job-default 1 8 ma "Atomos" t "Atomos"')

        send_command('input //xivcrossbar set job-default 2 1 ma "Siren" me "Siren"')
        send_command('input //xivcrossbar set job-default 2 2 ma "Leviathan" me "Leviathan"')
        send_command('input //xivcrossbar set job-default 2 3 ma "Shiva" me "Shiva"')
        send_command('input //xivcrossbar set job-default 2 4 ma "Fenrir" me "Fenrir"')
        
        send_command('input //xivcrossbar set job-default 2 5 ma "Garuda" me "Garuda"')
        send_command('input //xivcrossbar set job-default 2 6 ma "Ramuh" me "Ramuh"')
        send_command('input //xivcrossbar set job-default 2 7 ma "Ifrit" me "Ifrit"')
        send_command('input //xivcrossbar set job-default 2 8 ma "Diabolos" me "Diabolos"')  
      
        send_command('input //xivcrossbar set job-default 3 5 ja "Astral Flow" me "Astral Flow"')   
        send_command('input //xivcrossbar set job-default 4 6 ma "Alexander" me "Alexander"')
        send_command('input //xivcrossbar set job-default 4 7 ma "Odin" t "Odin"')   
        send_command('input //xivcrossbar set job-default 3 8 ja "Astral Conduit" me "Astral Conduit"')
    end
    
    if avatar ~= "none" then
        if avatar == "Carbuncle" then
            send_command('input //xivcrossbar set job-default 2 1 pet "Healing Ruby II" me "Healing Ruby II"')
            send_command('input //xivcrossbar set job-default 2 2 pet "Shining Ruby" me "Shining Ruby"')
            send_command('input //xivcrossbar set job-default 2 3 pet "Soothing Ruby" me "Soothing Ruby"')

            send_command('input //xivcrossbar set job-default 2 5 pet "Meteorite" t "Meteorite"')
            send_command('input //xivcrossbar set job-default 2 6 pet "Poison Nails" t "Poison Nails"')
            send_command('input //xivcrossbar set job-default 2 7 pet "Holy Mist" t "Holy Mist"')
            send_command('input //xivcrossbar del job-default 2 8')
        end
        
        if avatar == "Ifrit" then
            send_command('input //xivcrossbar set job-default 2 1 pet "Crimson Howl" me "Crimson Howl"')
            send_command('input //xivcrossbar set job-default 2 2 pet "Inferno Howl" me "Inferno Howl"')
            send_command('input //xivcrossbar del job-default 2 3')

            send_command('input //xivcrossbar set job-default 2 5 pet "Meteor Strike" t "Meteor Strike"')
            send_command('input //xivcrossbar set job-default 2 6 pet "Flaming Crush" t "Flaming Crush"')
            send_command('input //xivcrossbar set job-default 2 7 pet "Conflag Strike" t "Conflag Strike"')
            send_command('input //xivcrossbar set job-default 2 8 pet "Fire IV" t "Fire IV"')
        end

        if avatar == "Titan" then
            send_command('input //xivcrossbar set job-default 2 1 pet "Earthen Ward" me "Earthen Ward"')
            send_command('input //xivcrossbar set job-default 2 2 pet "Earthen Armor" me "Earthen Armor"')
            send_command('input //xivcrossbar del job-default 2 3')

            send_command('input //xivcrossbar set job-default 2 5 pet "Geocrush" t "Geocrush"')
            send_command('input //xivcrossbar set job-default 2 6 pet "Crag Throw" t "Crag Throw"')
            send_command('input //xivcrossbar set job-default 2 7 pet "Mountain Buster" t "Mountain Buster"')
            send_command('input //xivcrossbar set job-default 2 8 pet "Stone IV" t "Stone IV"')
        end

        if avatar == "Shiva" then
            send_command('input //xivcrossbar set job-default 2 1 pet "Sleepga" t "Sleepga"')
            send_command('input //xivcrossbar set job-default 2 2 pet "Crystal Blessing" me "Crystal Blessing"')
            send_command('input //xivcrossbar set job-default 2 3 pet "Frost Armor" me "Frost Armor"')

            send_command('input //xivcrossbar set job-default 2 5 pet "Heavenly Strike" t "Heavenly Strike"')
            send_command('input //xivcrossbar set job-default 2 6 pet "Rush" t "Rush"')
            send_command('input //xivcrossbar set job-default 2 7 pet "Axe Kick" t "Axe Kick"')
            send_command('input //xivcrossbar set job-default 2 8 pet "Blizzard IV" t "Blizzard IV"')
        end
        
        if avatar == "Ramuh" then
            send_command('input //xivcrossbar set job-default 2 1 pet "Rolling Thunder" me "Rolling Thunder"')
            send_command('input //xivcrossbar set job-default 2 2 pet "Lightning Armor" me "Lightning Armor"')
            send_command('input //xivcrossbar set job-default 2 3 pet "Shock Squall" t "Shock Squall"')

            send_command('input //xivcrossbar set job-default 2 5 pet "Thunderstorm" t "Thunderstorm"')
            send_command('input //xivcrossbar set job-default 2 6 pet "Volt Strike" t "Volt Strike"')
            send_command('input //xivcrossbar set job-default 2 7 pet "Thunderspark" t "Thunderspark"')
            send_command('input //xivcrossbar set job-default 2 8 pet "Thunder IV" t "Thunder IV"')
        end

        if avatar == "Garuda" then
            send_command('input //xivcrossbar set job-default 2 1 pet "Aerial Armor" me "Aerial Armor"')
            send_command('input //xivcrossbar set job-default 2 2 pet "Hastega II" me "Hastega II"')
            send_command('input //xivcrossbar set job-default 2 3 pet "Fleet Wind" me "Fleet Wind"')

            send_command('input //xivcrossbar set job-default 2 5 pet "Wind Blade" t "Wind Blade"')
            send_command('input //xivcrossbar set job-default 2 6 pet "Predator Claws" t "Predator Claws"')
            send_command('input //xivcrossbar set job-default 2 7 pet "Whispering Wind" me "Whispering Wind"')
            send_command('input //xivcrossbar set job-default 2 8 pet "Aero IV" t "Aero IV"')
        end

        if avatar == "Leviathan" then
            send_command('input //xivcrossbar set job-default 2 1 pet "Slowga" t "Slowga"')
            send_command('input //xivcrossbar set job-default 2 2 pet "Spring Water" me "Spring Water"')
            send_command('input //xivcrossbar set job-default 2 3 pet "Tidal Roar" t "Tidal Roar"')

            send_command('input //xivcrossbar set job-default 2 5 pet "Grand Fall" t "Grand Fall"')
            send_command('input //xivcrossbar set job-default 2 6 pet "Spinning Dive" t "Spinning Dive"')
            send_command('input //xivcrossbar set job-default 2 7 pet "Tail Whip" t "Tail Whip"')
            send_command('input //xivcrossbar set job-default 2 8 pet "Water IV" t "Water IV"')
        end

        if avatar == "Cait Sith" then
            send_command('input //xivcrossbar set job-default 2 1 pet "Raise II" stpt "Raise II"')
            send_command('input //xivcrossbar set job-default 2 2 pet "Reraise II" stpt "Reraise II"')
            send_command('input //xivcrossbar set job-default 2 3 pet "Mewing Lullaby" t "Mewing Lullaby"')

            send_command('input //xivcrossbar set job-default 2 5 pet "Level ? Holy" t "Level ? Holy"')
            send_command('input //xivcrossbar set job-default 2 6 pet "Regal Gash" t "Regal Gash"')
            send_command('input //xivcrossbar set job-default 2 7 pet "Eerie Eye" t "Eerie Eye"')
            send_command('input //xivcrossbar del job-default 2 8')
        end

        if avatar == "Fenrir" then
            send_command('input //xivcrossbar set job-default 2 1 pet "Lunar Roar" t "Lunar Roar"')
            send_command('input //xivcrossbar set job-default 2 2 pet "Ecliptic Growl" me "Ecliptic Growl"')
            send_command('input //xivcrossbar set job-default 2 3 pet "Heavenward Howl" me "Heavenward Howl"')

            send_command('input //xivcrossbar set job-default 2 5 pet "Impact" t "Impact"')
            send_command('input //xivcrossbar set job-default 2 6 pet "Eclipse Bite" t "Eclipse Bite"')
            send_command('input //xivcrossbar set job-default 2 7 pet "Crescent Fang" t "Crescent Fang"')
            send_command('input //xivcrossbar set job-default 2 8 pet "Lunar Bay" t "Lunar Bay"')
        end

        if avatar == "Siren" then
            send_command('input //xivcrossbar set job-default 2 1 pet "Wind\'s Blessing" me "Wind\'s Blessing"')
            send_command('input //xivcrossbar set job-default 2 2 pet "Bitter Elegy" t "Bitter Elegy"')
            send_command('input //xivcrossbar set job-default 2 3 pet "Katabatic Blades" me "Katabatic Blades"')

            send_command('input //xivcrossbar set job-default 2 5 pet "Lunatic Voice" t "Lunatic Voice"')
            send_command('input //xivcrossbar set job-default 2 6 pet "Tornado II" t "Tornado II"')
            send_command('input //xivcrossbar set job-default 2 7 pet "Sonic Buffet" t "Sonic Buffet"')
            send_command('input //xivcrossbar set job-default 2 8 pet "Hysteric Assault" t "Hysteric Assault"')
        end

        if avatar == "Diabolos" then
            send_command('input //xivcrossbar set job-default 2 1 pet "Noctoshield" me "Noctoshield"')
            send_command('input //xivcrossbar set job-default 2 2 pet "Ultimate Terror" t "Ultimate Terror"')
            send_command('input //xivcrossbar set job-default 2 3 pet "Nightmare" t "Nightmare"')

            send_command('input //xivcrossbar set job-default 2 5 pet "Night Terror" t "Night Terror"')
            send_command('input //xivcrossbar set job-default 2 6 pet "Blindside" t "Blindside"')
            send_command('input //xivcrossbar set job-default 2 7 pet "Somnolence" t "Somnolence"')
            send_command('input //xivcrossbar set job-default 2 8 pet "Pavor Nocturnus" t "Pavor Nocturnus"')
        end

        if string.find(avatar, "Spirit") then
            send_command('input //xivcrossbar del job-default 2 1')
            send_command('input //xivcrossbar del job-default 2 2')
            send_command('input //xivcrossbar del job-default 2 3')

            send_command('input //xivcrossbar del job-default 2 5')
            send_command('input //xivcrossbar set job-default 2 6 pet "Elemental Siphon" me "Elemental Siphon"')
            send_command('input //xivcrossbar del job-default 2 7')
            send_command('input //xivcrossbar del job-default 2 8')
        end

        send_command('input //xivcrossbar set job-default 1 5 pet "Release" me "Release"')
        send_command('input //xivcrossbar set job-default 1 6 pet "Assault" stnpc "Assault"')
        send_command('input //xivcrossbar set job-default 1 7 pet "Retreat" me "Retreat"')
        send_command('input //xivcrossbar set job-default 1 8 pet "Avatar\'s Favor" me "Avatar\'s Favor"')
        
        send_command('input //xivcrossbar set job-default 2 4 ja "Apogee" me "Apogee"')
    end
end