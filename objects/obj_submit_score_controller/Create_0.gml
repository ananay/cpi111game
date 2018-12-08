score = 2000;
name = get_string("Your final score is "+string(score)+". Enter your name", "");
if (name == "") {
	name = "anonymous";
}
get = http_get("https://workspace.ananay.me/game/add.php?name="+string(name)+"&score="+string(score));