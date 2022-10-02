#include maps\mp\_utility;
#include common_scripts\utility;
#include maps\mp\gametypes_zm\_hud_util;
#include maps\mp\gametypes_zm\_hud_message;
#include maps/mp/zombies/_zm_zonemgr;

init()
{
    level thread onPlayerConnect();
}

onPlayerConnect()
{
    for(;;)
    {
        level waittill("connected", player);
        player thread onPlayerSpawned();
    }
}

onPlayerSpawned()
{
    self endon("disconnect");
	level endon("game_ended");
    for(;;)
    {
        self waittill("spawned_player");
        self thread zoneCheck();

		self iprintln("^4Zone Notifier Message ^7created by ^1techboy04gaming");
    }
}

zoneCheck()
{
	while(1)
	{
		if (self.currentzone != self get_zone_name())
		{
			if (!issubstr(self get_zone_name(),"_"))
			{
				self.currentzone = self get_zone_name();
				grief_reset_message(self get_zone_name(), "");
			}
		}
		
		wait 0.2;
	}
}

get_zone_name()
{
	zone = self get_player_zone();
	if (!isDefined(zone))
	{
		return "";
	}

	name = zone;

	if (level.script == "zm_transit")
	{
		if (zone == "zone_pri")
		{
			name = "Bus Depot";
		}
		else if (zone == "zone_pri2")
		{
			name = "Bus Depot";
		}
		else if (zone == "zone_station_ext")
		{
			name = "Bus Depot";
		}
		else if (zone == "zone_trans_2b")
		{
			name = "Bus Depot";
		}
		else if (zone == "zone_trans_2")
		{
			name = "Tunnel";
		}
		else if (zone == "zone_amb_tunnel")
		{
			name = "Tunnel";
		}
		else if (zone == "zone_trans_3")
		{
			name = "Tunnel";
		}
		else if (zone == "zone_roadside_west")
		{
			name = "Diner";
		}
		else if (zone == "zone_gas")
		{
			name = "Diner";
		}
		else if (zone == "zone_roadside_east")
		{
			name = "Diner";
		}
		else if (zone == "zone_trans_diner")
		{
			name = "Diner";
		}
		else if (zone == "zone_trans_diner2")
		{
			name = "Diner";
		}
		else if (zone == "zone_gar")
		{
			name = "Diner";
		}
		else if (zone == "zone_din")
		{
			name = "Diner";
		}
		else if (zone == "zone_diner_roof")
		{
			name = "Diner";
		}
		else if (zone == "zone_trans_4")
		{
			name = "Diner";
		}
		else if (zone == "zone_amb_forest")
		{
			name = "Forest";
		}
		else if (zone == "zone_trans_10")
		{
			name = "Church";
		}
		else if (zone == "zone_town_church")
		{
			name = "Church";
		}
		else if (zone == "zone_trans_5")
		{
			name = "Farm";
		}
		else if (zone == "zone_far")
		{
			name = "Farm";
		}
		else if (zone == "zone_far_ext")
		{
			name = "Farm";
		}
		else if (zone == "zone_brn")
		{
			name = "Farm";
		}
		else if (zone == "zone_farm_house")
		{
			name = "Farm";
		}
		else if (zone == "zone_trans_6")
		{
			name = "Farm";
		}
		else if (zone == "zone_cornfield_prototype")
		{
			name = "Nacht";
		}
		else if (zone == "zone_trans_pow_ext1")
		{
			name = "Power Station";
		}
		else if (zone == "zone_pow")
		{
			name = "Power Station";
		}
		else if (zone == "zone_prr")
		{
			name = "Power Station";
		}
		else if (zone == "zone_pcr")
		{
			name = "Power Station";
		}
		else if (zone == "zone_pow_warehouse")
		{
			name = "Power Station";
		}
		else if (zone == "zone_trans_8")
		{
			name = "Power Station";
		}
		else if (zone == "zone_amb_power2town")
		{
			name = "Cabin";
		}
		else if (zone == "zone_trans_9")
		{
			name = "Town";
		}
		else if (zone == "zone_town_north")
		{
			name = "Town";
		}
		else if (zone == "zone_tow")
		{
			name = "Town";
		}
		else if (zone == "zone_town_east")
		{
			name = "Town";
		}
		else if (zone == "zone_town_west")
		{
			name = "Town";
		}
		else if (zone == "zone_town_south")
		{
			name = "Town";
		}
		else if (zone == "zone_bar")
		{
			name = "Town";
		}
		else if (zone == "zone_town_barber")
		{
			name = "Town";
		}
		else if (zone == "zone_ban")
		{
			name = "Town";
		}
		else if (zone == "zone_ban_vault")
		{
			name = "Town";
		}
		else if (zone == "zone_tbu")
		{
			name = "Town";
		}
		else if (zone == "zone_trans_11")
		{
			name = "Town";
		}
		else if (zone == "zone_trans_1")
		{
			name = "Bus Depot";
		}
	}
	else if (level.script == "zm_nuked")
	{
		if (zone == "culdesac_yellow_zone")
		{
			name = "Yellow House";
		}
		else if (zone == "culdesac_green_zone")
		{
			name = "Green House";
		}
		else if (zone == "openhouse1_f1_zone")
		{
			name = "Green House";
		}
		else if (zone == "openhouse1_f2_zone")
		{
			name = "Green House";
		}
		else if (zone == "openhouse1_backyard_zone")
		{
			name = "Green House";
		}
		else if (zone == "openhouse2_f1_zone")
		{
			name = "Yellow House";
		}
		else if (zone == "openhouse2_f2_zone")
		{
			name = "Yellow House";
		}
		else if (zone == "openhouse2_backyard_zone")
		{
			name = "Yellow House";
		}
		else if (zone == "ammo_door_zone")
		{
			name = "Yellow House";
		}
	}
	else if (level.script == "zm_highrise")
	{
		if (zone == "zone_green_start")
		{
			name = "Green Highrise";
		}
		else if (zone == "zone_green_level1")
		{
			name = "Green Highrise";
		}
		else if (zone == "zone_green_level2a")
		{
			name = "Green Highrise";
		}
		else if (zone == "zone_green_level2b")
		{
			name = "Green Highrise";
		}
		else if (zone == "zone_green_level3a")
		{
			name = "Green Highrise";
		}
		else if (zone == "zone_green_level3b")
		{
			name = "Green Highrise";
		}
		else if (zone == "zone_green_level3c")
		{
			name = "Green Highrise";
		}
		else if (zone == "zone_green_level3d")
		{
			name = "Green Highrise";
		}
		else if (zone == "zone_orange_level1")
		{
			name = "Orange Highrise";
		}
		else if (zone == "zone_orange_level2")
		{
			name = "Orange Highrise";
		}
		else if (zone == "zone_orange_level3a")
		{
			name = "Orange Highrise";
		}
		else if (zone == "zone_orange_level3b")
		{
			name = "Orange Highrise";
		}
		else if (zone == "zone_blue_level5")
		{
			name = "Blue Highrise";
		}
		else if (zone == "zone_blue_level4a")
		{
			name = "Blue Highrise";
		}
		else if (zone == "zone_blue_level4b")
		{
			name = "Blue Highrise";
		}
		else if (zone == "zone_blue_level4c")
		{
			name = "Blue Highrise";
		}
		else if (zone == "zone_blue_level2a")
		{
			name = "Blue Highrise";
		}
		else if (zone == "zone_blue_level2b")
		{
			name = "Blue Highrise";
		}
		else if (zone == "zone_blue_level2c")
		{
			name = "Blue Highrise";
		}
		else if (zone == "zone_blue_level2d")
		{
			name = "Blue Highrise";
		}
		else if (zone == "zone_blue_level1a")
		{
			name = "Blue Highrise";
		}
		else if (zone == "zone_blue_level1b")
		{
			name = "Blue Highrise";
		}
		else if (zone == "zone_blue_level1c")
		{
			name = "Blue Highrise";
		}
	}
	else if (level.script == "zm_prison")
	{
		if (zone == "zone_library")
		{
			name = "Library";
		}
		else if (zone == "zone_cellblock_west")
		{
			name = "Cellblock";
		}
		else if (zone == "zone_cellblock_west_gondola")
		{
			name = "Cellblock";
		}
		else if (zone == "zone_cellblock_west_gondola_dock")
		{
			name = "Cellblock";
		}
		else if (zone == "zone_cellblock_west_barber")
		{
			name = "Cellblock";
		}
		else if (zone == "zone_cellblock_east")
		{
			name = "Cellblock";
		}
		else if (zone == "zone_cafeteria")
		{
			name = "Cafeteria";
		}
		else if (zone == "zone_cafeteria_end")
		{
			name = "Cafeteria";
		}
		else if (zone == "zone_infirmary")
		{
			name = "Infirmary";
		}
		else if (zone == "zone_infirmary_roof")
		{
			name = "Infirmary";
		}
		else if (zone == "zone_roof_infirmary")
		{
			name = "Roof";
		}
		else if (zone == "zone_roof")
		{
			name = "Roof";
		}
		else if (zone == "zone_cellblock_west_warden")
		{
			name = "Cellblock";
		}
		else if (zone == "zone_warden_office")
		{
			name = "Warden's Office";
		}
		else if (zone == "cellblock_shower")
		{
			name = "Cellblock";
		}
		else if (zone == "zone_citadel_shower")
		{
			name = "Cellblock";
		}
		else if (zone == "zone_citadel")
		{
			name = "Citadel";
		}
		else if (zone == "zone_citadel_warden")
		{
			name = "Citadel";
		}
		else if (zone == "zone_citadel_stairs")
		{
			name = "Citadel";
		}
		else if (zone == "zone_citadel_basement")
		{
			name = "Citadel";
		}
		else if (zone == "zone_dock")
		{
			name = "Docks";
		}
		else if (zone == "zone_dock_puzzle")
		{
			name = "Docks";
		}
		else if (zone == "zone_dock_gondola")
		{
			name = "Docks";
		}
		else if (zone == "zone_golden_gate_bridge")
		{
			name = "Golden Gate Bridge";
		}
	}
	else if (level.script == "zm_buried")
	{
		if (zone == "zone_start")
		{
			name = "Processing";
		}
		else if (zone == "zone_start_lower")
		{
			name = "Processing";
		}
		else if (zone == "zone_tunnels_center")
		{
			name = "Tunnels";
		}
		else if (zone == "zone_tunnels_north")
		{
			name = "Tunnels";
		}
		else if (zone == "zone_tunnels_north2")
		{
			name = "Tunnels";
		}
		else if (zone == "zone_tunnels_south")
		{
			name = "Tunnels";
		}
		else if (zone == "zone_tunnels_south2")
		{
			name = "Tunnels";
		}
		else if (zone == "zone_tunnels_south3")
		{
			name = "Tunnels";
		}
		else if (zone == "zone_street_lightwest")
		{
			name = "Underground";
		}
		else if (zone == "zone_street_lightwest_alley")
		{
			name = "Underground";
		}
		else if (zone == "zone_morgue_upstairs")
		{
			name = "Underground";
		}
		else if (zone == "zone_stables")
		{
			name = "Underground";
		}
		else if (zone == "zone_street_darkwest")
		{
			name = "Underground";
		}
		else if (zone == "zone_street_darkwest_nook")
		{
			name = "Underground";
		}
		else if (zone == "zone_gun_store")
		{
			name = "Underground";
		}
		else if (zone == "zone_bank")
		{
			name = "Underground";
		}
		else if (zone == "zone_tunnel_gun2stables")
		{
			name = "Underground";
		}
		else if (zone == "zone_tunnel_gun2stables2")
		{
			name = "Underground";
		}
		else if (zone == "zone_street_darkeast")
		{
			name = "Underground";
		}
		else if (zone == "zone_street_darkeast_nook")
		{
			name = "Underground";
		}
		else if (zone == "zone_underground_bar")
		{
			name = "Underground";
		}
		else if (zone == "zone_tunnel_gun2saloon")
		{
			name = "Underground";
		}
		else if (zone == "zone_toy_store")
		{
			name = "Underground";
		}
		else if (zone == "zone_toy_store_floor2")
		{
			name = "Underground";
		}
		else if (zone == "zone_toy_store_tunnel")
		{
			name = "Underground";
		}
		else if (zone == "zone_candy_store")
		{
			name = "Underground";
		}
		else if (zone == "zone_candy_store_floor2")
		{
			name = "Underground";
		}
		else if (zone == "zone_street_lighteast")
		{
			name = "Underground";
		}
		else if (zone == "zone_underground_courthouse")
		{
			name = "Underground";
		}
		else if (zone == "zone_underground_courthouse2")
		{
			name = "Underground";
		}
		else if (zone == "zone_street_fountain")
		{
			name = "Underground";
		}
		else if (zone == "zone_church_graveyard")
		{
			name = "Underground";
		}
		else if (zone == "zone_church_main")
		{
			name = "Underground";
		}
		else if (zone == "zone_church_upstairs")
		{
			name = "Underground";
		}
		else if (zone == "zone_mansion_lawn")
		{
			name = "Mansion";
		}
		else if (zone == "zone_mansion")
		{
			name = "Mansion";
		}
		else if (zone == "zone_mansion_backyard")
		{
			name = "Mansion";
		}
		else if (zone == "zone_maze")
		{
			name = "Mansion";
		}
		else if (zone == "zone_maze_staircase")
		{
			name = "Mansion";
		}
	}
	else if (level.script == "zm_tomb")
	{
		if (isDefined(self.teleporting) && self.teleporting)
		{
			return "";
		}

		if (zone == "zone_start")
		{
			name = "Laboratory";
		}
		else if (zone == "zone_start_a")
		{
			name = "Laboratory";
		}
		else if (zone == "zone_start_b")
		{
			name = "Laboratory";
		}
		else if (zone == "zone_bunker_1a")
		{
			name = "Bunker";
		}
		else if (zone == "zone_fire_stairs")
		{
			name = "Fire Tunnel";
		}
		else if (zone == "zone_bunker_1")
		{
			name = "Bunker";
		}
		else if (zone == "zone_bunker_3a")
		{
			name = "Bunker";
		}
		else if (zone == "zone_bunker_3b")
		{
			name = "Bunker";
		}
		else if (zone == "zone_bunker_2a")
		{
			name = "Bunker";
		}
		else if (zone == "zone_bunker_2")
		{
			name = "Bunker";
		}
		else if (zone == "zone_bunker_4a")
		{
			name = "Bunker";
		}
		else if (zone == "zone_bunker_4b")
		{
			name = "Bunker";
		}
		else if (zone == "zone_bunker_4c")
		{
			name = "Bunker";
		}
		else if (zone == "zone_bunker_4d")
		{
			name = "Bunker";
		}
		else if (zone == "zone_bunker_tank_c")
		{
			name = "Bunker";
		}
		else if (zone == "zone_bunker_tank_c1")
		{
			name = "Bunker";
		}
		else if (zone == "zone_bunker_4e")
		{
			name = "Bunker";
		}
		else if (zone == "zone_bunker_tank_d")
		{
			name = "Bunker";
		}
		else if (zone == "zone_bunker_tank_d1")
		{
			name = "Bunker";
		}
		else if (zone == "zone_bunker_4f")
		{
			name = "Bunker";
		}
		else if (zone == "zone_bunker_5a")
		{
			name = "Bunker";
		}
		else if (zone == "zone_bunker_5b")
		{
			name = "Bunker";
		}
		else if (zone == "zone_nml_2a")
		{
			name = "No Man's Land";
		}
		else if (zone == "zone_nml_2")
		{
			name = "No Man's Land";
		}
		else if (zone == "zone_bunker_tank_e")
		{
			name = "Bunker";
		}
		else if (zone == "zone_bunker_tank_e1")
		{
			name = "Bunker";
		}
		else if (zone == "zone_bunker_tank_e2")
		{
			name = "Bunker";
		}
		else if (zone == "zone_bunker_tank_f")
		{
			name = "Bunker";
		}
		else if (zone == "zone_nml_1")
		{
			name = "No Man's Land";
		}
		else if (zone == "zone_nml_4")
		{
			name = "No Man's Land";
		}
		else if (zone == "zone_nml_0")
		{
			name = "No Man's Land";
		}
		else if (zone == "zone_nml_5")
		{
			name = "No Man's Land";
		}
		else if (zone == "zone_nml_farm")
		{
			name = "No Man's Land";
		}
		else if (zone == "zone_nml_celllar")
		{
			name = "No Man's Land";
		}
		else if (zone == "zone_nml_3")
		{
			name = "No Man's Land";
		}
		else if (zone == "zone_nml_2b")
		{
			name = "No Man's Land";
		}
		else if (zone == "zone_nml_6")
		{
			name = "No Man's Land";
		}
		else if (zone == "zone_nml_8")
		{
			name = "No Man's Land";
		}
		else if (zone == "zone_nml_10a")
		{
			name = "No Man's Land";
		}
		else if (zone == "zone_nml_10")
		{
			name = "No Man's Land";
		}
		else if (zone == "zone_nml_7")
		{
			name = "No Man's Land";
		}
		else if (zone == "zone_bunker_tank_a")
		{
			name = "No Man's Land";
		}
		else if (zone == "zone_bunker_tank_a1")
		{
			name = "Bunker";
		}
		else if (zone == "zone_bunker_tank_a2")
		{
			name = "Bunker";
		}
		else if (zone == "zone_bunker_tank_b")
		{
			name = "Bunker";
		}
		else if (zone == "zone_nml_9")
		{
			name = "No Man's Land";
		}
		else if (zone == "zone_nml_11")
		{
			name = "No Man's Land";
		}
		else if (zone == "zone_nml_12")
		{
			name = "No Man's Land";
		}
		else if (zone == "zone_nml_16")
		{
			name = "No Man's Land";
		}
		else if (zone == "zone_nml_17")
		{
			name = "No Man's Land";
		}
		else if (zone == "zone_nml_18")
		{
			name = "No Man's Land";
		}
		else if (zone == "zone_nml_19")
		{
			name = "No Man's Land";
		}
		else if (zone == "ug_bottom_zone")
		{
			name = "Excavation Site";
		}
		else if (zone == "zone_nml_13")
		{
			name = "No Man's Land";
		}
		else if (zone == "zone_nml_14")
		{
			name = "No Man's Land";
		}
		else if (zone == "zone_nml_15")
		{
			name = "No Man's Land";
		}
		else if (zone == "zone_village_0")
		{
			name = "Village";
		}
		else if (zone == "zone_village_5")
		{
			name = "Village";
		}
		else if (zone == "zone_village_5a")
		{
			name = "Village";
		}
		else if (zone == "zone_village_5b")
		{
			name = "Village";
		}
		else if (zone == "zone_village_1")
		{
			name = "Village";
		}
		else if (zone == "zone_village_4b")
		{
			name = "Village";
		}
		else if (zone == "zone_village_4a")
		{
			name = "Village";
		}
		else if (zone == "zone_village_4")
		{
			name = "Village";
		}
		else if (zone == "zone_village_2")
		{
			name = "Village";
		}
		else if (zone == "zone_village_3")
		{
			name = "Village";
		}
		else if (zone == "zone_village_3a")
		{
			name = "Village";
		}
		else if (zone == "zone_bunker_6")
		{
			name = "Bunker";
		}
		else if (zone == "zone_nml_20")
		{
			name = "No Man's Land";
		}
		else if (zone == "zone_village_6")
		{
			name = "Village";
		}
		else if (zone == "zone_chamber_0")
		{
			name = "The Crazy Place";
		}
		else if (zone == "zone_chamber_1")
		{
			name = "The Crazy Place";
		}
		else if (zone == "zone_chamber_2")
		{
			name = "The Crazy Place";
		}
		else if (zone == "zone_chamber_3")
		{
			name = "The Crazy Place";
		}
		else if (zone == "zone_chamber_4")
		{
			name = "The Crazy Place";
		}
		else if (zone == "zone_chamber_5")
		{
			name = "The Crazy Place";
		}
		else if (zone == "zone_chamber_6")
		{
			name = "The Crazy Place";
		}
		else if (zone == "zone_chamber_7")
		{
			name = "The Crazy Place";
		}
		else if (zone == "zone_chamber_8")
		{
			name = "The Crazy Place";
		}
		else if (zone == "zone_robot_head")
		{
			name = "Robot's Head";
		}
	}

	return name;
}

grief_reset_message(setmsg, sound)
{
    msg = setmsg;
    players = get_players();

    if ( isdefined( level.hostmigrationtimer ) )
    {
        while ( isdefined( level.hostmigrationtimer ) )
            wait 0.05;

        wait 4;
    }

    foreach ( player in players )
        player thread show_grief_hud_msg( msg );
        player playsound(sound);

//    player playsound("zmb_cha_ching");
//    player playsound("vox_plr_0_exert_laugh");
}

show_grief_hud_msg( msg, msg_parm, offset, cleanup_end_game )
{
    self endon( "disconnect" );

    while ( isdefined( level.hostmigrationtimer ) )
        wait 0.05;

    notifier_hudmsg = newclienthudelem( self );
    notifier_hudmsg.alignx = "center";
    notifier_hudmsg.aligny = "middle";
    notifier_hudmsg.horzalign = "center";
    notifier_hudmsg.vertalign = "middle";
    notifier_hudmsg.y -= 100;
//notifier_hudmsg.y -= 130;

    if ( self issplitscreen() )
        notifier_hudmsg.y += 70;

    if ( isdefined( offset ) )
        notifier_hudmsg.y += offset;

    notifier_hudmsg.foreground = 1;
    notifier_hudmsg.fontscale = 5;
    notifier_hudmsg.alpha = 0;
    notifier_hudmsg.color = ( 1, 1, 1 );
    notifier_hudmsg.hidewheninmenu = 1;
    notifier_hudmsg.font = "default";

    if ( isdefined( cleanup_end_game ) && cleanup_end_game )
    {
        level endon( "end_game" );
        notifier_hudmsg thread show_grief_hud_msg_cleanup();
    }

    if ( isdefined( msg_parm ) )
        notifier_hudmsg settext( msg, msg_parm );
    else
        notifier_hudmsg settext( msg );

	notifier_hudmsg changefontscaleovertime( 0);
    notifier_hudmsg fadeovertime( 1 );
    notifier_hudmsg.alpha = 1;
    notifier_hudmsg.fontscale = 2;
    wait 3.25;
    notifier_hudmsg changefontscaleovertime( 0 );
    notifier_hudmsg fadeovertime( 1 );
    notifier_hudmsg.alpha = 0;
    notifier_hudmsg.fontscale = 2;
    wait 1;
    notifier_hudmsg notify( "death" );

    if ( isdefined( notifier_hudmsg ) )
        notifier_hudmsg destroy();
}

show_grief_hud_msg_cleanup()
{
    self endon( "death" );

    level waittill( "end_game" );

    if ( isdefined( self ) )
        self destroy();
}
