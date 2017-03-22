Asks netsh for your current wireless signal strength and transmit rate, and reads them out loud on a scale from 1-5, so you can pretend you're a plane.

Requires Powershell and eSpeak. Most Windows Server releases include the System.Speech.Synthesis.SpeechSynthesizer, so that's probably preferable to eSpeak if you have it. 

If you need to fuck your computer up but mom won't let you, "set-executionpolicy -scope currentuser unrestricted" is probably what you're looking for.

Currently, interpretation of transmit rate as readability is laughably casual and set at a level that happens to have interesting variance in the place I'm sitting now.
