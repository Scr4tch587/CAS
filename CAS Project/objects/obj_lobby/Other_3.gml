ini_open("save_file.ini"); 
ini_write_real("Save", "coins" ,global.coins);
ini_write_real("Save", "electrons" ,global.electrons);
ini_write_real("Save", "protons" ,global.protons);
ini_write_real("Save", "neutrons" ,global.neutrons);

ini_close();
			
game_end(); // save coins if game is manually closed 