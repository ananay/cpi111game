// Fired when HTTP request is completed
var response = async_load[?"result"];
var scores = ds_map_find_value(json_decode(response), "default");

if (scores == -1) {
	show_debug_message("Invalid JSON");
	lbStatus = -1;
} else {
	lbData = scores;
	lbStatus = 1;
}