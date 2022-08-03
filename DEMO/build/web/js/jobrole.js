

function addCombo() {
	var textb = document.getElementById("txtCombo");
	var combo = document.getElementById("combo");
	
	var option = document.createElement("option");
	option.text = textb.value;
	option.value = textb.value;
	try {
		combo.add(option, null); //Standard 
	}catch(error) {
		combo.add(option); // IE only
	}
	textb.value = "";
}

function gender(radio)
{
           var n1 = document.getElementById('n1');
    var button = document.getElementById(radio);
    n1.value = button.value;
    } 