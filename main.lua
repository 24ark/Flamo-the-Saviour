-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here
local movieclip = require("movieclip")
local physics = require("physics")
physics.start()
physics.setGravity(0,9.8)
--physics.setDrawMode("hybrid")
--takes away the display bar at the top of the screen

display.setStatusBar(display.HiddenStatusBar)
--adds an image to our game centered at x and y coordinates
local backbackground1 = display.newImage("images/bg.png")
backbackground1.x = 240
backbackground1.y = 100
backbackground1.xScale=0.4
backbackground1.yScale=0.4
local backbackground2 = display.newImage("images/bg2.png")
backbackground2.x = 1000
backbackground2.y = 100
backbackground2.xScale=0.4
backbackground2.yScale=0.4

local ammo_count = 5;
local text = display.newText("Ammo:" , -40, 0, "Helvetica", 16)
text:setTextColor(255, 255, 255)
local ammo_text = display.newText(ammo_count , 15, 0, "Helvetica", 16)
ammo_text:setTextColor(255, 255, 255)



local function update( event )
updateBackgrounds()
updateBlocks()
ammo_func()
pwr_up_func()

end

function updateBackgrounds()
--far background movement
backbackground1.x = backbackground1.x - (2)
backbackground2.x = backbackground2.x - (2)
ground.x = ground.x - (3.5)
ground1.x = ground1.x - (3.5)
ammo.x = ammo.x - (4)
pwr_up.x = pwr_up.x - (5)
ammo_text.text = ammo_count

--local flag_ammo = 0

if(backbackground1.x < -545) then
backbackground1.x = 1000
end
if(backbackground2.x < -545) then
backbackground2.x = 1000
end
if(ground.x < -1100) then
ground.x = 2890
end
if(ground1.x < -1100) then
ground1.x = 2890
end

end

function ammo_func()
if(ammo.x < -900) then
ammo:setFillColor( 255, 255 )
flag_ammo = 0
--print(flag_ammo)
ammo.x = 900
end
end

function pwr_up_func()
if(pwr_up.x < -900) then
ammo:setFillColor( 255, 255 )
flag_pwr_up = 0
--print(flag_ammo)
pwr_up.x = 2500
end
end



timer.performWithDelay(1, update, -1)



local blocks = display.newGroup()
local barrelPos=150
for a = 1, 10, 1 do
b = a
isDone = false



local newBlock


if(a == 1 and isDone == false) then
newBlock = movieclip.newAnim{"images/1/10001.png" ,"images/1/10002.png" ,"images/1/10003.png" ,"images/1/10004.png" ,"images/1/10005.png" ,"images/1/10006.png" ,"images/1/10007.png" ,"images/1/10008.png" ,"images/1/10009.png" ,"images/1/10010.png" ,"images/1/10011.png" ,"images/1/10012.png" ,"images/1/10013.png" ,"images/1/10014.png" ,"images/1/10015.png" ,"images/1/10016.png" ,"images/1/10017.png" ,"images/1/10018.png" ,"images/1/10019.png" ,"images/1/10020.png" ,"images/1/10021.png" ,"images/1/10022.png" ,"images/1/10023.png" ,"images/1/10024.png" ,"images/1/10025.png","images/1/m.png"}
physics.addBody(newBlock, "static", {isSensor=true})

end
if(a == 2 and isDone == false) then
newBlock = movieclip.newAnim{"images/2/20001.png" ,"images/2/20002.png" ,"images/2/20003.png" ,"images/2/20004.png" ,"images/2/20005.png" ,"images/2/20006.png" ,"images/2/20007.png" ,"images/2/20008.png" ,"images/2/20009.png" ,"images/2/20010.png" ,"images/2/20011.png" ,"images/2/20012.png" ,"images/2/20013.png" ,"images/2/20014.png" ,"images/2/20015.png" ,"images/2/20016.png" ,"images/2/20017.png" ,"images/2/20018.png" ,"images/2/20019.png" ,"images/2/20020.png" ,"images/2/20021.png" ,"images/2/20022.png" ,"images/2/20023.png" ,"images/2/20024.png" ,"images/2/20025.png","images/2/m.png"}
physics.addBody(newBlock, "static", {isSensor=true})

end
if(a == 3 and isDone == false) then
newBlock = movieclip.newAnim{"images/3/30001.png" ,"images/3/30002.png" ,"images/3/30003.png" ,"images/3/30004.png" ,"images/3/30005.png" ,"images/3/30006.png" ,"images/3/30007.png" ,"images/3/30008.png" ,"images/3/30009.png" ,"images/3/30010.png" ,"images/3/30011.png" ,"images/3/30012.png" ,"images/3/30013.png" ,"images/3/30014.png" ,"images/3/30015.png" ,"images/3/30016.png" ,"images/3/30017.png" ,"images/3/30018.png" ,"images/3/30019.png" ,"images/3/30020.png" ,"images/3/30021.png" ,"images/3/30022.png" ,"images/3/30023.png" ,"images/3/30024.png" ,"images/3/30025.png","images/3/m.png"}

physics.addBody(newBlock, "static", {isSensor=true})
end

if(a == 4 and isDone == false) then
newBlock = movieclip.newAnim{"images/4/40001.png" ,"images/4/40002.png" ,"images/4/40003.png" ,"images/4/40004.png" ,"images/4/40005.png" ,"images/4/40006.png" ,"images/4/40007.png" ,"images/4/40008.png" ,"images/4/40009.png" ,"images/4/40010.png" ,"images/4/40011.png" ,"images/4/40012.png" ,"images/4/40013.png" ,"images/4/40014.png" ,"images/4/40015.png" ,"images/4/40016.png" ,"images/4/40017.png" ,"images/4/40018.png" ,"images/4/40019.png" ,"images/4/40020.png" ,"images/4/40021.png" ,"images/4/40022.png" ,"images/4/40023.png" ,"images/4/40024.png" ,"images/4/40025.png","images/4/m.png"}
physics.addBody(newBlock, "static", {isSensor=true})

end
if(a == 5 and isDone == false) then
newBlock = movieclip.newAnim{"images/5/50001.png" ,"images/5/50002.png" ,"images/5/50003.png" ,"images/5/50004.png" ,"images/5/50005.png" ,"images/5/50006.png" ,"images/5/50007.png" ,"images/5/50008.png" ,"images/5/50009.png" ,"images/5/50010.png" ,"images/5/50011.png" ,"images/5/50012.png" ,"images/5/50013.png" ,"images/5/50014.png" ,"images/5/50015.png" ,"images/5/50016.png" ,"images/5/50017.png" ,"images/5/50018.png" ,"images/5/50019.png" ,"images/5/50020.png" ,"images/5/50021.png" ,"images/5/50022.png" ,"images/5/50023.png" ,"images/5/50024.png" ,"images/5/50025.png","images/5/m.png"}
physics.addBody(newBlock, "static", {isSensor=true})

end
if(a == 6 and isDone == false) then
newBlock = movieclip.newAnim{"images/6/60001.png" ,"images/6/60002.png" ,"images/6/60003.png" ,"images/6/60004.png" ,"images/6/60005.png" ,"images/6/60006.png" ,"images/6/60007.png" ,"images/6/60008.png" ,"images/6/60009.png" ,"images/6/60010.png" ,"images/6/60011.png" ,"images/6/60012.png" ,"images/6/60013.png" ,"images/6/60014.png" ,"images/6/60015.png" ,"images/6/60016.png" ,"images/6/60017.png" ,"images/6/60018.png" ,"images/6/60019.png" ,"images/6/60020.png" ,"images/6/60021.png" ,"images/6/60022.png" ,"images/6/60023.png" ,"images/6/60024.png" ,"images/6/60025.png","images/6/m.png"}
physics.addBody(newBlock, "static", {isSensor=true})
end

if(a == 7 and isDone == false) then
newBlock = movieclip.newAnim{"images/8/80001.png" ,"images/8/80002.png" ,"images/8/80003.png" ,"images/8/80004.png" ,"images/8/80005.png" ,"images/8/80006.png" ,"images/8/80007.png" ,"images/8/80008.png" ,"images/8/80009.png" ,"images/8/80010.png" ,"images/8/80011.png" ,"images/8/80012.png" ,"images/8/80013.png" ,"images/8/80014.png" ,"images/8/80015.png" ,"images/8/80016.png" ,"images/8/80017.png" ,"images/8/80018.png" ,"images/8/80019.png" ,"images/8/80020.png" ,"images/8/80021.png" ,"images/8/80022.png" ,"images/8/80023.png" ,"images/8/80024.png" ,"images/8/80025.png","images/8/m.png"}
physics.addBody(newBlock, "static", {isSensor=true})

end
if(a == 8 and isDone == false) then
newBlock = movieclip.newAnim{"images/9/90001.png" ,"images/9/90002.png" ,"images/9/90003.png" ,"images/9/90004.png" ,"images/9/90005.png" ,"images/9/90006.png" ,"images/9/90007.png" ,"images/9/90008.png" ,"images/9/90009.png" ,"images/9/90010.png" ,"images/9/90011.png" ,"images/9/90012.png" ,"images/9/90013.png" ,"images/9/90014.png" ,"images/9/90015.png" ,"images/9/90016.png" ,"images/9/90017.png" ,"images/9/90018.png" ,"images/9/90019.png" ,"images/9/90020.png" ,"images/9/90021.png" ,"images/9/90022.png" ,"images/9/90023.png" ,"images/9/90024.png" ,"images/9/90025.png","images/9/m.png"}
physics.addBody(newBlock, "static", {isSensor=true})

end
if(a == 9 and isDone == false) then
newBlock = movieclip.newAnim{"images/11/110001.png" ,"images/11/110002.png" ,"images/11/110003.png" ,"images/11/110004.png" ,"images/11/110005.png" ,"images/11/110006.png" ,"images/11/110007.png" ,"images/11/110008.png" ,"images/11/110009.png" ,"images/11/110010.png" ,"images/11/110011.png" ,"images/11/110012.png" ,"images/11/110013.png" ,"images/11/110014.png" ,"images/11/110015.png" ,"images/11/110016.png" ,"images/11/110017.png" ,"images/11/110018.png" ,"images/11/110019.png" ,"images/11/110020.png" ,"images/11/110021.png" ,"images/11/110022.png" ,"images/11/110023.png" ,"images/11/110024.png" ,"images/11/110025.png","images/11/m.png"}
physics.addBody(newBlock, "static", {isSensor=true})

end
if(a == 10 and isDone == false) then
newBlock = movieclip.newAnim{"images/12/120001.png" ,"images/12/120002.png" ,"images/12/120003.png" ,"images/12/120004.png" ,"images/12/120005.png" ,"images/12/120006.png" ,"images/12/120007.png" ,"images/12/120008.png" ,"images/12/120009.png" ,"images/12/120010.png" ,"images/12/120011.png" ,"images/12/120012.png" ,"images/12/120013.png" ,"images/12/120014.png" ,"images/12/120015.png" ,"images/12/120016.png" ,"images/12/120017.png" ,"images/12/120018.png" ,"images/12/120019.png" ,"images/12/120020.png" ,"images/12/120021.png" ,"images/12/120022.png" ,"images/12/120023.png" ,"images/12/120024.png" ,"images/12/120025.png","images/12/m.png"}
physics.addBody(newBlock, "static", {isSensor=true})

end





--distance = {700,1000,1500,1700,2100,2700,3000,3400}
--blade={city1,city2}
--objs = {newBlock,ground1,blade}

newBlock.name = ("block" .. a)
newBlock.id = a

newBlock.x=400+(a-1)*130

--print(newBlock.x)
newBlock.y = barrelPos
blocks:insert(newBlock)

end

flag = {0,0,0,0,0,0,0,0,0,0}
local flag_bulding_destroyed = 0

local function callNextFrame(block,a)
if(flag[a] == 0) then
	flag[a]=1
	block:play{ startFrame=1, endFrame=25, loop=1, remove=false }
	flag_bulding_destroyed = flag_bulding_destroyed + 1
	--print(flag_bulding_destroyed)
end
end


local score=0
local textobj=display.newText(score,475,0,"Helvetica",20)
local function updateScore()
score=score+1
textobj.text=score
end
timer.performWithDelay(100,updateScore,-1)



local speed =3
local flagp={0,0,0,0,0,0,0,0,0,0}


function updateBlocks()
for a = 1, blocks.numChildren, 1 do
b=a+8
if(a > 1) then
--distance = {150+(a-1)*1100,400+(a-1)*500}
newX = (blocks[a-1]).x + (150+(a-1)*10)
--print(newX)
--math.random(50,60,90,80)
--else
--newX = (blocks[4]).x + (150+(b-1)*100)-speed
--print(newX)
end
if((blocks[a]).x < 250 and flagp[a] == 0) then                     
timer.performWithDelay(10000,callNextFrame(blocks[a],a))
end
if((blocks[a]).x < -50) then
(blocks[a]).x, (blocks[a]).y = newX, (blocks[a]).y
blocks[a]:play{ startFrame=1, endFrame=1, loop=1, remove=false }
--[[if(flagp[a]==0)then
blocks[a]:play{ startFrame=1, endFrame=1, loop=1, remove=false }
end]]--
flag[a]=0
flagp[a]=0
else
(blocks[a]):translate(speed * -1, 0)
end
end
end

ground = display.newImage("images/layer1.png")
ground.y=250
ground.x=900

ground1 = display.newImage("images/layer2.png")
ground1.y=250
ground1.x=2900

 flag_ammo = 0

ammo = display.newImage("images/ball.png")
ammo.x = 1000
ammo.y = 240
ammo.xScale = 0.6
ammo.yScale = 0.6
physics.addBody(ammo, "static", {isSensor=true,radius=10})



 flag_pwr_up = 0
flag_pwr_up_2 = 0
pwr_up = display.newImage("images/ball2.png")
pwr_up.x = 250
pwr_up.y = 250
pwr_up.xScale = 0.6
pwr_up.yScale = 0.6
physics.addBody(pwr_up, "static", {isSensor=true,radius=10})


local function onObjectTouch( event )
    if event.phase == "began" then	
		if flag_ammo == 0 then
		--print("TOUCH!!")
		--flag_ammo =1
		ammo_count = ammo_count + 10
		ammo:setFillColor( 0, 0 )
		--print(ammo_count)
		end
		--flag_ammo = 0
		
		if flag_pwr_up == 0 then
		--print("TOUCH!!")
		--flag_ammo =1
		flag_pwr_up_2 = 1
		ammo:setFillColor( 0, 0 )
		--print(ammo_count)
		end
        
	end
    return true
end
ammo:addEventListener( "touch", onObjectTouch )
pwr_up:addEventListener( "touch", onObjectTouch )








local plasma = movieclip.newAnim{"images/char/1 (1).png", "images/char/1 (2).png", "images/char/1 (3).png", "images/char/1 (4).png", "images/char/1 (5).png", "images/char/1 (6).png", "images/char/1 (7).png", "images/char/1 (8).png", "images/char/1 (9).png", "images/char/1 (10).png", "images/char/1 (11).png", "images/char/1 (12).png", "images/char/1 (13).png", "images/char/1 (14).png", "images/char/1 (15).png", "images/char/1 (16).png", "images/char/1 (17).png", "images/char/1 (18).png", "images/char/1 (19).png", "images/char/1 (20).png", "images/char/1 (21).png", "images/char/1 (22).png", "images/char/1 (23).png", "images/char/1 (24).png", "images/char/1 (25).png", "images/char/1 (26).png", "images/char/1 (27).png", "images/char/1 (28).png", "images/char/1 (29).png", "images/char/1 (30).png", "images/char/1 (31).png", "images/char/1 (32).png", "images/char/1 (33).png", "images/char/1 (34).png", "images/char/1 (35).png", "images/char/1 (36).png", "images/char/1 (37).png", "images/char/1 (38).png", "images/char/1 (39).png", "images/char/1 (40).png", "images/char/1 (41).png", "images/char/1 (42).png", "images/char/1 (43).png", "images/char/1 (44).png", "images/char/1 (45).png", "images/char/1 (46).png", "images/char/1 (47).png", "images/char/1 (48).png", "images/char/1 (49).png", "images/char/1 (50).png", "images/char/1 (51).png", "images/char/1 (52).png", "images/char/1 (53).png", "images/char/1 (54).png", "images/char/1 (55).png", "images/char/1 (56).png", "images/char/1 (57).png", "images/char/1 (58).png", "images/char/1 (59).png", "images/char/1 (60).png"}
physics.addBody(plasma, "static", {isSensor=true,radius=30})
plasma.x = 40
plasma.y = 240
plasma:play()






local flag_plasma =0;


function swipe(event)
        if event.phase == "began" then
                beginX = event.x
                beginY = event.y
			--	print(beginX)
				--print(beginY)
				if (beginX<(plasma.x+ 30) and beginX >(plasma.x - 30)) and (beginY<(plasma.y+ 30) and beginY >(plasma.y - 30)) and ammo_count > 0 then
				flag_plasma =1
				ammo_count = ammo_count - 1
				--print(ammo_count)
				--print(1)
				
        end
		end
       
        if event.phase == "ended"  then
                endX = event.x
                endY = event.y
			--	print(flag_plasma)
				--print(endX)
				--print(endY)
				if(flag_plasma == 1) then
				for i=1,10,1 do
                if ((endX<blocks[i].x +30) and endX > (blocks[i].x - 30))  and ((endY<blocks[i].y +50) and endY > (blocks[i].y - 50) and (blocks[i].x > 250))  then
				flagp[i]=1   
				blocks[i]:play{ startFrame=26, endFrame=26, loop=1, remove=false }				
				
				--print(11)
				end
				--end
				end
				end
				flag_plasma = 0
        end
		
end

 
Runtime:addEventListener("touch", swipe)
