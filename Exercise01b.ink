/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:

 * Basic Choices
 * Knot structure
 * Recurring choices
 * Conditionals in descriptions
 * Conditionals in choices
 
 In the assignment:
 * Add four more knots (and feel free to change any of the example text, this is YOUR story)
 * Add at least one more conditional
*/

-> cave_mouth

== cave_mouth ==
You are at the entrance of a cave. {torch_pickup: | There is a torch on the floor.} The cave extends to the east and west.
+ [Take the east tunnel] -> east_tunnel
+ [Take the west tunnel] -> west_tunnel
* [Pick up the torch] -> torch_pickup

== east_tunnel ==
You are in the east tunnel. It is very dark. You cannot see anything.
+ [{torch_pickup: | Feel around the tunnel}] -> et_dark
+ [{not torch_pickup: | Raise torch}] -> et_lit
+ [Go Back] -> cave_mouth
-> END

== west_tunnel ==
You are in the west tunnel. It is very dark. You cannot see anything.
+ [{torch_pickup: | Feel around the tunnel}] -> wt_dark
+ [{not torch_pickup: | Raise torch}] -> wt_lit
+ [Go Back] -> cave_mouth
-> END

=== torch_pickup ===
You now have a torch. May it light your way.
* [Go Back] -> cave_mouth
-> END

== et_dark ==
You feel a small hole cut into the wall.
+ [Enter the hole] -> pass_dark
+ [Go Back] -> east_tunnel
-> END

== wt_dark ==
You feel nothing but rocks.
+[Go back] -> west_tunnel
-> END

== et_lit ==
The torch reveals a small passageway cut into the walls of the tunnel. There is a faint shine coming from the passage.
+ [Enter the passageway] -> pass_lit
+ [Go Back] -> cave_mouth
-> END

== wt_lit ==
The torch reveals absolutely nothing. The tunnel is a dead end with no exit.
+ [Go Back] -> cave_mouth
-> END

== pass_lit ==
You find yourself in a room full of gold.
* [Walk towards the gold] -> gold_lit
+ [Go Back] -> et_lit
-> END

== pass_dark ==
You enter the hole and follow a short, windy passageway. As you exit, you hear a noise that sounds like the plinking of water droplets hitting gold.
* [Walk towards the sound] -> gold_dark
+ [Go Back] -> et_dark
-> END

== gold_lit ==
As you approach the gold, a small goblin shoots up and lunges at you.
* [Throw the torch at it] -> end_1
* [Run Away] -> end_2
-> END

== gold_dark ==
As you approach the sound, you hear the shrieking of a goblin on the attack.
* [Square up to fight the goblin] -> end_3
* [Run Away] -> end_4
-> END

== end_1 == 
The goblin gets a nasty bruise on its forehead and is immolated by the torch. Apparently they are very flammable. You can get the gold all to yourself. {bag_pickup: | There is a bag on the ground beside you.}
* [Pick up a bag] -> bag_pickup
+ [Go to the gold] -> gold_win
-> END

== bag_pickup ==
You now have a bag that can hold gold.
* [Go to the gold] -> gold_win

== gold_win ==
The gold lies right before you.
* [{bag_pickup: | Take the gold with you}] -> bruh
* [{not bag_pickup: | Take the gold with you}] -> super_win
->END

== bruh ==
How are you supposed to take the gold with you if you don't have a way to carry it?
* [Go get a bag] -> bag_pickup

== super_win==
Congratulations! The spoils of this cavern are yours to keep!
->END

== end_2 ==
Well you escaped the goblin, but there is absolutely no way you are getting that gold now. Oh well. There are plenty more caves to explore.
-> END

== end_3 ==
Dummy, it's pitch black. You don't know where the goblin is, but it knows where you are. It was nice knowing you.
-> END

== end_4 ==
You run headfirst into a stone wall and get knocked out by it. How were you going to run away when you can't even see where you're going?
->END
