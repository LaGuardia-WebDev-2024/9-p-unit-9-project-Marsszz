setup = function() {
    size(600, 400);
};

//Background Images
var caveSceneImage = loadImage("https://nintendoeverything.com/wp-content/uploads/fatal-frame-maiden-of-black-water-review-2.jpeg");

var forestImage = loadImage("https://torontoguardian.com/wp-content/uploads/2021/10/IMAGE-2.jpg");
var fightImage = loadImage("https://noisypixel.net/wp-content/uploads/2023/03/fatal-frame-mask-of-the-lunar-eclipse-1-1024x576.png");

var sequenceImage = loadImage("https://nintendoeverything.com/wp-content/uploads/fatal-frame-camera.jpg");

var deathImage = loadImage("https://im.ziffdavisinternational.com/ign_za/screenshot/default/ffwu_87qc.jpg");

var victoryImage = loadImage("https://shared.fastly.steamstatic.com/store_item_assets/steam/apps/1732190/ss_b0f67e04a6790918dc9c9f00f084b64e6277850d.1920x1080.jpg?t=1765501814");



//Variable Declarations
var sceneImage = caveSceneImage;
var sceneText = "Where are you headed? [Press f for forest and h for house ]";

draw = function(){
    
   drawScene();


   if(keyPressed){
     if(key == 'f'){
       sceneImage = forestImage;   
       sceneText = "You met a ghostly figure...  [Press s to interact]";
     } 
     if(key == 's'){
      sceneImage = fightImage;
      sceneText = "It wants to fight!  [Press e to fight]";
    } 
    if(key == 'e'){
      sceneImage = sequenceImage;
      sceneText = "You have a 50/50 chance to kill it! [Press 1 or 2]";
    } 
    if(key == '1'){
      sceneImage = deathImage;
      sceneText = "You died... [Press b to restart...]";
    } 
    if(key == '2'){
      sceneImage = victoryImage;
      sceneText = "You won! Keep exploring! [Press b to restart]";
    } 
    if(key == 'b'){
      sceneImage = caveSceneImage;
      sceneText = "Where are you headed? [Press f for forest and ]";
    } 
    if(key == 'h'){
      sceneImage = houseImage;
      sceneText = "You met a friend![Press f for forest and ]";
    } 
   }
  
};

var drawScene = function(){
    image(sceneImage, 0, 0, 600, 400);
    
    fill(0,0,0);
    rect(0, 350, 600, 100);
      
    fill(255,255,255);
    textSize(20);
   
    text(sceneText, 10, 375);
};



