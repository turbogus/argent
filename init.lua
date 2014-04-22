--[[

Argent, un petit mod permettant de créer une économie sur un serveur minetest.
Créé par turbogus, Zaraki98, Ze_Escrobar et Mg
Code et graphisme en GPL

]]--

--**************************************************************************************
--Poinçon à pièces :
minetest.register_craftitem("argent:poincon", {
    description = "poincon",
    inventory_image = "poincon.png",
})

minetest.register_craft({
    output = "argent:poincon",
    recipe = {
        {"","default:stick",""},
        {"","default:stick",""},
        {"default:steel_ingot","default:steel_ingot","default:steel_ingot"},
    }
})

--Tampon à billet :
minetest.register_craftitem("argent:tampon", {
    description = "tampon",
    inventory_image = "tampon.png",
})

minetest.register_craft({
    output = "argent:tampon",
    recipe = {
        {"","default:stick",""},
        {"default:steel_ingot","default:steel_ingot","default:steel_ingot"},
        {"default:steel_ingot","default:steel_ingot","default:steel_ingot"},
    }
})

--**************************************************************************************
--Pièce en charbon (1 centimes) :
minetest.register_craftitem("argent:piece_charbon", {
    param1 = 0.01,
    description = " piece en charbon",
    inventory_image = "piece_charbon.png",
    groups = {argent = 1},
})

minetest.register_craft({
    output = "argent:piece_charbon";
    recipe = {
        {"argent:poincon"},
        {"default:coal_lump"},
    };
    replacements ={{"argent:poincon","argent:poincon"},
    };
});

--Tube de pièce en charbon (9 centimes) :
minetest.register_craftitem("argent:tube_piece_charbon", {
    param1 = 0.09,
    description = "tube de 9 pieces en charbon",
    inventory_image = "tube_piece_charbon.png",
    groups = {argent = 1},
})

minetest.register_craft({
    output = "argent:tube_piece_charbon",
    recipe =
        {
        {"argent:piece_charbon","argent:piece_charbon","argent:piece_charbon"},
        {"argent:piece_charbon","argent:piece_charbon","argent:piece_charbon"},
        {"argent:piece_charbon","argent:piece_charbon","argent:piece_charbon"},
    }
})

minetest.register_craft({
    output = "argent:piece_charbon 9",
    recipe = {
        {"argent:tube_piece_charbon"},
    }
})

--Pièce en etain (10 centimes) :
minetest.register_craftitem("argent:piece_etain", {
    param1 = 0.1,
    description = " piece en etain",
    inventory_image = "piece_etain.png",
    groups = {argent = 1},
})

minetest.register_craft({
    output = "argent:piece_etain";
    recipe = {
        {"argent:poincon"},
        {"moreores:tin_ingot"},
    };
    replacements = {{"argent:poincon","argent:poincon"},
    };
});

minetest.register_craft({
    output = "argent:piece_etain",
    recipe = {
        {"argent:tube_piece_charbon","argent:piece_charbon"},
    }
})

--Tube de pièce en etain (90 centimes) :
minetest.register_craftitem("argent:tube_piece_etain", {
    param1 = 0.9,
    description = "tube de 9 pieces en etain",
    inventory_image = "tube_piece_etain.png",
    groups = {argent = 1},
})

minetest.register_craft({
    output = "argent:tube_piece_etain",
    recipe = {
        {"argent:piece_etain","argent:piece_etain","argent:piece_etain"},
        {"argent:piece_etain","argent:piece_etain","argent:piece_etain"},
        {"argent:piece_etain","argent:piece_etain","argent:piece_etain"},
    }
})

minetest.register_craft({
    output = "argent:piece_etain 9",
    recipe = {
        {"argent:tube_piece_etain"},
    }
})

--Pièce en cuivre (50 centimes) :
minetest.register_craftitem("argent:piece_cuivre", {
    param1 = 0.5,
    description = " piece en cuivre",
    inventory_image = "piece_cuivre.png",
    groups = {argent = 1},
})

minetest.register_craft({
    output = "argent:piece_cuivre";
    recipe = {
        {"argent:poincon"},
        {"moreores:copper_ingot"},
    };
    replacements = {{"argent:poincon","argent:poincon"},
    };
});

minetest.register_craft({
    output = "argent:piece_cuivre",
    recipe = {
        {"argent:piece_etain","argent:piece_etain","argent:piece_etain"},
        {"argent:piece_etain","argent:piece_etain",""},
    }
})

--Tube de pièces en cuivre (4€ 50) :
minetest.register_craftitem("argent:tube_piece_cuivre", {
    param1 = 4.5,
    description = "tube de 9 pieces en cuivre",
    inventory_image = "tube_piece_cuivre.png",
    groups = {argent = 1},
})

minetest.register_craft({
    output = "argent:tube_piece_cuivre",
    recipe = {
        {"argent:piece_cuivre","argent:piece_cuivre","argent:piece_cuivre"},
        {"argent:piece_cuivre","argent:piece_cuivre","argent:piece_cuivre"},
        {"argent:piece_cuivre","argent:piece_cuivre","argent:piece_cuivre"},
    }
})

minetest.register_craft({
    output = "argent:piece_cuivre 9",
    recipe = {
        {"argent:tube_piece_cuivre"},
    }
})

--Pièce en acier (1€) :
minetest.register_craftitem("argent:piece_acier", {
  param1 = 1,
  description = " piece en acier",
  inventory_image = "piece_acier.png",
  groups = {argent = 1},
})
minetest.register_craft({
    output = "argent:piece_acier";
    recipe = {
        {"argent:poincon"},
        {"default:steel_ingot"},
    };
    replacements = {{"argent:poincon","argent:poincon"},
    };
});

minetest.register_craft({
    output = "argent:piece_acier",
    recipe = {
        {"argent:piece_cuivre","argent:piece_cuivre"},
    }
})

minetest.register_craft({
    output = "argent:piece_acier",
    recipe = {
        {"argent:tube_piece_etain","argent:piece_etain"},
    }
})

--Tube de pièces en acier (9€) :
minetest.register_craftitem("argent:tube_piece_acier", {
    param1 = 9,
    description = "tube de 9 pieces en acier",
    inventory_image = "tube_piece_acier.png",
    groups = {argent = 1},
})

minetest.register_craft({
    output = "argent:tube_piece_acier",
    recipe = {
        {"argent:piece_acier","argent:piece_acier","argent:piece_acier"},
        {"argent:piece_acier","argent:piece_acier","argent:piece_acier"},
        {"argent:piece_acier","argent:piece_acier","argent:piece_acier"},
    }
})

minetest.register_craft({
    output = "argent:piece_acier 9",
    recipe = {
        {"argent:tube_piece_acier"},
    }
})
--**************************************************************************************
--Billet de 10
minetest.register_craftitem("argent:billet10", {
    param1 = 10,
    description = " billet de 10",
    inventory_image = "billet10.png",
    groups = {argent = 1},
})

minetest.register_craft({
    output="argent:billet10";
    recipe= {
        {"argent:tampon"},
        {"moreores:silver_ingot"},
        {"default:paper"},
    };
    replacements = {{"argent:tampon","argent:tampon"},
    };
});

minetest.register_craft({
    output="argent:billet10",
    recipe= {
        {"argent:tube_piece_acier","argent:piece_acier"},
    }
})

minetest.register_craft({
    output="argent:billet10",
    recipe= {
        {"argent:tube_piece_cuivre","argent:piece_cuivre",""},
        {"argent:tube_piece_cuivre","argent:piece_cuivre",""},
    }
})

--Billet de 20
minetest.register_craftitem("argent:billet20", {
    param1 = 20,
    description = " billet de 20",
    inventory_image = "billet20.png",
    groups = {argent = 1},
})

minetest.register_craft({
    output="argent:billet20";
    recipe= {
        {"argent:tampon"},
        {"moreores:gold_ingot"},
        {"default:paper"},
    };
    replacements= {{"argent:tampon","argent:tampon"},
    };
});

minetest.register_craft({
    output="argent:billet20",
    recipe= {
        {"argent:billet10","argent:billet10"}
    }
})


--Billet de 50
minetest.register_craftitem("argent:billet50", {
    param1 = 50,
    description = " billet de 50",
    inventory_image = "billet50.png",
    groups = {argent = 1},
})

minetest.register_craft({
    output="argent:billet50";
    recipe= {
        {"argent:tampon"},
        {"default:mese_crystal"},
        {"default:paper"},
    };
    replacements= {{"argent:tampon","argent:tampon"},
    };
});

minetest.register_craft({
    output="argent:billet50",
    recipe= {
        {"argent:billet10","",""},
        {"argent:billet10","argent:billet10",""},
        {"argent:billet10","argent:billet10",""},
    }
})

minetest.register_craft({
    output="argent:billet50",
    recipe= {
        {"argent:billet20"},
        {"argent:billet20"},
        {"argent:billet10"},
    }
})

minetest.register_craft({
    output="argent:billet50",
    recipe= {
        {"argent:billet20","",""},
        {"argent:billet10","",""},
        {"argent:billet10","argent:billet10",""},
    }
})

--Billet de 100
minetest.register_craftitem("argent:billet100", {
    param1 = 100,
    description = " billet de 100",
    inventory_image = "billet100.png",
    groups = {argent = 1},
})

minetest.register_craft({
    output="argent:billet100";
    recipe= {
        {"argent:tampon"},
        {"default:diamond"},
        {"default:paper"},
    };
    replacements = {{"argent:tampon","argent:tampon"},
    };
});

minetest.register_craft({
    output="argent:billet100",
    recipe= {
        {"argent:billet50"},
        {"argent:billet50"},
    }
})

minetest.register_craft({
    output="argent:billet100",
    recipe= {
        {"argent:billet20","argent:billet20","argent:billet20"},
        {"argent:billet20","argent:billet20",""},
    }
})



--Billet de 200
minetest.register_craftitem("argent:billet200", {
    param1 = 200,
    description = " billet de 200",
    inventory_image = "billet200.png",
    groups = {argent = 1},
})

minetest.register_craft({
    output="argent:billet200";
    recipe= {
        {"","argent:tampon",""},
        {"default:diamond","default:diamond",""},
        {"","default:paper",""},
    };
    replacements = {{"argent:tampon","argent:tampon"},
    };
});

minetest.register_craft({
    output="argent:billet200",
    recipe= {
        {"argent:billet50","argent:billet50","argent:billet50"},
        {"argent:billet50","",""},
    }
})

minetest.register_craft({
    output="argent:billet200",
    recipe= {
        {"argent:billet100"},
        {"argent:billet100"},
    }
})


--Billet de 500
minetest.register_craftitem("argent:billet500", {
    param1 = 500,
    description = " billet de 500",
    inventory_image = "billet500.png",
    groups = {argent = 1},
})

minetest.register_craft({
    output="argent:billet500";
    recipe= {
        {"argent:tampon"},
        {"default:mese_block"},
        {"default:paper"},
    };
    replacements = {{"argent:tampon","argent:tampon"},
    };
});

minetest.register_craft({
    output="argent:billet500",
    recipe= {
        {"argent:billet100","argent:billet100","argent:billet100"},
        {"argent:billet100","argent:billet100",""},
    }
})

minetest.register_craft({
    output="argent:billet500",
    recipe= {
        {"argent:billet200"},
        {"argent:billet200"},
        {"argent:billet100"},
    }
})


--[[

Convertions :

- 10 pièces en charbon = 1 pièce en etain
- 50 pièces en charbon = 5 pièces en etain = 1 pièce en cuivre
- 100 pièces en charbon = 10 pièces en etain = 2 pièces en cuivre = 1 pièce en acier
- 1.000 pièces en charbon = 100 pièces en etain = 20 pièces en cuivre = 10 pièces en acier = 1 billet de 10 
- 2.000 pièces en charbon = 200 pièces en etain = 40 pièces en cuivre = 20 pièces en acier = 1 billet de 20 
- 5.000 pièces en charbon = 500 pièces en etain = 100 pièces en cuivre = 50 pièces en acier = 1 billet de 50 
- 10.000 pièces en charbon = 1.000 pièces en etain = 200 pièces en cuivre = 100 pièces en acier = 1 billet de 100 
- 20.000 pièces en charbon = 2.000 pièces en etain = 400 pièces en cuivre = 200 pièces en acier = 1 billet de 200 
- 50.000 pièce en charbon = 5.000 pièces en etain = 1.000 pièces en cuivre = 500 pièces en acier = 1 billet de 500

]]--

-- Système de contrôle de la quantité d'argent en circulation pour éviter l'inflation :

local PIB = 2000000000.00

local argentinit = function ()
  minetest.register_on_craft(function (itemstack, player, old_craft_grid, craft_inv)
    createmoney = false
    posmoney = 0
    for i, v in ipairs(old_craft_grid) do
      --print (i)
      if v:get_name() == "argent:poincon" or v:get_name() == "argent:tampon" then
        createmoney = true
        posmoney = i+3
      end
    end
    if not createmoney then
      return
    end
    if PIB > minetest.registered_items[itemstack:get_name()].param1 then
      PIB = PIB-minetest.registered_items[itemstack:get_name()].param1
    else
      player:get_inventory():set_list("craft",old_craft_grid)
      itemstack:clear()
      minetest.chat_send_player(player:get_player_name(), "Plus d'argent dans les caisses!!", true)
    end
  end)
  
  minetest.register_on_shutdown (function()
    fic = io.open(minetest.get_worldpath().."/money.txt", "a")
    if fic == nil then
      fic = io.open(minetest.get_worldpath().."/money.txt", "w")
    end
    fic:write(PIB.."\n")
    fic:close()
  end)
  
  minetest.register_chatcommand ("pib", {
    privs = {server = true},
    params = "",
    description = "Voir la valeur du pib du serveur moins l'argent en circulation",
    func = function (player)
      minetest.chat_send_player (player, "PIB : "..PIB, true)
     -- minetest.chat_send_player (player, "ARGENT CIRCULANT : "..2000000000.00-PIB, true)
    end
  })

  local dejaconn = {}

  minetest.register_on_joinplayer(function (player)
    local i = 0
    playermoney = io.open(minetest.get_worldpath().."/moneyplayers.txt", "a")
    for line in io.lines(minetest.get_worldpath().."/moneyplayers.txt") do
      if line ~= nil then
        if player:get_player_name() == line then return end
      end
    end
    print(2)
    if minetest.get_player_privs(player:get_player_name())["interact"] == true then
      playermoney:write(player:get_player_name().."\n")
      player:get_inventory():add_item("main", "argent:billet500 3")
      minetest.chat_send_player(player:get_player_name(),"Bienvenue a Steinheim. Vous avez recu 1500 Steins, bon jeu.", true)
    end
  end)

  minetest.register_chatcommand ("alreadylogged", {
    privs = {server = true},
    description = "Imprime dans les log et le chat la liste des joueurs deja connectes ce jour",
    func = function(name)
      i = 0
      while i <= table.getn(dejaconn) do
        if dejaconn[i] ~= nil then
          print ("Nom : "..dejaconn[i])
          minetest.chat_send_player(minetest.get_player_by_name(name):get_player_name(), "Name : "..dejaconn[i].."", true)
        end
        i = i+1
      end
    end
  })
end

local playermny = io.open(minetest.get_worldpath().."/moneyplayers.txt", "r")
--print(playermny)
if playermny == nil then
  playermny = io.open(minetest.get_worldpath().."/moneyplayers.txt", "w")
end
playermny:close()
local fic = io.open(minetest.get_worldpath().."/money.txt", "r")
print ("[argent] Initialisation du PIB...")
print ("[argent] Ouverture de la bourse...")
argentinit()
if fic == nil then
  fic = io.open(minetest.get_worldpath().."/money.txt", "w")
  fic:close()
  fic = io.open(minetest.get_worldpath().."/money.txt", "a")
  fic:write("2000000000.00\n")
  PIB = 2000000000.00
  return
end
money = 0.00
for line in fic:lines() do
  if line ~= nil then
    money = line+0.00
  end
end
fic:close()
PIB = money

minetest.register_on_craft(function(itemstack, player, old_craft_grid, craft_inv)
  if not minetest.registered_items[itemstack:get_name()].groups["argent"] then
    return
  end
  boolmoney = false
  i = 1
  while i < 9 do
    boolmoney = old_craft_grid[i]:get_name() == "argent:poincon" or old_craft_grid[i]:get_name() == "argent:tampon"
    i = i+1
  end
  if boolmoney then
    PIB = PIB-minetest.registered_items[itemstack:get_name()].param1
  end
end)


--[[************************************************************************
--Bloc banque
minetest.register_node("argent:banque", {
	description = "Banque",
	param1 = {},
	tiles = {"argent_banque.png"},
	is_ground_content = true,
	groups = {oddly_breakable_by_hand = 3},
  on_construct = function(pos)
    local meta = minetest.get_meta(pos)
    meta:set_string("formspec",
      "invsize[10,10;]"..
      "image[0,0;1,1;tampon.png]"..
      "image[9,0;1,1;poincon.png]"..
      "label[1,0;Steinheim Banque]"..
      "list[current_name;sbbinput;1,3;1,1;]"..
      "list[context;sbbrecycle;1,4;1,1;]"..
      "list[context;sbboutput;3,2;5,3;]"..
      "list[context;sbbpaper;9,3;1,1;]"..
      "button[9,3.5;3,3;sbbpbutton;Imprimer le reçu]"..
      "image[2,3;1,1;argent_fleche.png]"..
      "list[current_player;main;1,6;8,4;]"
    )
    meta:set_string("infotext", "Banque de Steinheim")
    local inv = meta:get_inventory()
    inv:set_size("sbbinput", 1*1)
    inv:set_size("sbboutput", 5*3)
    inv:set_size("sbbrecycle", 1*1)
    inv:set_size("sbbpaper", 1*1)
  end,
  allow_metadata_inventory_put = function(pos, listname, index, stack, player)
    if listname == "ssbrecycle" then return 0 end
    if listname == "sbboutput" then return 0 end
    if listname == "sbbpaper" then return 0 end
    if listname == "sbbinput" then 
      if minetest.registered_items[stack:get_name()].groups["argent"] then
        return stack:get_count()
      else
        return 0
      end
    end
    return 0
  end,
  allow_metadata_inventory_move = function(pos, from_list, from_index,
            to_list, to_index, count, player)
    if from_list == "sbbrecycle" and to_list == "sbbinput" then
      return count
    else
      return 0
    end
  end,
  on_metadata_inventory_put = function (pos, listname, index, stack, player)
    setinventory(pos)
  end,
  on_metadata_inventory_take = function (pos, listname, index, stack, player)
    local inv = minetest.get_meta(pos):get_inventory()
    if listname == "sbbinput" then
      setinventory(pos)
    elseif listname == "sbboutput" then
      local stackvalf = minetest.registered_items[stack:get_name()].param1
      local moneystack = inv:get_list("sbbinput")[1]
      local mstackvalf = minetest.registered_items[moneystack:get_name()].param1
      local valtot = mstackvalf*moneystack:get_count()
      local valprise = stackvalf*stack:get_count()
      local reste = mstackvalf%valprise
      local tabval = {[1] = 0.01, [2] = 0.09, [3] = 0.1, [4] = 0.9, [5] = 0.5, [6] = 4.5, [7] = 1, [8] = 9, [9] = 10, [10] = 20, [11] = 50, [12] = 100, [13] = 200, [14] = 500}
      local tabmny = {[1] = "argent:piece_charbon", [2] = "argent:tube_piece_charbon", [3] = "argent:piece_etain", [4] = "argent:tube_piece_etain", [5] = "argent:piece_cuivre", [6] = "argent:tube_piece_cuivre", [7] = "argent:piece_acier", [8] = "argent:tube_piece_acier", [9] = "argent:billet10", [10] = "argent:billet20", [11] = "argent:billet50", [12] = "argent:billet100", [13] = "argent:billet200", [14] = "argent:billet500"}
      table.insert(minetest.registered_nodes["argent:banque"].param1, 1,{[1] = valtot, [2] = valprise, [3] = player:get_player_name(), [4] = pos.x, [5] = pos.y, [6] = pos.z})
      print("stackvalf "..stackvalf)
      print("mstackvalf "..mstackvalf)
      print("valtot "..valtot)
      print("valprise "..valprise)
      print("reste "..reste)
      --[[moneystack:take_item(moneystack:get_name().." "..(moneystack:get_count()-((valtot-(valprise+((valtot-valprise)%mstackvalf)))/stackvalf)))
      if reste ~= 0 then
        print(0)
        cmptr = 14
        while reste%tabval[cmptr] == 0 do
          cmptr = cmptr-1
        end
        print(1)
        if inv:get_list("sbbrecycle")[1] == "" then
          inv:add_item("sbbrecycle", tabmny[cmptr].." "..reste/tabvalf[cmptr])
        else
          local recyclesack = inv:get_list("sbbrecycle")[1]
          local recyclestackvalf = minetest.registered_items[recyclestack:get_name()].param1
          local recyval = recyclestackvalf*recyclestack:get_count()
          cmptr = 14
          while reste%tabval[cmptr] == 0 do
            cmptr = cmptr-1
          end
          inv:set_list("sbbrecycle", {[1] = tabmny[i].." "..reste/tabvalf[cmptr]})
        end
        print(2)
      end
      setinventory(pos)
    end
  end,
  on_metadata_inventory_move = function(pos, from_list, from_index,
            to_list, to_index, count, player)
    setinventory(pos)
  end,
  can_dig = function(pos, player)
    local inv = minetest.get_meta(pos):get_inventory()
    return inv:is_empty("sbbinput") and inv:is_empty("sbboutput") and player:get_wielded_item():get_name() == "maptools:pick_admin"
  end,
  on_receive_fields = function (pos, formname, fields, sender)
    table.foreach(fields,print)
    if fields.quit then return end
    local inv = minetest.get_meta(pos):get_inventory()
    local metadatapaper = ""
    local acttable = minetest.registered_nodes["argent:banque"].param1
    local undermeta = ""
    y = table.getn(acttable)
    u = 0
    while y > 0 do
      if acttable[y][3] == sender:get_player_name() then
        undermeta = acttable[y][3].." a echange "..acttable[y][1].."Stein(s) contre "..acttable[y][2].."Stein(s) a la banque en "..acttable[y][4]..","..acttable[y][5]..","..acttable[y][6]
        table.remove(acttable, y)
      else
        undermeta = ""
      end
      print(undermeta)
      metadatapaper = metadatapaper.."\n"..undermeta
      y = y-1
    end
    metadatapaper = metadatapaper.."\n"
    local chestpos = minetest.find_node_near(pos, 1, "default:chest") or minetest.find_node_near(pos, 1, "default:chest_locked")
    if chestpos == nil then print("[argent] Plus de papier a la banque en "..pos.x..","..pos.y..","..pos.z)
      minetest.chat_send_player(sender:get_player_name(),"Impossible d'imprimer le recu, plus de papier...", true)
    else
      local chestinv = minetest.get_meta(chestpos):get_inventory()
      if chestinv:contains_item("main", "default:paper") then
        inv:add_item("sbbpaper", {name="memorandum:letter", count=1, wear=0, metadata=metadatapaper.."Steinheim Banque".."16"})
        chestinv:remove_item("main","default:paper")
        minetest.chat_send_player(sender:get_player_name(),"Recu imprime.", true)
      else
        minetest.chat_send_player(sender:get_player_name(),"Impossible d'imprimer le recu, plus de papier...", true)
      end
    end
  end
})
  
function qttfrmula(valf, valfaciale)
  return (valf-(valf%valfaciale))/valfaciale
end

function setinventory(pos)
      local inv = minetest.get_meta(pos):get_inventory()
      tabroom = inv:get_list("sbbinput")
      local valf = 0
      if minetest.registered_items[tabroom[1]:get_name()].param1 then
        valf = minetest.registered_items[tabroom[1]:get_name()].param1*tabroom[1]:get_count()
      end
      inv:set_list("sbboutput", {
      [1] = "argent:piece_charbon "..qttfrmula(valf,0.01),
      [2] = "argent:tube_piece_charbon "..qttfrmula(valf,0.09),
      [3] = "argent:piece_etain "..qttfrmula(valf,0.1),
      [4] = "argent:tube_piece_etain "..qttfrmula(valf,0.9),
      [5] = "argent:piece_cuivre "..qttfrmula(valf,0.5),
      [6] = "argent:tube_piece_cuivre "..qttfrmula(valf,4.5),
      [7] = "argent:piece_acier "..qttfrmula(valf,1),
      [8] = "argent:tube_piece_acier "..qttfrmula(valf,9),
      [9] = "argent:billet10 "..qttfrmula(valf,10),
      [10] = "argent:billet20 "..qttfrmula(valf,20),
      [11] = "argent:billet50 "..qttfrmula(valf,50),
      [12] = "argent:billet100 "..qttfrmula(valf,100),
      [13] = "argent:billet200 "..qttfrmula(valf,200),
      [14] = "argent:billet500 "..qttfrmula(valf,500),
      [15] = ""})
end]]--
