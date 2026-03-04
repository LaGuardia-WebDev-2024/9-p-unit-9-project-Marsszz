setup = function() {
    size(800, 600);
};

//Background Images
var caveSceneImage = loadImage("https://nintendoeverything.com/wp-content/uploads/fatal-frame-maiden-of-black-water-review-2.jpeg");

var forestImage = loadImage("https://torontoguardian.com/wp-content/uploads/2021/10/IMAGE-2.jpg");
var fightImage = loadImage("https://noisypixel.net/wp-content/uploads/2023/03/fatal-frame-mask-of-the-lunar-eclipse-1-1024x576.png");

var sequenceImage = loadImage("https://nintendoeverything.com/wp-content/uploads/fatal-frame-camera.jpg");

var deathImage = loadImage("https://im.ziffdavisinternational.com/ign_za/screenshot/default/ffwu_87qc.jpg");

var victoryImage = loadImage("https://shared.fastly.steamstatic.com/store_item_assets/steam/apps/1732190/ss_b0f67e04a6790918dc9c9f00f084b64e6277850d.1920x1080.jpg?t=1765501814");

var houseImage = loadImage("https://xboxwire.thesourcemediaassets.com/sites/2/2021/08/01_02_miu_03.jpg");

var friendImage = loadImage("https://www.oldgamehermit.com/wp-content/uploads/2025/06/Fatal-Frame-II-Crimson-Butterfly_SLUS-20766_20250616185947.png");

var continueImage = loadImage("https://static0.thegamerimages.com/wordpress/wp-content/uploads/2023/03/fatal-frame-review.jpg?w=1600&h=900&fit=crop");

var yesImage = loadImage("https://media.altchar.com/prod/images/gm_featured_image/35b599a98669-fatal-frame-2-crimson-butterfly-remake-demo.jpg");

var noImage = loadImage("https://purenintendo.com/wp-content/uploads/2026/01/fatalframe2-demo.jpg");

var aloneImage = loadImage("https://images.purexbox.com/df058b0ddb771/fatal-frame-2-crimson-butterfly-is-getting-a-remake-and-it-snaps-onto-xbox-in-early-2026.large.jpg");

var exploreImage = loadImage("https://gamingbolt.com/wp-content/uploads/2021/10/Fatal-Frame-Maiden-of-Black-Water.jpg");

var congratsImage = loadImage("https://i.imgur.com/hnKtXYL.jpg");

var sadImage = loadImage("https://gameinformer.com/sites/default/files/styles/full/public/2021/08/05/e4287a3c/fatal-frame-maiden-of-black-water.jpg.webp");







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
      sceneText = "Where are you headed? [Press f for forest and h for house ]";
    } 
    if(key == 'h'){
      sceneImage = houseImage;
      sceneText = "You met a friend! [Press c to continue with her or a to go alone]";
    } 
    if(key == 'c'){
      sceneImage = friendImage;
      sceneText = " You guys continue exploring the house..[Press q to continue... ]";
    } 
    if(key == 'q'){
      sceneImage = continueImage;
      sceneText = " The friend looks a little different...  \n stay with her till day? [Press y for yes and n for no]";
    } 
    if(key == 'y'){
      sceneImage = yesImage;
      sceneText = " She stayed your friend and you made it till day! \n[Press b to restart...]";
    } 
    if(key == 'n'){
      sceneImage = noImage;
      sceneText = " she has consumed you..[Press b to restart...]";
    } 
    if(key == 'a'){
      sceneImage = aloneImage;
      sceneText = " You explore alone...[Press m to continue...]";
    } 
    if(key == 'm'){
      sceneImage = exploreImage;
      sceneText = " You met a maiden! take her guidance? \n [Press 3 for yes and 4 for no]";
    } 
    if(key == '3'){
      sceneImage = congratsImage;
      sceneText = " Congratulations! you escaped! Click to make the butterfly guide her.. [Press b to restart...]";
     
      
    } 
if(key == '4'){
      sceneImage = sadImage;
      sceneText = " you get sent to the forest and lost forever ... it wants to tell you something..click. \n [Press b to restart...]";
    } 
   }
 if(mousePressed && sceneImage == congratsImage) 
 {
  textSize(30);
      text("🦋", mouseX, mouseY);
 }
 if(mousePressed && sceneImage == sadImage) {
  text("You can't escape.", random (0,800) , random (0,600));
 }
};

var drawScene = function(){
    image(sceneImage, 0, 0, 800, 600);
    
    fill(0,0,0);
    rect(0, 500, 800, 300);
      
    fill(255,255,255);
    textSize(20);
   
    text(sceneText, 10, 550);
};



