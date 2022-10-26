include('organizer-lib')

function get_sets()
    --------------------------------------
    -- Variables
    --------------------------------------
    gear_mode = 0
    weapon_mode = 0

    --------------------------------------
    -- Precast sets
    --------------------------------------
    sets.precast = {}
    sets.precast.JA = {}
    --sets.precast.JA['ja'] = {}
    sets.precast.FC = {        
        main="Gada",
        sub="Irenic Strap",
        --sub="Chanter's Shield", Cidas Cavern NM
        ammo="Impatiens",
        head="Vanya Hood",
        body="Inyanga Jubbah +2",
        hands="Inyanga Dastanas +1",
        -- hands="Fanatic gloves", Ingrid Sinister Reign Augment: Fast Cast+7
        legs="Inyanga Shalwar +1",
        -- legs="Volte Brais", Dynamis Sandoria D
        feet="Inyan. Crackows +1",
        -- feet="Regal Pumps +1", UNM
        neck="Cleric's torque +2",
        waist="Witful Belt",
        left_ear="Loquacious Earring",
        right_ear="Brachyura Earring",
        -- right_ear="Malignance Earring", Merit Fight
        left_ring="Roller's Ring",
        -- left_ring="Lebeche Ring", Merit Fight
        right_ring="Bifrost Ring",
        -- right_ring="Kishar Ring",
        back={ name="Alaunus's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10','Spell interruption rate down-10%',}},
        -- back="Fi Follet Cape +1", UNM
        }
    --------------------------------------
    -- Weaponskill sets
    --------------------------------------
    --WSD, PDL if ATK-Capped
    sets.precast.WSSingle = {}   
    --PDL and Multi
    sets.precast.WSMulti = {}  
    --sets.precast.WS['ws'] = set_combine(sets.precast.WSSingle, {})

    --------------------------------------
    -- Midcast sets
    --------------------------------------
    sets.midcast = {}
    sets.midcast.cure = {
        main="Raetic Rod +1",
        sub="Sors Shield",
        ammo="Incantor Stone",
        head="Ebers Cap +2",
        -- head="Theopany cap +3",
        -- head="Kaykaus mitra +1", Cursed 19M xD 400 DP
        body="Ebers Bliaut +2",
        hands="Inyan. Dastanas +1",
        -- hands="Theopany mitts +3",
        legs="Ebers Pantaloons +2",
        feet="Inyan. Crackows +1",
        -- feet="Theopany duckbills +3",
        -- feet="Kaykaus boots +1", Cursed 17M xD 400 DP
        neck="Cleric's torque +2",
        waist="Hierarch Belt",
        -- waist="Hachirin-no-obi", Organs
        left_ear="Orison Earring",
        -- left_ear="Magnetic earring", CoP/RoZ
        right_ear="Graiai Earring",
        -- right_ear="Glorious earring",
        left_ring="Janniston Ring",
        right_ring="Bifrost Ring",
        -- right_ring="Lebeche Ring", Merit Fight
        -- right_ring="Mephitas's ring +1", UNM
        back={ name="Alaunus's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+5','"Cure" potency +10%','Spell interruption rate down-10%',}},}
    
    sets.midcast['Curaga']  = {
        -- body="Theopany Bliaut +3",
        back="Twilight Cape",
        }

    sets.midcast['Enfeebling Magic']  = {
        -- main="Bunzi's Rod", Mbose unlock
        -- sub="Ammurapi shield", Kei
        ammo="Hydrocera",
        head="Theopany Cap", -- +3
        -- body="Theopnay Bliaut +3",
        hands="Inyan. Dastanas +1", -- +2
        -- legs="Chironic hose", at least +30 m.acc.
        feet="Theopany duckbills", -- +3
        -- neck="Erra Pendant",
        -- neck="Jokushu chain", Escha Ru'Aun
        -- waist="Obstinate sash", Odyssey Henwen
        -- left_ear="Regal Earring",
        -- right_ear="Vor Earring",
        left_ring="Stikini Ring +1",
        right_ring="Stikini Ring +1",
        -- back="Aurist's Cape +1" UNM
        }
    
    sets.midcast['Boost/Duration']  = {
        -- main="Gada", Enhancing Magic Duration 6%
        -- sub="Ammurapi shield", Kei
        -- ammo="Pemphredo Tathlum", Reisenjima
        -- head="Telchine Cap", Enhancing Magic Duration 10% Yorcia Weald (U)
        -- body="Telchine chasuble", Enhancing Magic Duration 10% Yorcia Weald (U)
        -- hands="Telchine Gloves", Enhancing Magic Duration 10% Yorcia Weald (U)
        -- legs="Telchine Braconi", Enhancing Magic Duration 10% Yorcia Weald (U)
        feet="Theopany duckbills", -- +3
        -- neck="Incanter's torque", Synergy
        -- waist="Embla sash", Reisenjjima
        -- left_ear="Andoaa Earring",
        right_ear="Mimir Earring",
        left_ring="Stikini Ring +1",
        right_ring="Stikini Ring +1",
        back="Solemnity cape"
        }

    sets.midcast['Bar Spell']  = {
        main="Beneficus",
        -- sub="Ammurapi shield", Kei
        -- ammo="Pemphredo Tathlum", Reisenjima
        head="Ebers Cap +2",
        body="Ebers Bliaut +2",
        hands="Ebers Mitts +2",
        -- legs="Piety pantaloons +3",
        -- feet="Ebers duckbills +2",
        -- neck="Incanter's torque", Synergy 
        -- waist="Embla sash", 1000 DP
        -- left_ear="Andoaa Earring", Delve
        right_ear="Mimir Earring",
        left_ring="Stikini Ring +1",
        right_ring="Stikini Ring +1",
        -- back="Alaunus's Cape"
        }

    sets.midcast['Regen']  = {
        -- main="Bolelabunga", Wopket Yorcia Weald (U) or 300k PLasm
        -- sub="Ammurapi shield", Kei
        -- ammo="Pemphredo Tathlum", Reisenjima
        head="Inyanga Tiara +1", -- +2
        -- body="Piety Bliaut +3",
        hands="Ebers Mitts +2",
        -- legs="Chironic hose", at least +30 m.acc.
        -- feet="Theopany duckbills +3",
        -- neck="Jokushu chain", Escha Ru'Aun
        -- waist="Luminary sash", Reisenjjima
        -- left_ear="Magnetic Earring",
        -- right_ear="Gifted Earring", Maere Abyssea Grauberg
        -- left_ring="Mephitas's ring +1", UNM                                                                                                      
        right_ring="Stikini Ring +1",
        back="Solemnity cape"
        }

    sets.midcast['Stoneskin']  = {
        -- main="Gada", Enhancing Magic Duration 6%
        -- sub="Ammurapi shield", Kei
        -- ammo="Hydrocera", Escha Ru'Aun
        -- head="Theopany Cap +3",
        -- body="Theopnay Bliaut +3",
        hands="Inyan. Dastanas +1", -- +2
        -- legs="Shedir Seraweels", Mhaura
        -- feet="Theopany duckbills +3",
        -- neck="Jokushu chain", Escha Ru'Aun
        -- waist="Siegel sash", Abyssea Uleguerand
        -- left_ear="Earthcry Earring", Bia Orb
        right_ear="Mimir Earring",
        left_ring="Stikini Ring +1",
        right_ring="Stikini Ring +1",
        back="Solemnity cape"
        }

    sets.midcast['Aquaveil']  = {
        -- main="Vadose Rod", Merit Fight
        -- sub="Ammurapi shield", Kei
        -- ammo="Hydrocera", Escha Ru'Aun
        -- head="Chironic Hat",
        -- body="Telchine chasuble", Enhancing Magic Duration 10% Yorcia Weald (U)
        -- hands="Regal Cuffs",
        -- legs="Shedir Seraweels",
        -- feet="Theopany duckbills +3",
        -- neck="Jokushu chain", Escha Ru'Aun
        waist="Emphatikos Rope",
        -- left_ear="Magnetic Earring",
        -- right_ear="Gifted Earring",
        -- left_ring="Mephitas's Ring +1", UNM
        right_ring="Stikini Ring +1",
        back="Solemnity cape"
        }

    sets.midcast['Cursna']  = {
        -- main="Gambanteinn", Empy
        -- sub="Yagrush", MYthic
        -- ammo="Hydrocera", Escha Ru'Aun
        -- head="Vanya Hood", Healing Magic Skill +20 ziTah
        body="Ebers Bliaut +2",
        -- hands="Fanatic gloves", Healing Magic Skill +10 Sinister Reign
        -- legs="Theophany pantaloons +3",
        -- feet="Vanya Clogs", Healing Magic Skill +20 ziTah
        neck="Debilis Medallion",
        waist="bishop's sash",
        -- left_ear="Meili Earring", 600 DP
        -- right_ear="Ebers Earring",
        left_ring="Haoma's Ring",
        -- right_ring="Menelaus's Ring", 5M
        back="Alaunus's Cape"
        }

    sets.midcast['Repose/Flash']  = {
        -- main="Daybreak", Maiden
        -- sub="Ammurapi shield", Kei
        -- ammo="Hydrocera", Escha Ru'Aun
        head="Theopany Cap", -- +3
        -- body="Theopnay Bliaut +3",
        -- hands="Piety Mitts +3",
        -- legs="Theophany pantaloons +3",
        feet="Theopany duckbills", -- +3
        -- neck="Jokushu chain", Escha Ru'Aun
        -- waist="Luminary sash", Reisenjjima
        -- left_ear="Regal Earring",
        -- right_ear="Malignance Earring",
        left_ring="Stikini Ring +1",
        right_ring="Stikini Ring +1",
        -- back="Aurist's Cape +1" UNM
        }

    sets.midcast['Holy/Banish']  = {
        -- main="Bunzi's Rod", Mbose unlock
        -- sub="Ammurapi shield", Kei
        ammo="Ghastly Tathlum +1",
        -- body="Cohort cloak +1", UNM
        -- hands="Bunzi's Gloves", Mboze
        -- legs="Bunzi's Pants",
        -- feet="Bunzi's Sabots",
        -- neck="Jokushu chain", Escha Ru'Aun
        -- waist="Luminary sash", Reisenjjima
        -- left_ear="Regal Earring",
        -- right_ear="Malignance Earring",
        -- left_ring="Freke Ring", Stygian Pact phantom gem
        right_ring="Stikini Ring +1",
        -- back="Alaunus's Cape" MND+30, Mag. Acc/Dmg +20, MAB+10
        }

    -- sets.midcast['Elemental Magic']  = {}
    --sets.midcast.magic = {}

    --------------------------------------
    -- Idle/resting/defense/etc sets
    --------------------------------------
    sets.aftercast = {}
    sets.aftercast.Idle = {}
    sets.aftercast.Idle[0]={        
        ammo="Staunch Tathlum +1",
        head="Wayfarer Circlet",
        body="Wayfarer Robe",
        hands="Wayfarer Cuffs",
        legs="Wayfarer Slops",
        feet="Wayfarer Clogs",
        neck="Twilight Torque",
        waist="Hierarch Belt",
        left_ear="Orison Earring",
        right_ear="Eabani Earring",
        left_ring="Stikini Ring +1",
        right_ring="Stikini Ring +1",
        back="Iximulew Cape",}

    sets.aftercast.Idle[1]={
        ammo="Staunch Tathlum +1",
        head="Wayfarer Circlet",
        body="Wayfarer Robe",
        hands="Wayfarer Cuffs",
        legs="Wayfarer Slops",
        --feet="Herald's Gaiters",
        feet="Wayfarer Clogs",
        neck="Twilight Torque",
        waist="Hierarch Belt",
        left_ear="Orison Earring",
        right_ear="Brachyura Earring",
        --left_ring="Roller's Ring",
        left_ring="Dimmensional ring (Holla)",
        right_ring="Warp Ring",
        back="Nexus Cape",}


    sets.aftercast.Weapon = {}   
    sets.aftercast.Weapon[0]={    -- Staff
        main="Numen Staff",
        sub="Irenic Strap",}       
    sets.aftercast.Weapon[1]={   -- Club2
        main="Raetic Rod +1",
        --main="Tefnut Wand",
        sub="Sors Shield",}    


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
            equip(sets.precast.FC)
    end
end

function midcast(spell)  
    if string.find(spell.english,'Cur') then 
        equip(sets.midcast.cure)
    -- elseif spell.english == 'exact name' then
    --     equip(sets.midcast.magic)
    -- elseif spell.skill == 'Enfeebling Magic' then
    --     equip(sets.midcast['Enfeebling Magic'])
    -- elseif spell.skill == 'Enhancing Magic' then
    --     equip(sets.midcast['Enhancing Magic'])
    -- elseif spell.skill == 'Elemental Magic' then
    --     equip(sets.midcast['Elemental Magic'])
    elseif spell.skill then
        equip(sets.aftercast.Idle)
    end
end

-- function buff_change(name, gain, buff_details)
    -- if name == '<buffname>'
    -- then
    --     if gain
    --     then
    --         weapon_mode = 3
    --     else 
    --         weapon_mode = 1
    --     end
    --     equip(set_combine(sets.aftercast.Idle[gear_mode],sets.aftercast.Weapon[weapon_mode]))	
    --     switch_crossbar(weapon_mode)
    -- end
-- end

function aftercast(spell)
    equip(set_combine(sets.aftercast.Idle[gear_mode],sets.aftercast.Weapon[weapon_mode]))	
	switch_crossbar(weapon_mode)
end

-- function status_change(new_status, old_status)
--     if new_status == 'Idle' then
--         equip(  {feet="Herald's Gaiters"})0
--     elseif
--         new_status == 'Engaged' then
--         equip(sets.aftercast.Idle[gear_mode])
--     end
-- end
-------------------------------------------------------------------------------------------------------------------
-- Stances
-------------------------------------------------------------------------------------------------------------------
function self_command(command)
    if command:lower() == 'switchgear' then gear_mode = (gear_mode+1)%2 end
    if command:lower() == 'gear1' then gear_mode = 0 end
    if command:lower() == 'gear2' then gear_mode = 1 end
    if command:lower() == 'gear3' then gear_mode = 2 end
    if command:lower() == 'gear4' then gear_mode = 3 end
    equip(sets.aftercast.Idle[gear_mode])

    if command:lower() == 'switchweapon' then weapon_mode = (weapon_mode+1)%2 end
    if command:lower() == 'weapon1' then weapon_mode = 0 end
    if command:lower() == 'weapon2' then weapon_mode = 1 end
    if command:lower() == 'weapon3' then weapon_mode = 2 end
    if command:lower() == 'weapon4' then weapon_mode = 3 end
    equip(sets.aftercast.Weapon[weapon_mode])
	switch_crossbar(weapon_mode)	    
    
end

function switch_crossbar(mode)
--     if mode == 0 then
--         send_command('input //xivcrossbar set job-default 2 6 ws "Cataclysm" t "Cataclysm"')
--         send_command('input //xivcrossbar set job-default 2 7 ws "Earth Crusher" t "Earth Crusher"')
--         send_command('input //xivcrossbar set job-default 2 8 ws "Spirit Taker" t "Spirit Taker"')
--         send_command('input //xivcrossbar set job-default 2 5 ws "Retribution" t "Retribution"')
-- end


end
