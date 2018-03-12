//TS 6.03 compatibility
ADD_STATE_TRIGGER RIBALD 0 ~!Global("CbRibaldFoundStolenGoods","LOCALS",1)~
ADD_STATE_TRIGGER RIBALD 24 ~!Global("CbRibaldFoundStolenGoods","LOCALS",1)~


REPLACE_STATE_TRIGGER RIBALD 20

~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",STATE_SLEEPING)
Global("RibaldMazzy","LOCALS",0)
!Global("CbRibaldFoundStolenGoods","LOCALS",1)~


APPEND RIBALD

IF ~Global("CbRibaldFoundStolenGoods","LOCALS",1)~ THEN BEGIN SOS230
  SAY @0
  IF ~PartyHasItem("CBCL047")~ THEN REPLY @1 GOTO SOS232
  IF ~PartyHasItem("CBCL033")~ THEN REPLY @2 GOTO SOS248
  IF ~PartyHasItem("CBCL031")~ THEN REPLY @3 GOTO SOS249
  IF ~PartyHasItem("CBCL024")~ THEN REPLY @4 GOTO SOS251
  IF ~PartyHasItem("CBCL005")~ THEN REPLY @5 GOTO SOS252
  IF ~PartyHasItem("CBCL060")~ THEN REPLY @6 GOTO SOS253
  IF ~PartyHasItem("CBCL009")~ THEN REPLY @7 GOTO SOS254
  IF ~PartyHasItem("CBCL012")~ THEN REPLY @8 GOTO SOS255
  IF ~PartyHasItem("CBCL029")~ THEN REPLY @9 GOTO SOS256
  IF ~PartyHasItem("CBCL042")~ THEN REPLY @10 GOTO SOS257
END

IF ~~ THEN BEGIN SOS232
  SAY @11
  IF ~True()~ THEN GOTO SOS233
  IF ~Global("CbRibaldsGlobalDoesntExist","LOCALS",1)~ THEN GOTO SOS234
END

IF ~~ THEN BEGIN SOS233
  SAY @12
  IF ~CheckStatGT(Player1,16,CHR)~ THEN REPLY @13 GOTO SOS240
  IF ~~ THEN REPLY @14 GOTO SOS241
  IF ~~ THEN REPLY @15 GOTO SOS242
  IF ~~ THEN REPLY @16 GOTO SOS244
  IF ~~ THEN REPLY @17 GOTO SOS246
  IF ~~ THEN REPLY @18 GOTO SOS247
END

IF ~~ THEN BEGIN SOS234
  SAY @19
  IF ~RandomNum(2,1)~ THEN GOTO SOS235
  IF ~RandomNum(2,2)~ THEN GOTO SOS238
END

IF ~~ THEN BEGIN SOS235
  SAY @20
  IF ~CheckStatGT(Player1,16,CHR)~ THEN REPLY @21 GOTO SOS236
  IF ~CheckStatLT(Player1,17,CHR)~ THEN REPLY @22 GOTO SOS237
END

IF ~~ THEN BEGIN SOS236
  SAY @23
  IF ~~ THEN DO ~SetGlobal("CbRibaldFoundStolenGoods","LOCALS",0)~ EXIT
END

IF ~~ THEN BEGIN SOS237
  SAY @24
  IF ~~ THEN DO ~SetGlobal("CbGuardsAlerted","AR0702",1)~ EXIT
END

IF ~~ THEN BEGIN SOS238
  SAY @25
  IF ~~ THEN GOTO SOS239
END

IF ~~ THEN BEGIN SOS239
  SAY @26
  IF ~~ THEN DO ~SetGlobal("CbGuardsAlerted","AR0702",1)~ EXIT
END

IF ~~ THEN BEGIN SOS240
  SAY @27
  IF ~~ THEN REPLY @28 EXIT
END

IF ~~ THEN BEGIN SOS241
  SAY @29
  IF ~~ THEN REPLY @30 GOTO SOS258
  IF ~~ THEN REPLY @31 GOTO SOS259
  IF ~~ THEN REPLY @32 GOTO SOS242
  IF ~~ THEN REPLY @33 GOTO SOS260
END

IF ~~ THEN BEGIN SOS242
  SAY @34
  IF ~~ THEN GOTO SOS243
END

IF ~~ THEN BEGIN SOS243
  SAY @35
  IF ~~ THEN REPLY @36 DO ~TakePartyItem("CBCL047")
TakePartyItem("CBCL033")
TakePartyItem("CBCL031")
TakePartyItem("CBCL024")
TakePartyItem("CBCL005")
TakePartyItem("CBCL060")
TakePartyItem("CBCL009")
TakePartyItem("CBCL012")
TakePartyItem("CBCL029")
TakePartyItem("CBCL042")~ GOTO SOS262
  IF ~~ THEN REPLY @37  GOTO SOS261
END

IF ~~ THEN BEGIN SOS244
  SAY @38
  IF ~~ THEN GOTO SOS245
END

IF ~~ THEN BEGIN SOS245
  SAY @39
  IF ~~ THEN REPLY @36 DO ~TakePartyItem("CBCL047")
TakePartyItem("CBCL033")
TakePartyItem("CBCL031")
TakePartyItem("CBCL024")
TakePartyItem("CBCL005")
TakePartyItem("CBCL060")
TakePartyItem("CBCL009")
TakePartyItem("CBCL012")
TakePartyItem("CBCL029")
TakePartyItem("CBCL042")~ GOTO SOS262
  IF ~~ THEN REPLY @37 GOTO SOS261
END

IF ~~ THEN BEGIN SOS246
  SAY @40 /* #79427 */
  IF ~~ THEN REPLY @41 GOTO SOS241
  IF ~~ THEN REPLY @15 GOTO SOS242
  IF ~~ THEN REPLY @42 GOTO SOS271
END

IF ~~ THEN BEGIN SOS247
  SAY @43
  IF ~~ THEN GOTO SOS260
END

IF ~~ THEN BEGIN SOS248
  SAY @44
  IF ~~ THEN GOTO SOS233
END

IF ~~ THEN BEGIN SOS249
  SAY @45
  IF ~~ THEN GOTO SOS250
END

IF ~~ THEN BEGIN SOS250
  SAY @46
  IF ~~ THEN GOTO SOS233
END

IF ~~ THEN BEGIN SOS251
  SAY @47
  IF ~~ THEN GOTO SOS233
END

IF ~~ THEN BEGIN SOS252
  SAY @48
  IF ~~ THEN GOTO SOS233
END

IF ~~ THEN BEGIN SOS253
  SAY @49
  IF ~~ THEN GOTO SOS233
END

IF ~~ THEN BEGIN SOS254
  SAY @50
  IF ~~ THEN GOTO SOS233
END

IF ~~ THEN BEGIN SOS255
  SAY @51
  IF ~~ THEN GOTO SOS233
END

IF ~~ THEN BEGIN SOS256
  SAY @52
  IF ~~ THEN GOTO SOS233
END

IF ~~ THEN BEGIN SOS257
  SAY @53
  IF ~~ THEN GOTO SOS233
END

IF ~~ THEN BEGIN SOS258
  SAY @54 
  IF ~~ THEN REPLY @55 GOTO SOS261
  IF ~~ THEN REPLY @56 GOTO SOS260
END

IF ~~ THEN BEGIN SOS259
  SAY @57 
  IF ~~ THEN REPLY @56 GOTO SOS260
  IF ~~ THEN REPLY @58 GOTO SOS261
END

IF ~~ THEN BEGIN SOS260
  SAY @59
  IF ~~ THEN REPLY @60 GOTO SOS242
  IF ~~ THEN REPLY @61 GOTO SOS263
  IF ~~ THEN REPLY @62 GOTO SOS266
  IF ~~ THEN REPLY @63 GOTO SOS267
  IF ~~ THEN REPLY @64 GOTO SOS269
END

IF ~~ THEN BEGIN SOS261
  SAY @65
  IF ~~ THEN DO ~SetGlobal("CbGuardsAlerted","AR0702",1)~ EXIT
END

IF ~~ THEN BEGIN SOS262
  SAY @66
  IF ~~ THEN DO ~Wait(30)
SetGlobal("CbGuardsAlerted","AR0702",1)~ EXIT
END

IF ~~ THEN BEGIN SOS263
  SAY @67
  IF ~~ THEN GOTO SOS264
END

IF ~~ THEN BEGIN SOS264
  SAY @68
  IF ~~ THEN REPLY @69 GOTO SOS265
  IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_6%)~ THEN REPLY @70GOTO 2
  IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)~ THEN REPLY @70 GOTO 47
END

IF ~~ THEN BEGIN SOS265
  SAY @71
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SOS266
  SAY @72
  IF ~~ THEN DO ~SetGlobal("CbGuardsAlerted","AR0702",1)~ EXIT
END

IF ~~ THEN BEGIN SOS267
  SAY @73
  IF ~~ THEN GOTO SOS268
END

IF ~~ THEN BEGIN SOS268
  SAY @74
  IF ~~ THEN REPLY @69 GOTO SOS265
  IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_6%)~ THEN REPLY @70 GOTO 2
  IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)~ THEN REPLY @70 GOTO 47
END

IF ~~ THEN BEGIN SOS269
  SAY @75
  IF ~~ THEN REPLY @76 GOTO SOS270
  IF ~~ THEN REPLY @77 GOTO SOS242
  IF ~~ THEN REPLY @61 GOTO SOS263
END

IF ~~ THEN BEGIN SOS270
  SAY @78
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SOS271
  SAY @79
  IF ~~ THEN DO ~SetGlobal("CbGuardsAlerted","AR0702",1)~ EXIT
END

END
