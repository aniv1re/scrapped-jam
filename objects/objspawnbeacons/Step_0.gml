if (!global.isBeaconCreated) {
	switch (irandom_range(1, 5)) {
		case 1:
			if (beaconIndex != 1) {
				instance_create_layer(beacon1_X, beacon1_Y, "OBJ_Beacons", objBeacon);
				global.isBeaconCreated = true;
				beaconIndex = 1;
				show_debug_message(string(beacon1_X) + " : " + string(beacon1_Y));
				
				with (objBeacon_Cursor) {
					beaconX = other.beacon1_X;
					beaconY = other.beacon1_Y;  
				}
			}
			break;
		case 2:
			if (beaconIndex != 2) {
				instance_create_layer(beacon2_X, beacon2_Y, "OBJ_Beacons", objBeacon);
				global.isBeaconCreated = true;
				beaconIndex = 2;
				show_debug_message(string(beacon2_X) + " : " + string(beacon2_Y));
				
				with (objBeacon_Cursor) {
					beaconX = other.beacon2_X;
					beaconY = other.beacon2_Y;
				}
			}
			break;
		case 3:
			if (beaconIndex != 3) {
				instance_create_layer(beacon3_X, beacon3_Y, "OBJ_Beacons", objBeacon);
				global.isBeaconCreated = true;
				beaconIndex = 3;
				show_debug_message(string(beacon3_X) + " : " + string(beacon3_Y));
				
				with (objBeacon_Cursor) {
					beaconX = other.beacon3_X;
					beaconY = other.beacon3_Y;
				}
			}
			break;
		case 4:
			if (beaconIndex != 4) {
				instance_create_layer(beacon4_X, beacon4_Y, "OBJ_Beacons", objBeacon);
				global.isBeaconCreated = true;
				beaconIndex = 4;
				show_debug_message(string(beacon4_X) + " : " + string(beacon4_Y));
				
				with (objBeacon_Cursor) {
					beaconX = other.beacon4_X;
					beaconY = other.beacon4_Y;
				}
			}
			break;
		case 5:
			if (beaconIndex != 5) {
				instance_create_layer(beacon5_X, beacon5_Y, "OBJ_Beacons", objBeacon);
				global.isBeaconCreated = true;
				beaconIndex = 5;
				show_debug_message(string(beacon5_X) + " : " + string(beacon5_Y));
				
				with (objBeacon_Cursor) {
					beaconX = other.beacon5_X;
					beaconY = other.beacon5_Y;
				}
			}
			break;
	}
}