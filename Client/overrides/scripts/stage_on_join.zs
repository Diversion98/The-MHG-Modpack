import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.event.entity.player.MCPlayerLoggedInEvent;
import crafttweaker.api.player.MCPlayerEntity;
import crafttweaker.api.util.text.MCStyle;
import crafttweaker.api.util.text.MCTextComponent;

var Version = "0.0.4f";

giveStartingItems();

// Registers an event listener for the MCPlayerLoggedInEvent.
CTEventManager.register<MCPlayerLoggedInEvent>((event) => {

    // Gets the player from the event context.
    var player = event.player;
     
    player.sendMessage(("Warning!" as MCTextComponent).setStyle(new MCStyle().setColor(<formatting:red>)));
	player.sendMessage(" ");
	player.sendMessage(
		("You are using a development build of " as MCTextComponent).setStyle(new MCStyle().setColor(<formatting:white>)) +
		(("The MHG Modpack Version: " + Version +".") as MCTextComponent).setStyle(new MCStyle().setColor(<formatting:aqua>))	
	);
	player.sendMessage(("Please ensure you report any bugs to our Discord: " as MCTextComponent).setStyle(new MCStyle().setColor(<formatting:white>)));
	player.sendMessage(("https://discord.gg/hwF266hJCA" as MCTextComponent).setStyle(new MCStyle().setColor(<formatting:green>)));
	player.sendMessage(" ");
	player.sendMessage("Thanks for helping to test new updates!");

	// Make sure the player has the stone stage
	// This helps prevent issues when a new player joins
	if (!player.hasGameStage("stone_age"))
    {
		player.addGameStage("stone_age");
	}
});