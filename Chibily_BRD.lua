include('organizer-lib')

function get_sets()
    --------------------------------------
    -- Variables
    --------------------------------------
    gear_mode = 0
    weapon_mode = 0
    songsetup = true

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
    --sets.precast.WS['ws'] = set_combine(sets.precast.WS, {})

    --------------------------------------
    -- Midcast sets
    --------------------------------------
    sets.midcast = {}
    -- sets.midcast['Enfeebling Magic']  = {}
    -- sets.midcast['Enhancing Magic']  = {}
    -- sets.midcast['Elemental Magic']  = {}
    --sets.midcast.magic = {}
    sets.midcast.songsetup = {
        main={ name="Kali", augments={'Mag. Acc.+15','String instrument skill +10','Wind instrument skill +10',}},
        sub="Legato Dagger",
        range="Terpander",
        -- range="Daurdabla",
        body="Fili Hongreline +2",
        legs="Inyanga Shalwar +2",
        feet="Brioso Slippers +1",
        neck="Moonbow Whistle +1",
        left_ring="Stikini Ring",
        right_ring="Stikini Ring",
        }
    sets.midcast.songbuff = {
        main={ name="Kali", augments={'Mag. Acc.+15','String instrument skill +10','Wind instrument skill +10',}},
        -- main="Carnwenhan"
        sub="Legato Dagger",
        range="Gjallarhorn",
        body="Fili Hongreline +2",
        legs="Inyanga Shalwar +2",
        feet="Brioso Slippers +1",
        -- feet="Brioso Slippers +3",
        neck="Moonbow Whistle +1",
        }

    sets.midcast.minuet = set_combine(sets.midcast.songbuff,{
        body="Fili Hongreline +2",
    })
    
    sets.midcast.march = set_combine(sets.midcast.songbuff,{
        hands="Fili Manchettes",
        -- hands="Fili Manchettes +2",
    })

    --------------------------------------
    -- Idle/resting/defense/etc sets
    --------------------------------------
    sets.aftercast = {}
    sets.aftercast.Idle = {}
    sets.aftercast.Weapon = {}  
    
    -- gear_mode
    sets.aftercast.Idle[0]={
        ammo="Cheruski Needle",
        head="Inyanga Tiara +2",
        body="Fili Hongreline +2",
        hands="Inyan. Dastanas +2",
        legs="Inyanga Shalwar +2",
        feet="Inyan. Crackows +2",
        neck="Asperity Necklace",
        waist="Windbuffet Belt +1",
        left_ear="Cessance Earring",
        right_ear="Brutal Earring",
        left_ring="Petrov Ring",
        right_ring="Rajas Ring",
        back="Atheling Mantle",
        }
    sets.aftercast.Idle[1]={}

    -- weapon_mode        
    sets.aftercast.Weapon[0]={}       
    sets.aftercast.Weapon[1]={}    

    songsetup = false
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
    if spell.type == 'BardSong' then
        if songsetup == false then
            if string.find(spell.english,'Minuet') then 
                equip(sets.midcast.minuet)
            elseif string.find(spell.english,'March') then
                equip(sets.midcast.march)
            else
                equip(sets.midcast.songbuff)
            end
        else
            equip(sets.midcast.songsetup)
        end
    end
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

    if command:lower() == 'setup' then songsetup = true end
    if command:lower() == 'buff' then songsetup = false end
end