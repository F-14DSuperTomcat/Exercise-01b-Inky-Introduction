/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:

 * Basic Choices
 * Knot structure
 * Recurring choices
 - Conditionals in descriptions
 - Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/

-> cave_mouth

== cave_mouth ==
You are at the entrance of a cave. {torch_pickup: | There is a torch on the floor.} The cave extends to the east and west.
+ [Take the east tunnel] -> east_tunnel
+ [Take the west tunnel] -> west_tunnel
* [Pick up the torch] -> torch_pickup

== east_tunnel ==
You are in the east. It is very dark. You cannot see anything
+ [{not torch_pickup: | Raise torch}] -> et_lit
+ [Go Back] -> cave_mouth
-> END

== west_tunnel ==
you are in the west
+ [Go Back] -> cave_mouth
-> END

=== torch_pickup ===
You now have a torch. May it light your way.
* [Go Back] -> cave_mouth
-> END

== et_lit ==
The torch reveals a small passageway cut into the walls of the tunnel.
-> END
