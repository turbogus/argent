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
