include('organizer-lib')

function get_sets()
    --------------------------------------
    -- Variables
    --------------------------------------
    gear_mode = 0
    weapon_mode = 0
    element_mode = 0
    dl_mode = 0
    dle_stance = 0

    --------------------------------------
    -- Precast sets
    --------------------------------------
    sets.precast = {}
    --sets.precast['ws or ja'] = {}
    sets.precast.FC = {                 --63%   +8% on elemental(jobpoints)
        main="Mpaca's Staff",           --5%
        -- main="Oranyan",              --7%        reisenjima(schah)
        -- main="Hvergelmir",           --50%       empy
        sub="Clerisy Strap",            --2%
        -- sub="Clerisy Strap +1",      --3%
        ammo="Sapience Orb",            --2%
        head={ name="Merlinic Hood", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','"Occult Acumen"+9','INT+6','"Mag.Atk.Bns."+4',}},  --8%
        -- head="Amalric coif +1"          --11%       gil
        body={ name="Merlinic Jubbah", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','"Fast Cast"+3','"Mag.Atk.Bns."+11',}},           --9%
        -- body="Zendik robe"              --13%       escha(woc)
        hands="Agwu's Gages",           --6%
        legs="Agwu's slops",             --7%
        feet={ name="Merlinic Crackows", augments={'"Mag.Atk.Bns."+30','Mag. crit. hit dmg. +9%','INT+15','Mag. Acc.+15',}},        --5%
        -- feet="Amalric Nails +1"         --6%        gil
        neck="Stoicheion Medal",        --3% elem.
        -- neck="Voltsurge torque"      --4%        HTNM
        -- neck="Orunmila's Torque"     --5%        meeble
        waist="Embla Sash",             --5%
        right_ear="Malignance Earring", --4%
        left_ear="Loquac. Earring",     --2%
        left_ring="Kishar Ring",        --4%
        right_ring="Naji's Loop",       --1%
        -- right_ring="Rahab Ring",        --2%        Escha(AA TT)
        -- back="Swith Cape +1 "           --4%        gil
        -- back="Taranus's Cape "          --10%       ambuscade
        }

    --------------------------------------
    -- Weaponskill sets
    --------------------------------------
    --WSD, PDL if ATK-Capped
    sets.precast.WSSingle = {}   
    --PDL and Multi
    sets.precast.WSMulti = {}  
    --sets.precast.['ws'] = set_combine(sets.precast.WSSingle, {})
    --maxMP
    sets.precast['Myrkr'] = {
        ammo="Strobilus",
        head="Amanita Hairpin",
        -- head="Pixie Hairpin +1"      gil
        -- head="Kaabnax Hat"           wildskeeper
        body={ name="Nyame Mail", augments={'Path: B',}},
        -- body="Ros. Jaseran +1"       unm
        -- body="Amalric doublet +1",   gil
        hands={ name="Nyame Gauntlets", augments={'Path: B',}},
        -- hands="Otomi gloves",           wildskeeper
        legs="Psycloth lappas",
        -- legs="Spae. Tonban +3",      omen
        -- legs="Amalric slops +1",     gil
        feet={ name="Nyame Sollerets", augments={'Path: B',}},
        -- feet="Psycloth boots",       escha(gestalt)
        neck="Dualism collar +1",
        waist="Acuity Belt +1",
        -- waist="Shinjutsu-no-Obi +1", unm
        left_ear="Evans Earring",
        -- left_ear="Nehalennia Earring",   zurim
        right_ear="Halasz Earring",
        -- right_ear="Influx earring",  sparks
        left_ring="Bifrost Ring",
        -- left_ring="Mephitas's Ring", unm
        right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
        -- right_ring="Mephitas's Ring +1", unm
        back="Aurist's Cape +1",
        -- back="Bane cape",            jse
        }

    --------------------------------------
    -- Midcast sets
    --------------------------------------
    sets.midcast = {}
    sets.midcast.enfeebling  = {
        main={ name="Bunzi's Rod", augments={'Path: A',}},
        sub="Ammurapi Shield",
        ammo="Quartz Tathlum +1",
        -- ammo="Pemphredo Tathlum",    reisenjima(sarsaok)
        head="C. Palug Crown",
        -- head="Befouled Crown",       vagary(Plouton)
        body="Agwu's Robe",
        -- body="Spaekona's Coat +3",   omen
        hands="Jhakri Cuffs +2",
        --hands="Regal Cuffs"           omen ou     
        legs="Psycloth Lappas",
        feet="Agwu's Pigaches",
        -- feet="Skaoi Boots",          reisenjima(albumen)
        neck="Incanter's Torque",
        waist="Casso Sash",
        left_ear="Malignance Earring",
        right_ear="Regal Earring",
        left_ring="Stikini Ring +1",
        right_ring="Stikini Ring +1",
        back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+5',}},
        -- back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+30 /Mag. Dmg.+20',}},
        }
    -- sets.midcast['Enhancing Magic']  = {}
    sets.midcast.elemental  = {  
        main="Bunzi's rod",
        sub="Ammurapi shield",
        ammo="Floestone",
        -- ammo="Pemphredo tathlum",        reisenjima(sarsaok)
        head="Cath Palug crown",
        -- head="Wicce Petasos +3",         sortie
        body={ name="Merlinic Jubbah", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','"Fast Cast"+3','"Mag.Atk.Bns."+11',}},
        -- body="Wicce Coat +3",            sortie
        hands="Jhakri Cuffs +2",
        -- hands="Wicce Gloves +3",         sortie
        legs={ name="Merlinic Shalwar", augments={'"Mag.Atk.Bns."+29','Magic Damage +10','INT+13',}},
        -- legs="Wicce Chausses +3",        sortie
        feet={ name="Merlinic Crackows", augments={'"Mag.Atk.Bns."+30','Mag. crit. hit dmg. +9%','INT+15','Mag. Acc.+15',}},
        -- feet="Wicce Sabots +3",          sortie
        neck="Saevus Pendant +1",
        -- neck="Sorcerer's stole +2",      gil         vll auch saevus
        waist="Refoccilation stone",
        -- waist="Hachirin-no-obi",         organs
        left_ear="Malignance earring",
        right_ear="Regal Earring",
        -- right_ear="Wicce Earring +2",    sortie
        left_ring="Jhakri Ring",
        -- left_ring="Freke Ring",          htnm
        right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
        back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+5',}},
        -- back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10',}},      ambuscade
        }
    sets.midcast.elementalacc  = set_combine(sets.midcast.elemental, {
        -- neck="Sorcerer's stole +2",      gil 
        -- back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+30 /Mag. Dmg.+20','"Mag.Atk.Bns."+10',}},      ambuscade
        })
    -- MB-cap 40%    MBII no cap
    sets.midcast.burst  = set_combine(sets.midcast.elemental, {     --I 40      II 2
        main="Mpaca's staff",                      --I 0     II 2
        head="Agwu's Cap",                        --I 7
        -- head="Ea Hat +1",                gil     I 7     II 7
        body="Agwu's Robe",                       --I 10
        -- body="Ea Houppe. +1",            gil     I 9     II 9
        hands="Agwu's Gages",                      --I 8
        -- hands="Ea Cuffs +1",             gil     I 6     II 6
        legs="Agwu's Slops",                       --I 9
        -- legs="Ea Slops +1",              gil     I 8     II 8
        feet="Agwu's Pigaches",                   --I 6
        -- feet="Ea Pigaches +1",           gil     I 5     II 5
        -- right_ring="Mujin Band",
        -- back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+30 /Mag. Dmg.+20','"Mag.Atk.Bns."+10',}},      ambuscade
        })

    -- sets.midcast.magic = {}
    sets.midcast.DrainAspir = set_combine(sets.midcast.elementalacc, {
        -- main="Rubicundity"               SR
        -- sub="Ammurapi shield",
        head="Striga crown",              
        neck="Erra Pendant",
        -- legs="Spaekona's tonban +3"      omen
        feet="Agwu's Pigaches",
		waist="Austerity belt +1",
		-- waist="Fucho-no-obi",            plasm
        right_ear="Hirudinea Earring",
		right_ear="Malignance Earring",
        left_ring="Excelsis Ring",
		-- left_ring="Archon Ring",         acrch dynamis lord
        right_ring="Evanescence Ring",
        })

    sets.midcast['Death'] = {
        -- bla
    }

    --------------------------------------
    -- Idle/resting/defense/etc sets
    --------------------------------------
    sets.aftercast = {}
    sets.aftercast.Idle = {} 
    
    -- gear_mode
    sets.aftercast.Idle[0]={    --refresh/mab
        main="Mpaca's Staff",
        sub="Kaja Grip",
        ammo="Staunch Tathlum",
        head="Agwu's Cap",
        body="Agwu's Robe",
        hands="Agwu's Gages",
        legs={ name="Assid. Pants +1", augments={'Path: A',}},
        feet="Agwu's Pigaches",
        neck="Twilight Torque",
        waist="Gishdubar Sash",
        left_ear="Halasz Earring",
        right_ear="Ethereal Earring",
        left_ring="Stikini Ring +1",
        right_ring="Stikini Ring +1",
        back="Grapevine Cape",
        }
    sets.aftercast.Idle[1]=set_combine(sets.midcast.elementalacc, {})    --refresh/macc       
    sets.aftercast.Idle[2]={    --dt/burst
        main={ name="Lathi", augments={'INT+15','"Mag.Atk.Bns."+15','Mag. Acc.+15',}},
        sub="Elan Strap +1",
        ammo="Floestone",
        head="Nyame Helm",
        body="Nyame Mail",
        hands="Nyame Gauntlets",
        legs="Nyame Flanchard",
        feet="Nyame Sollerets",
        neck="Saevus Pendant +1",
        waist="Refoccilation Stone",
        left_ear="Malignance Earring",
        right_ear="Friomisi Earring",
        left_ring="Karieyh Ring",
        right_ring="Defending Ring",
        back={ name="Mecisto. Mantle", augments={'Cap. Point+47%','MND+2','DEF+8',}},
        }

    -- weapon_mode        
    sets.aftercast.Weapon = {} 
    sets.aftercast.Weapon[0]={}       
    sets.aftercast.Weapon[1]={}    

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
    -- Magic-Boost   
    if string.find(spell.english,'Drain') then 
        equip(sets.midcast.DrainAspir)
    elseif string.find(spell.english,'Aspir') then 
        equip(sets.midcast.DrainAspir)
    elseif sets.midcast[spell.english] then
            equip(sets.midcast[spell.english])
    -- elseif spell.english == 'exact name' then
    --     equip(sets.midcast.magicname)
    -- elseif spell.skill == 'Enfeebling Magic' then
    --     equip(sets.midcast['Enfeebling Magic'])
    -- elseif spell.skill == 'Enhancing Magic' then
    --     equip(sets.midcast['Enhancing Magic'])
    elseif spell.skill == 'Elemental Magic' then
        if gear_mode == 0 then
            equip(sets.midcast.elemental)
        elseif gear_mode == 1 then
            equip(sets.midcast.elementalacc)
        elseif gear_mode == 2 then
            equip(sets.midcast.burst)
        end
    elseif spell.skill == 'Enfeebling Magic' then
        equip(sets.midcast.enfeebling)
    elseif spell.skill then
        equip(sets.aftercast.Idle)
    end
end

function buff_change(name, gain, buff_details)
    -- if name == '<buffname>'
    -- then
    --     if gain
    --     then
    --         weapon_mode = 1
    --         gear_mode = 1
    --     else 
    --         weapon_mode = 0
    --         gear_mode = 0
    --     end
    --     equip(set_combine(sets.aftercast.Idle[gear_mode],sets.aftercast.Weapon[weapon_mode]))	
    --     switch_crossbar(weapon_mode)
    -- end
end

function aftercast(spell)
    equip(set_combine(sets.aftercast.Idle[gear_mode],sets.aftercast.Weapon[weapon_mode]))	
	switch_crossbar(weapon_mode)
end

function status_change(new_status, old_status)
    --movementspeed  make modular?
    -- if new_status == 'Idle' then
    --     equip({legs="Carmine Cuisses +1"})
    -- elseif
    --     new_status == 'Engaged' then
    --     equip(sets.aftercast.Idle[gear_mode])
    -- end
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
	switch_crossbar(weapon_mode)	    

    if command:lower() == 'switchelement' then 
        if dle_stance == 1 then
            dle_stance = 0 
            send_command('input //xivcrossbar set job-default 2 1 ex "gs c switchdl" "" "None" "arrows/WheelNoneDL" ') 
        else           
            element_mode =(element_mode+1)%6 
        end
    end
    if command:lower() == 'switchdl' then 
        if dle_stance == 0 then
            dle_stance = 1
            send_command('input //xivcrossbar set job-default 2 3 ex "gs c switchelement" "" "None" "arrows/WheelNone" ') 
        else
            dl_mode =(dl_mode+1)%2 
        end
    end
    -- if command:lower() == 'switchelementr' then element_mode =(element_mode+1)%6 end
    -- if command:lower() == 'switchelementl' then element_mode =(element_mode-1)%6 end

    if element_mode == 0 and dle_stance == 0 then   --Fire 
        send_command('input //xivcrossbar set job-default 2 5 ma "Firaja" t "Firaja"')
        send_command('input //xivcrossbar set job-default 2 6 ma "Fire V" t "Fire V"')
        send_command('input //xivcrossbar set job-default 2 7 ma "Fire VI" t "Fire VI"')
        send_command('input //xivcrossbar set job-default 2 8 ma "Flare II" t "Flare II"')   
        send_command('input //xivcrossbar set job-default 2 3 ex "gs c switchelement" "" "Fire" "arrows/WheelFire" ') 
        --send_command('input //xivcrossbar set job-default 2 1 ex "gs c switchelementl" "" "Ice" "arrows/IceL" ')
        --send_command('input //xivcrossbar set job-default 2 3 ex "gs c switchelementr" "" "Water" "arrows/WaterR" ')
        send_command('input //xivcrossbar set default 1 7 ma "Firestorm" me "Firestorm"')  
        send_command('input //xivcrossbar del default 2 5')
        send_command('input //xivcrossbar del default 2 6')
        send_command('input //xivcrossbar del default 2 7')
        send_command('input //xivcrossbar del default 2 8')  
    end

    if element_mode == 1 and dle_stance == 0 then   --Water
        send_command('input //xivcrossbar set job-default 2 5 ma "Waterja" t "Waterja"')
        send_command('input //xivcrossbar set job-default 2 6 ma "Water V" t "Water V"')
        send_command('input //xivcrossbar set job-default 2 7 ma "Water VI" t "Water VI"')
        send_command('input //xivcrossbar set job-default 2 8 ma "Flood II" t "Flood II"')   
        send_command('input //xivcrossbar set job-default 2 3 ex "gs c switchelement" "" "Water" "arrows/WheelWater" ')
        -- send_command('input //xivcrossbar set job-default 2 1 ex "gs c switchelementl" "" "Fire" "arrows/FireL" ')
        -- send_command('input //xivcrossbar set job-default 2 3 ex "gs c switchelementr" "" "Thunder" "arrows/ThunderR" ')
        send_command('input //xivcrossbar set default 1 7 ma "Rainstorm" me "Rainstorm"')   
        send_command('input //xivcrossbar del default 2 5')
        send_command('input //xivcrossbar del default 2 6')
        send_command('input //xivcrossbar del default 2 7')
        send_command('input //xivcrossbar del default 2 8') 
    end

    if element_mode == 2 and dle_stance == 0 then   --Thunder
        send_command('input //xivcrossbar set job-default 2 5 ma "Thundaja" t "Thunderja"')
        send_command('input //xivcrossbar set job-default 2 6 ma "Thunder V" t "Thunder V"')
        send_command('input //xivcrossbar set job-default 2 7 ma "Thunder VI" t "Thunder VI"')
        send_command('input //xivcrossbar set job-default 2 8 ma "Burst II" t "Burst II"')   
        send_command('input //xivcrossbar set job-default 2 3 ex "gs c switchelement" "" "Thunder" "arrows/WheelThunder" ')
        -- send_command('input //xivcrossbar set job-default 2 1 ex "gs c switchelementl" "" "Water" "arrows/WaterL" ')
        -- send_command('input //xivcrossbar set job-default 2 3 ex "gs c switchelementr" "" "Earth" "arrows/EarthR" ')
        send_command('input //xivcrossbar set default 1 7 ma "Thunderstorm" me "Thunderstorm"')  
        send_command('input //xivcrossbar del default 2 5')
        send_command('input //xivcrossbar del default 2 6')
        send_command('input //xivcrossbar del default 2 7')
        send_command('input //xivcrossbar del default 2 8')  
    end

    if element_mode == 3 and dle_stance == 0 then   --Earth
        send_command('input //xivcrossbar set job-default 2 5 ma "Stoneja" t "Stoneja"')
        send_command('input //xivcrossbar set job-default 2 6 ma "Stone V" t "Stone V"')
        send_command('input //xivcrossbar set job-default 2 7 ma "Stone VI" t "Stone VI"')
        send_command('input //xivcrossbar set job-default 2 8 ma "Quake II" t "Quake II"')   
        send_command('input //xivcrossbar set job-default 2 3 ex "gs c switchelement" "" "Earth" "arrows/WheelEarth" ')
        -- send_command('input //xivcrossbar set job-default 2 1 ex "gs c switchelementl" "" "Thunder" "arrows/ThunderL" ')
        -- send_command('input //xivcrossbar set job-default 2 3 ex "gs c switchelementr" "" "Wind" "arrows/WindR" ')
        send_command('input //xivcrossbar set default 1 7 ma "Sandstorm" me "Sandstorm"')   
        send_command('input //xivcrossbar del default 2 5')
        send_command('input //xivcrossbar del default 2 6')
        send_command('input //xivcrossbar del default 2 7')
        send_command('input //xivcrossbar del default 2 8') 
    end

    if element_mode == 4 and dle_stance == 0 then   --Wind
        send_command('input //xivcrossbar set job-default 2 5 ma "Aeroja" t "Aeroja"')
        send_command('input //xivcrossbar set job-default 2 6 ma "Aero V" t "Aero V"')
        send_command('input //xivcrossbar set job-default 2 7 ma "Aero VI" t "Aero VI"')
        send_command('input //xivcrossbar set job-default 2 8 ma "Tornado II" t "Tornado II"')   
        send_command('input //xivcrossbar set job-default 2 3 ex "gs c switchelement" "" "Wind" "arrows/WheelWind" ')
        -- send_command('input //xivcrossbar set job-default 2 1 ex "gs c switchelementl" "" "Earth" "arrows/EarthL" ')
        -- send_command('input //xivcrossbar set job-default 2 3 ex "gs c switchelementr" "" "Ice" "arrows/IceR" ')
        send_command('input //xivcrossbar set default 1 7 ma "Windstorm" me "Windstorm"')   
        send_command('input //xivcrossbar del default 2 5')
        send_command('input //xivcrossbar del default 2 6')
        send_command('input //xivcrossbar del default 2 7')
        send_command('input //xivcrossbar del default 2 8') 
    end

    if element_mode == 5 and dle_stance == 0 then   --Ice
        send_command('input //xivcrossbar set job-default 2 5 ma "Blizzaja" t "Blizzaja"')
        send_command('input //xivcrossbar set job-default 2 6 ma "Blizzard V" t "Blizzard V"')
        send_command('input //xivcrossbar set job-default 2 7 ma "Blizzard VI" t "Blizzard VI"')
        send_command('input //xivcrossbar set job-default 2 8 ma "Freeze II" t "Freeze II"')  
        send_command('input //xivcrossbar set job-default 2 3 ex "gs c switchelement" "" "Ice" "arrows/WheelIce" ')
        -- send_command('input //xivcrossbar set job-default 2 1 ex "gs c switchelementl" "" "Wind" "arrows/WindL" ')
        -- send_command('input //xivcrossbar set job-default 2 3 ex "gs c switchelementr" "" "Fire" "arrows/FireR" ')
        send_command('input //xivcrossbar set default 1 7 ma "Hailstorm" me "Hailstorm"')   
        send_command('input //xivcrossbar del default 2 5')
        send_command('input //xivcrossbar del default 2 6')
        send_command('input //xivcrossbar del default 2 7')
        send_command('input //xivcrossbar del default 2 8') 
    end

    if dl_mode == 0 and dle_stance == 1 then   --Dark
        -- send_command('input //xivcrossbar set job-default 2 5 ma "ja" t "ja"')
        -- send_command('input //xivcrossbar set job-default 2 6 ma " V" t " V"')
        -- send_command('input //xivcrossbar set job-default 2 7 ma " VI" t " VI"')
        -- send_command('input //xivcrossbar set job-default 2 8 ma " II" t " II"')   
        send_command('input //xivcrossbar set default 1 5 ja "Dark Arts" me "Dark Arts"')  
        send_command('input //xivcrossbar set job-default 2 1 ex "gs c switchdl" "" "Dark" "arrows/WheelDark" ')  
        -- send_command('input //xivcrossbar set job-default 2 1 ex "gs c switchelementl" "" "" "arrows/L" ')
        -- send_command('input //xivcrossbar set job-default 2 3 ex "gs c switchelementr" "" "" "arrows/R" ')
        send_command('input //xivcrossbar set default 1 7 ma "Voidstorm" me "Voidstorm"') 
        send_command('input //xivcrossbar set default 2 5 ja "Manifestation" me "Manifestation"')
        send_command('input //xivcrossbar set default 2 6 ma "Drain" t "Drain"')
        send_command('input //xivcrossbar set default 2 7 ma "Aspir II" t "Aspir III"')
        send_command('input //xivcrossbar set default 2 8 ja "Addendum: Black" me "Addendum: Black"')   
    end

    if dl_mode == 1 and dle_stance == 1 then   --Light
        -- send_command('input //xivcrossbar set job-default 2 5 ma "ja" t "ja"')
        -- send_command('input //xivcrossbar set job-default 2 6 ma " V" t " V"')
        -- send_command('input //xivcrossbar set job-default 2 7 ma " VI" t " VI"')
        -- send_command('input //xivcrossbar set job-default 2 8 ma " II" t " II"')   
        send_command('input //xivcrossbar set default 1 5 ja "Light Arts" me "Light Arts"')
        send_command('input //xivcrossbar set job-default 2 1 ex "gs c switchdl" "" "Light" "arrows/WheelLight" ')
        -- send_command('input //xivcrossbar set job-default 2 1 ex "gs c switchelementl" "" "" "arrows/L" ')
        -- send_command('input //xivcrossbar set job-default 2 3 ex "gs c switchelementr" "" "" "arrows/R" ')
        send_command('input //xivcrossbar set default 1 7 ma "Aurorastorm" me "Aurorastorm"') 
        send_command('input //xivcrossbar set default 2 5 ja "Accession" me "Accession"')
        send_command('input //xivcrossbar set default 2 6 ma "Cure III" stpc "Cure III"')
        send_command('input //xivcrossbar set default 2 7 ma "Erase" stpc "Erase"')
        send_command('input //xivcrossbar set default 2 8 ja "Addendum: White" me "Addendum: White"')     
    end
end

function switch_statustext(gear_mode,weapon_mode)
    -- geardescription
    if gear_mode == 0 then
        gear_description = "MAB/Refresh__"
    elseif gear_mode == 1 then
        gear_description = "MAcc/Refresh_"  
    elseif gear_mode == 2 then
        gear_description = "Burst/DT_____"  
    end

        if weapon_mode == 0 then
            weapon_description = "Staff"
        elseif weapon_mode == 1 then
            weapon_description = "subweaponset"
        end
        send_command('input //text status text Gear:'..gear_description..' Weapon:'..weapon_description)
    end
    function switch_crossbar(mode)
    
        -- if mode == 0 then
        --     send_command('input //xivcrossbar set job-default 2 6 ws "Frostbite" t "Frostbite"')
        --     send_command('input //xivcrossbar set job-default 2 7 ws "Torcleaver" t "Torcleaver"')
        --     send_command('input //xivcrossbar set job-default 2 8 ws "Shockwave" t "Shockwave"')
        --     send_command('input //xivcrossbar set job-default 2 5 ws "Resolution" t "Resolution"')
        -- end
    
        -- if mode == 1 or mode == 99 then
        --     send_command('input //xivcrossbar set job-default 2 6 ws "Catastrophe" t "Catastrophe"')
        --     send_command('input //xivcrossbar set job-default 2 7 ws "Cross Reaper" t "Cross Reaper"')
        --     send_command('input //xivcrossbar set job-default 2 8 ws "Entropy" t "Entropy"')
        --     send_command('input //xivcrossbar set job-default 2 5 ws "Insurgency" t "Insurgency"')
        -- end
    end
