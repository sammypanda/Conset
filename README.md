# Conset
Conset provides a controller, touch and user friendly interface for media.

## Vision/Goal in Practice
Context: 
- Media room
 - Cinemascope screen (with mechanical curtains to letterbox)
 - Touchscreen display by door
 - Automated lights

Use:
1. The touchscreen shows a list large, hi-res movie covers.
2. Scrolling or swiping through this list, the user can choose a movie to play.
3. They have the option to specify which subs, video, audio and time to play the media.
3.1. The media has, associated with it, automation/sequence file(s) that say what to do when things are queued, started at different timestamps, and at the end (these could generate settings pages).
4. When confirmed, the host device receives the instructions.
5. The host device is the device that will display the media, it has the IR blasters and Bluetooth connections to enable whichever automations are requested. When the schedule is met:
6. The host does the queue sequence, such as: turning on the lights and setting the curtains to be fully closed
7. The host does the start sequence, such as: set the eq to a specific profile, dim the lights, play a series of other media such as trailers with their own sequences, and draw in the curtains to the correct place 
8. The host does an event at a timestamp, such as: flashing the lights, (or examples like spraying water, moving mechanical seats) at a specific moment in the film
9. The host does the end sequence, such as: returning the room to the defined default, turning down the volume, playing a different media.