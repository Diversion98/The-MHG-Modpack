//starting gear

public function giveStartingItems() as void
{
    mods.initialinventory.InvHandler.addStartingItem("torches", <item:minecraft:torch>*4, 7);
    mods.initialinventory.InvHandler.addStartingItem("apples", <item:minecraft:apple>*5, 8);
    mods.initialinventory.InvHandler.addStartingItem("questbook", <item:ftbquests:book>, 0);
}