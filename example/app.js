
// open a single window
var win = Ti.UI.createWindow({
    backgroundColor:'white',
    layout:'vertical'
});
win.open();

// create a button to show the current bright level
var btn1 = Ti.UI.createButton({
    title:'Get the bright level',
    top:50,
    height:40
});
win.add(btn1);

// create a button to change bright
var btn2 = Ti.UI.createButton({
    title:'Change bright to 50%',
    top:50,
    height:40
});
win.add(btn2);


// Create module object
var brightness = require('com.apaladini.brightness');


btn1.addEventListener('click', function(){
    // Android only
    if(Ti.Platform.osname=='android'){
        alert('Window Bright level:' + brightness.getWindowBrightLevel() + 
          '\nSystem Bright level:' + brightness.getSystemBrightLevel() );    
    }else{
        alert('System Bright level:' + brightness.getSystemBrightLevel() );    
    }
});

btn2.addEventListener('click', function(){
    // Android only
    if(Ti.Platform.osname=='android'){
        // Set value to current window only
        brightness.setWindowBrightLevel(0.5);
    }
    // Set value to All system
    brightness.setSystemBrightLevel(0.5);
});

