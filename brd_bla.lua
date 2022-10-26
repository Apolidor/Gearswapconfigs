include('organizer-lib')

function get_sets()
    sets.precast = {}
    sets.precast.JA = {}
    
    sets.weapons = {sub="Twashtar"}
    -- Precast Sets
    sets.precast.JA.Nightingale = {feet="Bihu Slippers +1"}
    
    sets.precast.JA.Troubadour = {body="Bihu Justaucorps +1"}
    
    sets.precast.JA['Soul Voice'] = {legs="Bihu Cannions +1"}
    
    sets.precast.FC = {}
    
    sets.precast.FC.Song = {
        main="Sangoma",
        sub="Genbu Shield",
        range={ name="Linos", augments={'Accuracy+11','Occ. quickens spellcasting +3%',}},
        ammo=empty,
        head="Fili Calot +1",
        body="Inyanga Jubbah +1",
        hands={ name="Gende. Gages +1", augments={'Phys. dmg. taken -3%','Song spellcasting time -5%',}},
        legs="Ayanmo cosciales +1",
        feet="Telchine Pigaches",
        neck="Aoidos' Matinee",
        waist="Aoidos' Belt",
        ear1="Loquac. Earring",
        ear2="Enchntr. Earring +1",
        ring1="Kishar Ring",
        ring2="Weather. Ring +1",
        back="Perimede Cape", -- 80% FC, 10% quickens
    }
    sets.precast['Honor March'] = {range="Marsyas",ammo=empty}
        
    sets.precast.FC.Normal = {
        main="Sangoma",
        sub="Genbu Shield",
        range={ name="Linos", augments={'Accuracy+11','Occ. quickens spellcasting +3%',}},
        ammo=empty,
        head="Nahtirah Hat",
        neck="Orunmila's Torque",
        ear1="Loquac. Earring",
        ear2="Enchntr. Earring",
        body="Inyanga Jubbah +1",
        hands="Gendewitha Gages +1",
        ring1="Kishar Ring",
        ring2="Weather. Ring +1",
        back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10',}},
        waist="Witful Belt",
        legs="Lengo Pants",
        feet="Chelona Boots +1"} -- 71% FC, 10% Quickens
        
    sets.precast.Cure = {
        main="Felibre's Dague",
        sub="Genbu's Shield",
        body="Heka's Kalasiris",
        legs="Doyen Pants",
        back="Pahtli Cape"
    }
    
    sets.precast.EnhancingMagic = {waist="Siegel Sash"}
    
    sets.precast.WS = {}
    sets.precast.WS['Mordant Rime'] = {
        range={ name="Linos", augments={'Accuracy+15','"Dbl.Atk."+3','Quadruple Attack +3',}},
        head="Brioso roundlet +2",
        body={ name="Bihu Jstcorps +1", augments={'Enhances "Troubadour" effect',}},
        hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
        legs="Jokushu Haidate",
        feet="Aya. Gambieras +1",
        neck="Fotia Gorget",
        waist="Grunfeld Rope",
        ear1="Ishvara Earring",
        ear2="Mache Earring +1",
        ring1="Ramuh Ring +1",
        ring2="Ramuh Ring +1",
        back={ name="Intarabus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dual Wield"+10',}},
	}
	
	sets.precast.WS['Evisceration'] = {
        head="Lustratio Cap",
        body="Lustratio Harness",
        legs="Lustr. Subligar +1",
        feet={ name="Lustra. Leggings +1", augments={'HP+65','STR+15','DEX+15',}},
        neck="Caro Necklace",
        waist="Grunfeld Rope",
        ear1="Brutal Earring",
        ear2="Moonshade Earring",
        ring1="Rufescent Ring",
        ring2="Karieyh Ring",
    }
	
	sets.precast.WS['Savage Blade'] = {
        head="Lustratio Cap",
        body="Lustratio Harness",
        legs="Lustr. Subligar +1",
        feet={ name="Lustra. Leggings +1", augments={'HP+65','STR+15','DEX+15',}},
        neck="Bard's Charm +1",
        waist="Grunfeld Rope",
        ear1="Brutal Earring",
        ear2="Moonshade Earring",
        ring1="Rufescent Ring",
        ring2="Karieyh Ring",
    }
    
    -- Midcast Sets
    sets.midcast = {}
        
    sets.midcast.Haste = {
		main="Mafic Cudgel"
		,sub="Genbu Shield",
        head={name="Nahtirah Hat",priority=11}
		,neck="Orunmila's Torque",ear1="Loquac. Earring"
		,ear2={name="Gifted Earring",priority=10},
        body={name="Zendik Robe",priority=12}
		,hands={name="Gendewitha Gages +1",priority=6}
		,ring2={name="Kishar Ring",priority=7},
        back={name="Pahtli Cape",priority=9}
		,waist="Ninurta's Sash"
		,legs="Bihu Cannions +1"
		,feet={name="Chelona Boots +1",priority=8}}

    sets.midcast.Debuff = {
        main="Kali",
        sub="Ammurapi Shield",
        range={ name="Linos", augments={'All Songs +2',}},
        ammo=empty,
        head="Brioso roundlet +2",
        body="Brioso Justaucorps +2",
        hands="Brioso Cuffs +2",
        legs="Brioso Cannions +2",
        feet="Brioso slippers +2",
        neck="Moonbow Whistle +1",
        waist="Porous Rope",
        ear1="Gwati Earring",
        ear2="Enchntr. Earring",
        ring1="Stikini Ring",
        ring2="Stikini Ring",
        back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10',}},
    }
    
    sets.midcast.Duration = {
        main="Kali",
        body="Fili Hongreline +1",
        legs="Inyanga Shalwar +1",
        feet="Brioso slippers +2",
        neck="Moonbow Whistle +1",
    }
    
    sets.midcast.Buff = {
        main="Kali",
        sub="Genbu Shield",
        head="Fili Calot +1",
        neck="Moonbow Whistle +1",
        body="Fili Hongreline +1",
        hands="Fili Manchettes +1",
        legs="Inyanga Shalwar +1",
        feet="Brioso slippers +2",
		waist="Harfner's Sash",
		ear2="Enchntr. Earring",
		ring1="Stikini Ring",
		ring2="Stikini Ring",
    }
    
    sets.midcast.DBuff = {range="Blurred Harp +1",ammo=empty}
    
    sets.midcast.GBuff = {range={ name="Linos", augments={'All Songs +2',}},ammo=empty}
    
        
    sets.midcast.Ballad = {legs="Fili Rhingrave +1"}
    
    sets.midcast.Madrigal = {back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10',}},}
    
    sets.midcast.Prelude = {back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10',}},}
        
    sets.midcast.Scherzo = {feet="Fili Cothurnes +1"}
        
    sets.midcast.Paeon = {
		head="Brioso roundlet +2"
		,range="Blurred Harp +1"
		,ammo=empty
		,main="Naegling",
		}
    
    sets.midcast.March = {hands="Fili Manchettes +1",}
    
    sets.midcast.Lullaby = {
		range="Blurred Harp +1" --bigger range
		--,range={ name="Linos", augments={'All Songs +2',}} --longer
		,legs="Inyanga Shalwar +2"
		,body="Fili Hongreline +1"
		}
    
    sets.midcast['Honor March'] = {
        range="Marsyas",
        ammo=empty,
        hands="Fili Manchettes +1",
        }
    
    
    sets.midcast.Waltz = {}
        
    sets.midcast.Cure = {
		main="Chatoyant Staff"
		,head="Vanya Hood"
		,neck="Incanter's Torque"
		,ear1="Beatific earring"
		,ear2="Mendicant's earring"
        ,body="Kaykaus Bliaut"
		,hands="Revealer's Mitts +1"
		,legs="Kaykaus tights"
		,feet="Vanya Clogs"
		,waist="Bishop's Sash"
		,ring1="Stikini Ring"
		,ring2="Stikini Ring"
		}
        
    sets.midcast.Stoneskin = {head="Marduk's Tiara +1",neck="Nodens Gorget",body="Inyanga Jubbah +1",
        legs="Shedir Seraweels",feet="Bihu Slippers +1"}
    
    sets.midcast.Cursna={
        head={ name="Vanya Hood", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
        body="Vanya Robe",
        hands="Hieros Mittens",
        legs={ name="Vanya Slops", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
        ring1="Haoma's Ring",
        ring2="Haoma's Ring",
        back="Oretan. Cape +1",
        feet="Vanya Clogs",
        neck="Debilis Medallion",
    }
    
    
    --Aftercast Sets
    sets.aftercast = {}
    sets.aftercast.Regen = {
		}
    
    sets.aftercast.PDT = {
        main={name="Terra's Staff",priority=16},
		sub={name="Irenic Strap +1",priority=15},
		range={ name="Linos", augments={'Magic dmg. taken -4%',}},
        head="Aya. Zucchetto +1",
        body="Ayanmo Corazza +1",
        hands="Aya. Manopolas +2",
        legs="Aya. Cosciales +1",
        feet="Aya. Gambieras +1",
        --neck="Loricate Torque +1",
		neck="Bard's Charm +1",
        waist="Flume Belt +1",
        ear1="Loquac. Earring",
        ear2="Odnowa Earring +1",
        ring1="Moonlight Ring",
        ring2="Gelatinous Ring +1",
        --back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10',}},
		back="Mecisto. Mantle",
    }
        
    sets.aftercast.Engaged = {
		hands="Aya. Manopolas +2",
		waist="Sailfi Belt +1",
        head="Aya. Zucchetto +1",
        body="Ayanmo Corazza +1",
        legs="Aya. Cosciales +1",
        feet="Aya. Gambieras +1",
        neck="Bard's Charm +1",
        ear1="Brutal Earring",
        ear2="Cessance Earring",
        ring1="Moonlight Ring",
        ring2="Petrov Ring",
        back="Mecisto. Mantle",
    }
	
	sets.aftercast.EngagedDual = {
		main={name="Naegling",priority=16},
		sub={name="Kaja Sword",priority=15},
		ear2="Suppanomimi",
		--main={name="Trainee's Needle",priority=16},
		--sub={name="Aern Sword",priority=15},
	}
	sets.aftercast.EngagedSingle = {
		main={name="Naegling",priority=16},
		sub={name="Genbu's Shield",priority=15},
	}
        
    sets.aftercast._tab = {'Regen','PDT'}
    
    sets.aftercast._index = 1
    
    sets.aftercast.Idle = sets.aftercast.PDT  --sets.aftercast[sets.aftercast._tab[sets.aftercast._index]]
    
    sets.midcast.Base = sets.aftercast.PDT -- sets.midcast.Haste
	sets.midcast.BaseEngaged = sets.aftercast.Engaged 
    
    DaurdSongs = T{'Water Carol','Water Carol II','Herb Pastoral','Goblin Gavotte'}
    
    send_command('input /macro book 13')
	send_command('input /lockstyleset 81')
    timer_reg = {}
	
end


function precast(spell)
    if spell.type == 'BardSong' then
            equip_song_gear(spell)
            equip(sets.precast.FC.Song)
            if spell.english == 'Honor March' then
                equip(sets.precast['Honor March'])
            end
    elseif spell.action_type == 'Magic' then
        equip(sets.precast.FC.Normal)
        if string.find(spell.english,'Cur') and spell.name ~= 'Cursna' then
            equip(sets.precast.Cure)
        end
        if spell.skill == 'Enhancing Magic' then
            equip(sets.precast.EnhancingMagic)
        end
    elseif spell.prefix == '/weaponskill' and sets.precast.WS[spell.name] then
        equip(sets.precast.WS[spell.name])
    end
    
    --if player.status == 'Engaged' then equip({range=nil}) end -- Why?
end

function midcast(spell)
    if spell.type == 'BardSong' then
        equip_song_gear(spell)
    elseif string.find(spell.english,'Waltz') and spell.english ~= 'Healing Waltz' then
        equip(sets.midcast.Waltz)
    elseif sets.midcast[spell.english] then
        equip(sets.midcast.Base,sets.midcast[spell.english])
    elseif string.find(spell.english,'Cur') then
        equip(sets.midcast.Base,sets.midcast.Cure)
    elseif spell.prefix == '/weaponskill' and sets.precast.WS[spell.name] then
        equip(sets.precast.WS[spell.name])
    else
		if player.status == 'Engaged' then
			equip(sets.midcast.BaseEngaged)
		else
			equip(sets.midcast.Base)
		end
    end
    
    if sets.precast.JA[spell.english] then equip(sets.precast.JA[spell.english]) end
end

function aftercast(spell)
    if midaction() then return end
    
    if player.status == 'Engaged' then
        equip(sets.aftercast.Engaged)
		if player.sub_job == 'DNC' or player.sub_job == 'NIN' then
			equip(sets.aftercast.EngagedDual)
		else
			equip(sets.aftercast.EngagedSingle)
		end
    else
        equip(sets.aftercast.Idle)
    end
end

function status_change(new,old)
    if new == 'Engaged' then
        equip(sets.aftercast.Engaged)
		if player.sub_job == 'DNC' or player.sub_job == 'NIN' then
			equip(sets.aftercast.EngagedDual)
		else
			equip(sets.aftercast.EngagedSingle)
		end
        --disable('main','sub','ammo')
    elseif T{'Idle','Resting'}:contains(new) then
        equip(sets.aftercast.Idle)
    end
end