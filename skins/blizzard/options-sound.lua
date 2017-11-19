pfUI:RegisterSkin("Options-Sound", function ()
  SoundOptionsFrame:SetScript("OnShow", function()
    -- default events
    SoundOptionsFrame_Load()
    Disable_BagButtons()
    UpdateMicroButtons()

    -- customize
    SoundOptionsFrame:EnableKeyboard(false)
    StripTextures(SoundOptionsFrame)
    CreateBackdrop(SoundOptionsFrame, nil, nil, .9)
    CenterFrame(SoundOptionsFrame)
    EnableMovable(SoundOptionsFrame)

    SkinButton(SoundOptionsFrameDefaults)
    SoundOptionsFrameDefaults:SetTextColor(1,0.82,0,1)

    SkinButton(SoundOptionsFrameOkay)
    SoundOptionsFrameOkay:SetTextColor(1,0.82,0,1)
    SoundOptionsFrameOkay:ClearAllPoints()
    SoundOptionsFrameOkay:SetPoint("RIGHT", SoundOptionsFrameCancel, "LEFT", -3, 0)

    SkinButton(SoundOptionsFrameCancel)
    SoundOptionsFrameCancel:SetTextColor(1,0.82,0,1)

    for i=1, 8 do
      local frame = _G["SoundOptionsFrameCheckButton"..i]
      if frame then SkinCheckbox(frame) end
    end
  end)
end)
