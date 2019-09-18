local Test_EventFrame = CreateFrame("Frame")
--Test_EventFrame:RegisterEvent("PLAYER_STARTED_MOVING")
Test_EventFrame:RegisterEvent("ITEM_LOCKED")
Test_EventFrame:SetScript("OnEvent",
    function(self, event, ...)
        local arg1,arg2 = ...

        x = GetContainerItemID(arg1, arg2)
        name, realm = UnitName("player")
        wowhead = strjoin('', 'http://classic.wowhead.com/item=', x);
        SendChatMessage(wowhead, "WHISPER",nil,name);
    end)