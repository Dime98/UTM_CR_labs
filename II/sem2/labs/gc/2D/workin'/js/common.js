document.onkeypress = onKeyPress;


function onKeyPress() {
    var pressedKeyCode = event.keyCode;
    var pressedKey = event.key;

    document.getElementById('kp').innerHTML = pressedKey;
    document.getElementById('kc').innerHTML = pressedKeyCode;  

    switch(pressedKey) {
        
        case "q":
            setClassToAnimatedGuy("crouch");
        break;
        
        case "w":
            setClassToAnimatedGuy("crouch_Idle");
        break;
        
        case "e":
            setClassToAnimatedGuy("crouchShoot");
        break;
        
        case "a":
            setClassToAnimatedGuy("dead");
        break;
        
        case "s":
            setClassToAnimatedGuy("idle");
        break;
        
        case "d":
            setClassToAnimatedGuy("jump");
        break;
        
        case "z":
            setClassToAnimatedGuy("shoot");
        break;
        
        case "x":
        setClassToAnimatedGuy("walk");
        break;    
    }
}

function setClassToAnimatedGuy(className) {
    var theAnimatedGuy = document.getElementById("the_animated_guy");
    theAnimatedGuy.className = className;
}




