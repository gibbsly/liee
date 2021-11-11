#main scoreboard
scoreboard objectives add liee.main dummy
scoreboard players set #10 liee.main 10
scoreboard players set #100 liee.main 100

#slot scoreboards 112.233445566 - 1; mainhand, 2; offhand, 3; head, 4; chest, 5; legs, 6; feet
scoreboard objectives add liee.mainhand dummy
scoreboard objectives add liee.offhand dummy
scoreboard objectives add liee.head dummy
scoreboard objectives add liee.chest dummy
scoreboard objectives add liee.legs dummy
scoreboard objectives add liee.feet dummy

#update timestamp scoreboard
scoreboard objectives add liee.time dummy
scoreboard players set current= liee.time 0

#advancement error correction
schedule function liee:ec 10t