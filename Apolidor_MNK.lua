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
    sets.precast.FC = {}

    --------------------------------------
    -- Weaponskill sets
    --------------------------------------
    -- default set
    sets.precast.WS = {}        
    sets.precast['Victory Smite'] = set_combine(sets.precast.WS, {
        ammo="Knobkierrie",
        head={ name="Adhemar Bonnet", augments={'DEX+10','AGI+10','Accuracy+15',}},
        body="Ken. Samue",
        hands="Anchor. Gloves +3",
        legs="Hiza. Hizayoroi +2",
        feet={ name="Herculean Boots", augments={'Accuracy+25 Attack+25','Crit.hit rate+3','STR+6','Accuracy+12','Attack+11',}},
        neck="Fotia Gorget",
        waist="Moonbow Belt +1",
        left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        right_ear="Sherida Earring",
        left_ring="Regal Ring",
        right_ring="Niqmaddu Ring",
        back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
        })
    sets.precast['Asuran Fists'] = set_combine(sets.precast.WS, {
        ammo="Knobkierrie",
        head={ name="Adhemar Bonnet", augments={'DEX+10','AGI+10','Accuracy+15',}},
        body="Ken. Samue",
        hands="Anchor. Gloves +3",
        legs="Hiza. Hizayoroi +2",
        feet={ name="Herculean Boots", augments={'Accuracy+25 Attack+25','Crit.hit rate+3','STR+6','Accuracy+12','Attack+11',}},
        neck="Fotia Gorget",
        waist="Moonbow Belt +1",
        left_ear="Sherida Earring",
        right_ear="Ishvara Earring",
        left_ring="Niqmaddu Ring",
        right_ring="Karieyh Ring",
        back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
        })
    sets.precast['Raging Fists'] = set_combine(sets.precast.WS, {
        ammo="Knobkierrie",
        head={ name="Adhemar Bonnet", augments={'DEX+10','AGI+10','Accuracy+15',}},
        body="Ken. Samue",
        hands="Anchor. Gloves +3",
        legs="Hiza. Hizayoroi +2",
        feet={ name="Herculean Boots", augments={'Accuracy+25 Attack+25','Crit.hit rate+3','STR+6','Accuracy+12','Attack+11',}},
        neck="Fotia Gorget",
        waist="Moonbow Belt +1",
        left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        right_ear="Sherida Earring",
        left_ring="Niqmaddu Ring",
        right_ring="Regal Ring",
        back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
        })
    sets.precast['Howling Fist'] = set_combine(sets.precast.WS, {
        ammo="Knobkierrie",
        head={ name="Adhemar Bonnet", augments={'DEX+10','AGI+10','Accuracy+15',}},
        body="Ken. Samue",
        hands="Anchor. Gloves +3",
        legs="Hiza. Hizayoroi +2",
        feet={ name="Herculean Boots", augments={'Accuracy+25 Attack+25','Crit.hit rate+3','STR+6','Accuracy+12','Attack+11',}},
        neck="Fotia Gorget",
        waist="Moonbow Belt +1",
        left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        right_ear="Ishvara Earring",
        left_ring="Niqmaddu Ring",
        right_ring="Regal Ring",
        back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
        })
    sets.precast['Shijin Spiral'] = set_combine(sets.precast.WS, {
        ammo="Knobkierrie",
        head={ name="Adhemar Bonnet", augments={'DEX+10','AGI+10','Accuracy+15',}},
        body="Ken. Samue",
        hands="Anchor. Gloves +3",
        legs="Hiza. Hizayoroi +2",
        feet={ name="Herculean Boots", augments={'Accuracy+25 Attack+25','Crit.hit rate+3','STR+6','Accuracy+12','Attack+11',}},
        neck="Fotia Gorget",
        waist="Moonbow Belt +1",
        left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        right_ear="Ishvara Earring",
        left_ring="Niqmaddu Ring",
        right_ring="Regal Ring",
        back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
        })

    --------------------------------------
    -- Midcast sets
    --------------------------------------
    sets.midcast = {}
    -- sets.midcast['Enfeebling Magic']  = {}
    -- sets.midcast['Enhancing Magic']  = {}
    -- sets.midcast['Elemental Magic']  = {}
    --sets.midcast.magic = {}

    --------------------------------------
    -- Idle/resting/defense/etc sets
    --------------------------------------
    sets.aftercast = {}
    sets.aftercast.Idle = {}
    sets.aftercast.Weapon = {}  
    
    -- gear_mode
    sets.aftercast.Idle[0]={    --normal
        main="Karambit",
        ammo="Aurgelmir Orb",
        head={ name="Adhemar Bonnet", augments={'DEX+10','AGI+10','Accuracy+15',}},
        body="Ken. Samue",
        hands={ name="Adhemar Wristbands", augments={'DEX+10','AGI+10','Accuracy+15',}},
        legs={ name="Samnuha Tights", augments={'STR+7','"Dbl.Atk."+2','"Triple Atk."+1',}},
        feet={ name="Herculean Boots", augments={'Accuracy+25 Attack+25','Crit.hit rate+3','STR+6','Accuracy+12','Attack+11',}},
        neck="Moonbeam Nodowa",
        waist="Moonbow Belt +1",
        left_ear="Cessance Earring",
        right_ear="Sherida Earring",
        left_ring="Niqmaddu Ring",
        right_ring="Rajas Ring",
        back={ name="Mecisto. Mantle", augments={'Cap. Point+47%','MND+2','DEF+8',}},
        --back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','System: 1 ID: 640 Val: 4',}},
        }
    sets.aftercast.Idle[1]={    --DT
        main="Karambit",
        ammo="Aurgelmir Orb",
        head="Malignance Chapeau",
        body={ name="Herculean Vest", augments={'Accuracy+14','"Triple Atk."+4','Attack+15',}},
        hands="Malignance Gloves",
        legs={ name="Samnuha Tights", augments={'STR+7','"Dbl.Atk."+2','"Triple Atk."+1',}},
        feet={ name="Herculean Boots", augments={'Accuracy+25 Attack+25','Crit.hit rate+3','STR+6','Accuracy+12','Attack+11',}},
        neck="Twilight Torque",
        waist="Moonbow Belt +1",
        left_ear="Cessance Earring",
        right_ear="Sherida Earring",
        left_ring="Defending Ring",
        right_ring="Rajas Ring",
        back={ name="Mecisto. Mantle", augments={'Cap. Point+47%','MND+2','DEF+8',}},
        }

    -- weapon_mode        
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
end

function aftercast(spell)
        equip(sets.aftercast.Idle[gear_mode],sets.aftercast.Weapon[weapon_mode])
end

-------------------------------------------------------------------------------------------------------------------
-- Stances
-------------------------------------------------------------------------------------------------------------------
function self_command(command)
    if command:lower() == 'switchgear' then gear_mode = (gear_mode+1)%2 end
    if command:lower() == 'gear1' then gear_mode = 0 end
    if command:lower() == 'gear2' then gear_mode = 1 end
    equip(sets.aftercast.Idle[gear_mode])

    if command:lower() == 'switchweapon' then weapon_mode = (weapon_mode+1)%2 end
    if command:lower() == 'weapon1' then weapon_mode = 0 end
    if command:lower() == 'weapon2' then weapon_mode = 1 end
    equip(sets.aftercast.Weapon[weapon_mode])
end