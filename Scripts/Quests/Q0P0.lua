--
-- This file is autogenerated by QuestXml2Lua
--
require "quests/Quest" 


local quest = Quest {

   id                 = "Q0P0";
   log_text           = "[Q0P0_DESC]";
   icon               = "side";
   quest_type         = "side";
   repeatable         = false;
   can_abandon        = true;
   end_state          = 3;
   start_convo        = "";
   incomplete_convo   = "";
   level_min          = 1;
   level_max          = 999;
   start_message      = "";
   incomplete_message = "";
   start_locations = {S064=true,T237=true};

   preconditions = {
      [2]={
      CONDITIONS.min_gold {amount=500, text="[Q0P0_2_0_PRE]"},
          };
   };

   objectives = {
      [1]={
              OBJECTIVES.go_to_location {
                 location        = {S073=true,T120=true};
                 action			= "[Q0P0_1_0_ACTN]";
                 log_text		= "[Q0P0_1_0_LOG]";
                 end_text        = "[Q0P0_1_0_ENDMSG]";
                 next_state      = 2;
              },
           };
      [2]={
              OBJECTIVES.go_to_location {
                 location        = {S064=true,T237=true};
                 action			= "[Q0P0_2_0_ACTN]";
                 log_text		= "[Q0P0_2_0_LOG]";
                 next_state      = 3;
              },
          };
   };

   start_actions = {
   };

   end_actions = {
      [2]={
                 ACTIONS.give_gold {amount=-500, show=false},
           };
      [3]={
                 ACTIONS.unlock_quest {quest="Q0P1", show=false},
                 ACTIONS.give_faction_status {faction="12", amount=5, show=false},
                 ACTIONS.give_gold {amount=1000, show=true},
                 ACTIONS.give_experience {amount=25, show=true},
          };
   };

   abandon_actions = {
   };

}

return quest