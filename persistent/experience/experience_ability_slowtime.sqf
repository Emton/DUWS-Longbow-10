// Cooldown les variables
_cooldown = 600;
_ability_name = "Quick Reflexes";
_varname = "skill_activate_slowmo";
_radio = "BRAVO";

// Defini la variable qui lance l'action
call compile format ["%1 = false",_varname];

// AJOUTE L'OPTION AU JOUEUR
_trg=createTrigger["EmptyDetector",[0,0,0]];
_trg setTriggerArea[5,5,0,false];
_trg setTriggerActivation[_radio,"PRESENT",true];
_trg setTriggerStatements["this", format["%1 = true",_varname], ""];
_trg setTriggerText format["%1",_ability_name];




_loop = true;
while {_loop} do {   // LOOP de l'ability  

call compile format ["%1 = false",_varname];
waitUntil {sleep 0.2; call compile format ["%1",_varname]};  // wait for the player to activate the ability

deleteVehicle _trg;

    titleText [format["%1 activated",_ability_name], "PLAIN DOWN"];
    /// -----   ABILITY IS ACTIVATED
	
	setacctime 0.1;
	sleep 1;
	setacctime 0.2;
	sleep 2;
	setacctime 0.3;
	sleep 3;
	setacctime 0.4;
	sleep 4;
	setacctime 0.5;
	sleep 5;
	setacctime 0.6;
	sleep 6;
	setacctime 0.7;
	sleep 7;
	setacctime 0.8;
	sleep 8;
	setacctime 0.9;
	sleep 9;
	setacctime 1.0;

    /// ----   ABILITY IS ACTIVATED
    titleText [format["%1 deactivated\nCooldown: %2 seconds",_ability_name,_cooldown], "PLAIN DOWN"];
    sleep _cooldown;
    titleText [format["%1 available",_ability_name], "PLAIN DOWN"];
    
// AJOUTE L'OPTION AU JOUEUR
_trg=createTrigger["EmptyDetector",[0,0,0]];
_trg setTriggerArea[5,5,0,false];
_trg setTriggerActivation[_radio,"PRESENT",true];
_trg setTriggerStatements["this", format["%1 = true",_varname], ""];
_trg setTriggerText format["%1",_ability_name];


    
    
    
};  
  
  
  
  
  
  
  
  
  
  
