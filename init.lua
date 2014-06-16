--[[

Argent, un petit mod permettant de créer une économie sur un serveur minetest.
Créé par turbogus, Zaraki98 et Ze_Escrobar
Code et graphisme en GPL
Dernière modification par ?? le 16/6/14
Version stable

]]--

--**************************************************************************************
--Poinçon à pièces :
minetest.register_craftitem("argent:poincon", {
    description = "poincon",
    inventory_image = "poincon.png",
})

--Tampon à billet :
minetest.register_craftitem("argent:tampon", {
    description = "tampon",
    inventory_image = "tampon.png",
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

--Convertions de transformation des billets :

--tube 0.9 --> pièce 0.01*9
minetest.register_craft({
    output="argent:piece_charbon 9",
    recipe= {
        {"argent:tube_piece_charbon"},
    }
})

--pièce 0.1 --> pièce 0.01*10
minetest.register_craft({
    output="argent:piece_charbon 10",
    recipe= {
        {"argent:piece_etain"},
    }
})

--tube 0.9 --> pièce 0.1*9
minetest.register_craft({
    output="argent:piece_etain 9",
    recipe= {
        {"argent:tube_piece_etain"},
    }
})

--pièce 0.5 --> pièce 0.1*5
minetest.register_craft({
    output="argent:piece_etain 5",
    recipe= {
        {"argent:piece_cuivre"},
    }
})

--tube 4.5 --> pièce 0.5*9
minetest.register_craft({
    output="argent:piece_cuivre 9",
    recipe= {
        {"argent:tube_piece_cuivre"},
    }
})

--pièce 1 --> pièce cuivre 2
minetest.register_craft({
    output="argent:piece_cuivre 2",
    recipe= {
        {"argent:piece_acier"},
    }
})

--tube 9 --> pièce 1*9
minetest.register_craft({
    output="argent:piece_acier 9",
    recipe= {
        {"argent:tube_piece_acier"},
    }
})

--billet 10 --> pièce 1*10
minetest.register_craft({
    output="argent:piece_acier 10",
    recipe= {
        {"argent:billet10"},
    }
})

--billet 20 --> billet 10*2
minetest.register_craft({
    output="argent:billet10 2",
    recipe= {
        {"argent:billet20"},
    }
})

--billet 50 --> billet 10*5
minetest.register_craft({
    output="argent:billet10 5",
    recipe= {
        {"argent:billet50"},
    }
})

--billet 100 --> billet 50*2
minetest.register_craft({
    output="argent:billet50 2",
    recipe= {
        {"argent:billet100"},
    }
})

--billet 200 --> billet 100*2
minetest.register_craft({
    output="argent:billet100 2",
    recipe= {
        {"argent:billet200"},
    }
})

--billet 500 --> billet 100*5
minetest.register_craft({
    output="argent:billet100 5",
    recipe= {
        {"argent:billet500"},
    }
})

]]---- Système de contrôle de la quantité d'argent en circulation pour éviter l'inflation :

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
--fic = io.open("minetest.get_worldpath().."/money.txt", "w")
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

