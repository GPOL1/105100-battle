RegisterTableGoal(GOAL_SpearDragonCultist_Battle, "SpearDragonCultist_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_SpearDragonCultist_Battle, true)

Goal.Initialize = function (_, arg1, _, _)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3002)
    arg1:EnableUnfavorableAttackCheck(0, 3003)
    arg1:EnableUnfavorableAttackCheck(0, 3004)
    arg1:EnableUnfavorableAttackCheck(0, 3005)
    arg1:EnableUnfavorableAttackCheck(0, 3006)
    arg1:EnableUnfavorableAttackCheck(0, 3007)
    arg1:EnableUnfavorableAttackCheck(0, 3008)
    arg1:EnableUnfavorableAttackCheck(0, 3009)
    arg1:EnableUnfavorableAttackCheck(0, 3010)
    arg1:EnableUnfavorableAttackCheck(0, 3011)
    arg1:EnableUnfavorableAttackCheck(0, 3012)
    arg1:EnableUnfavorableAttackCheck(0, 3013)
    arg1:EnableUnfavorableAttackCheck(0, 3014)
    arg1:EnableUnfavorableAttackCheck(0, 3015)
    arg1:EnableUnfavorableAttackCheck(0, 3016)
    arg1:EnableUnfavorableAttackCheck(0, 3017)
    arg1:EnableUnfavorableAttackCheck(0, 3018)
    arg1:EnableUnfavorableAttackCheck(0, 3019)
    arg1:EnableUnfavorableAttackCheck(0, 3020)
    arg1:EnableUnfavorableAttackCheck(0, 3021)
    arg1:EnableUnfavorableAttackCheck(0, 3022)
    arg1:EnableUnfavorableAttackCheck(0, 3023)
    arg1:EnableUnfavorableAttackCheck(0, 3024)
    arg1:EnableUnfavorableAttackCheck(0, 3025)
    arg1:EnableUnfavorableAttackCheck(0, 3028)
    arg1:EnableUnfavorableAttackCheck(0, 3030)
    arg1:EnableUnfavorableAttackCheck(0, 3031)
    arg1:EnableUnfavorableAttackCheck(0, 3032)
    arg1:EnableUnfavorableAttackCheck(0, 3033)
    arg1:EnableUnfavorableAttackCheck(0, 3034)
    arg1:EnableUnfavorableAttackCheck(0, 3035)
    arg1:EnableUnfavorableAttackCheck(0, 3036)
    arg1:EnableUnfavorableAttackCheck(0, 3037)
end

Goal.Activate = function (_, actor, goals)
    local probabilities = {}
    local acts = {}
    local f2_local0 = {}
    Common_Clear_Param(probabilities, acts, f2_local0)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5222)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5040)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5041)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5042)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5043)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5044)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5045)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5046)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5047)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5048)
    actor:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 30)
    local distance0 = actor:GetDist(TARGET_ENE_0)
    actor:GetDistY(TARGET_ENE_0)
    actor:GetHpRate(TARGET_SELF)
    actor:GetRandam_Int(1, 100)
    local distance1 = actor:GetDist(TARGET_FRI_0)
    local f2_local1 = actor:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if f2_local1 == 1 and actor:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if distance0 >= 15 then
            probabilities[20] = 100
            probabilities[22] = 100
        elseif distance0 >= 5 then
            probabilities[20] = 100
            probabilities[22] = 100
        elseif distance0 >= 3 then
            probabilities[20] = 100
        else
            probabilities[20] = 100
        end
    elseif f2_local1 == 1 and actor:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if distance0 >= 15 then
            probabilities[20] = 100
            probabilities[22] = 100
        elseif distance0 >= 5 then
            probabilities[20] = 100
            probabilities[22] = 100
        elseif distance0 >= 3 then
            probabilities[20] = 100
        else
            probabilities[20] = 100
        end
    elseif actor:HasSpecialEffectId(TARGET_SELF, 5401) then
        if distance0 >= 10 then
            if actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[4] = 100
                probabilities[5] = 100
                probabilities[7] = 100
                probabilities[11] = 100
    
                probabilities[21] = 100
                probabilities[23] = 100
            else
                probabilities[4] = 100
                probabilities[5] = 100
                probabilities[11] = 100
    
                probabilities[21] = 100
                probabilities[23] = 100
            end
        elseif distance0 >= 3 then
            if actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[4] = 100
                probabilities[5] = 100
                probabilities[7] = 100
                probabilities[11] = 100
    
                probabilities[21] = 100
                probabilities[23] = 100
            else
                probabilities[4] = 100
                probabilities[5] = 100
                probabilities[11] = 100
    
                probabilities[21] = 100
                probabilities[23] = 100
            end
        elseif actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            probabilities[4] = 100
            probabilities[5] = 100
            probabilities[6] = 100
            probabilities[7] = 100
            probabilities[11] = 100
            probabilities[14] = 100

            probabilities[21] = 100
            probabilities[23] = 100
        else
            probabilities[4] = 100
            probabilities[5] = 100
            probabilities[11] = 100
            probabilities[14] = 100

            probabilities[21] = 100
            probabilities[23] = 100
        end
    else
        if distance0 >= 10 then
            if actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[1] = 100
                probabilities[12] = 100
                probabilities[13] = 100
    
                if actor:GetHpRate(TARGET_SELF) <= 0.5 then
                    probabilities[16] = 100
                else
                    probabilities[19] = 100
                end
                probabilities[15] = 300
            else
                probabilities[12] = 100
                probabilities[13] = 100
    
                if actor:GetHpRate(TARGET_SELF) <= 0.5 then
                    probabilities[16] = 100
                else
                    probabilities[19] = 100
                end
                probabilities[15] = 100
            end
        elseif distance0 >= 3 then
            if actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[1] = 100
                probabilities[8] = 100
                probabilities[12] = 100
                probabilities[13] = 100
    
                probabilities[15] = 100
            else
                probabilities[13] = 100
    
                if actor:GetHpRate(TARGET_SELF) <= 0.5 then
                    probabilities[16] = 100
                else
                    probabilities[19] = 100
                end
                probabilities[15] = 0
                probabilities[20] = 0
            end
        elseif actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            probabilities[1] = 100
            probabilities[2] = 200
            probabilities[3] = 100
            probabilities[10] = 100

            if actor:GetHpRate(TARGET_SELF) <= 0.5 then
                probabilities[16] = 100
                probabilities[17] = 100
            else
                probabilities[19] = 100
                probabilities[18] = 100
            end
        else
            probabilities[2] = 100
            probabilities[3] = 100
            probabilities[9] = 100

            if actor:GetHpRate(TARGET_SELF) <= 0.5 then
                probabilities[16] = 100
            else
                probabilities[19] = 100
            end
        end
    end
    probabilities[1] = SetCoolTime(actor, goals, 3000, 10, probabilities[1], 1)
    probabilities[2] = SetCoolTime(actor, goals, 3001, 15, probabilities[2], 1)
    probabilities[3] = SetCoolTime(actor, goals, 3002, 10, probabilities[3], 1)
    probabilities[4] = SetCoolTime(actor, goals, 3004, 15, probabilities[4], 1)
    probabilities[5] = SetCoolTime(actor, goals, 3006, 13, probabilities[5], 1)
    probabilities[6] = SetCoolTime(actor, goals, 3007, 20, probabilities[6], 1)
    probabilities[7] = SetCoolTime(actor, goals, 3008, 15, probabilities[7], 1)
    probabilities[8] = SetCoolTime(actor, goals, 3009, 15, probabilities[8], 1)
    probabilities[9] = SetCoolTime(actor, goals, 3012, 7, probabilities[9], 1)
    probabilities[10] = SetCoolTime(actor, goals, 3015, 15, probabilities[10], 1)
    probabilities[11] = SetCoolTime(actor, goals, 3018, 15, probabilities[11], 1)
    probabilities[12] = SetCoolTime(actor, goals, 3019, 15, probabilities[12], 1)
    probabilities[13] = SetCoolTime(actor, goals, 3020, 20, probabilities[13], 0)
    probabilities[14] = SetCoolTime(actor, goals, 3025, 15, probabilities[14], 1)
    acts[1] = REGIST_FUNC(actor, goals, SpearDragonCultist_Act1)
    acts[2] = REGIST_FUNC(actor, goals, SpearDragonCultist_Act2)
    acts[3] = REGIST_FUNC(actor, goals, SpearDragonCultist_Act3)
    acts[4] = REGIST_FUNC(actor, goals, SpearDragonCultist_Act4)
    acts[5] = REGIST_FUNC(actor, goals, SpearDragonCultist_Act5)
    acts[6] = REGIST_FUNC(actor, goals, SpearDragonCultist_Act6)
    acts[7] = REGIST_FUNC(actor, goals, SpearDragonCultist_Act7)
    acts[8] = REGIST_FUNC(actor, goals, SpearDragonCultist_Act8)
    acts[9] = REGIST_FUNC(actor, goals, SpearDragonCultist_Act9)
    acts[10] = REGIST_FUNC(actor, goals, SpearDragonCultist_Act10)
    acts[11] = REGIST_FUNC(actor, goals, SpearDragonCultist_Act11)
    acts[12] = REGIST_FUNC(actor, goals, SpearDragonCultist_Act12)
    acts[13] = REGIST_FUNC(actor, goals, SpearDragonCultist_Act13)
    acts[14] = REGIST_FUNC(actor, goals, SpearDragonCultist_Act14)
    acts[15] = REGIST_FUNC(actor, goals, SpearDragonCultist_Act15)
    acts[16] = REGIST_FUNC(actor, goals, SpearDragonCultist_Act16)
    acts[17] = REGIST_FUNC(actor, goals, SpearDragonCultist_Act17)
    acts[18] = REGIST_FUNC(actor, goals, SpearDragonCultist_Act18)
    acts[19] = REGIST_FUNC(actor, goals, SpearDragonCultist_Act19)
    acts[20] = REGIST_FUNC(actor, goals, SpearDragonCultist_Act20)
    acts[21] = REGIST_FUNC(actor, goals, SpearDragonCultist_Act21)
    acts[22] = REGIST_FUNC(actor, goals, SpearDragonCultist_Act22)
    acts[23] = REGIST_FUNC(actor, goals, SpearDragonCultist_Act23)
    Common_Battle_Activate(actor, goals, probabilities, acts, REGIST_FUNC(actor, goals, SpearDragonCultist_ActAfter_AdjustSpace), f2_local0)
end

-- quadruple poke
function SpearDragonCultist_Act1(actor, goals, _)
    local f3_local0 = 6.5 - actor:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = f3_local0 + 0
    local f3_local2 = f3_local0 + 25
    local f3_local3 = 100
    local f3_local4 = 0
    local f3_local5 = 3
    local f3_local6 = 3
    Approach_Act_Flex(actor, goals, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    actor:GetRandam_Int(1, 100)
    local action = 3000
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF) + 999
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- swipe into backhop
function SpearDragonCultist_Act2(actor, goals, _)
    local f4_local0 = 4 - actor:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = f4_local0 + 0
    local f4_local2 = f4_local0 + 25
    local f4_local3 = 100
    local f4_local4 = 0
    local f4_local5 = 3
    local f4_local6 = 3
    Approach_Act_Flex(actor, goals, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local action = 3001
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF) + 999
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- uppercut into hilt poke
function SpearDragonCultist_Act3(actor, goals, _)
    local f5_local0 = 4 - actor:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = f5_local0 + 0
    local f5_local2 = f5_local0 + 25
    local f5_local3 = 100
    local f5_local4 = 0
    local f5_local5 = 3
    local f5_local6 = 3
    Approach_Act_Flex(actor, goals, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local action = 3002
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF) + 999
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- jump kick (stance)
function SpearDragonCultist_Act4(actor, goals, _)
    local f6_local0 = 5 - actor:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = f6_local0 + 0
    local f6_local2 = f6_local0 + 25
    local f6_local3 = 100
    local f6_local4 = 0
    local f6_local5 = 3
    local f6_local6 = 3
    Approach_Act_Flex(actor, goals, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local action = 3004
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF) + 999
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- run sideways and poke (stance)
function SpearDragonCultist_Act5(actor, goals, _)
    local f7_local0 = 5 - actor:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = f7_local0 + 0
    local f7_local2 = f7_local0 + 25
    local f7_local3 = 100
    local f7_local4 = 0
    local f7_local5 = 3
    local f7_local6 = 3
    Approach_Act_Flex(actor, goals, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local action = 3006
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF) + 999
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- uppercut into retreating hops (stance)
function SpearDragonCultist_Act6(arg0, goals, _)
    local f8_local0 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = f8_local0 + 0
    local f8_local2 = f8_local0 + 25
    local f8_local3 = 100
    local f8_local4 = 0
    local f8_local5 = 3
    local f8_local6 = 3
    Approach_Act_Flex(arg0, goals, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local action = 3007
    local success_distance = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- overhead swipe (stance)
function SpearDragonCultist_Act7(arg0, goals, _)
    local f9_local0 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = f9_local0 + 0
    local f9_local2 = f9_local0 + 25
    local f9_local3 = 100
    local f9_local4 = 0
    local f9_local5 = 3
    local f9_local6 = 3
    Approach_Act_Flex(arg0, goals, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local action = 3008
    local success_distance = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- running thrust
function SpearDragonCultist_Act8(arg0, goals, _)
    local f10_local0 = 12 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = f10_local0 + 0
    local f10_local2 = f10_local0 + 25
    local f10_local3 = 100
    local f10_local4 = 0
    local f10_local5 = 3
    local f10_local6 = 3
    Approach_Act_Flex(arg0, goals, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    local action = 3009
    local success_distance = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- back poke
function SpearDragonCultist_Act9(actor, goals, _)
    local action = 3012
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF) + 999
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- hilt swipe
function SpearDragonCultist_Act10(actor, goals, _)
    local f12_local0 = 12 - actor:GetMapHitRadius(TARGET_SELF)
    local f12_local1 = f12_local0 + 0
    local f12_local2 = f12_local0 + 25
    local f12_local3 = 100
    local f12_local4 = 0
    local f12_local5 = 3
    local f12_local6 = 3
    Approach_Act_Flex(actor, goals, f12_local0, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6)
    local action = 3015
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF) + 999
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- pole vault (stance)
function SpearDragonCultist_Act11(actor, goals, _)
    local f13_local0 = 9 - actor:GetMapHitRadius(TARGET_SELF)
    local f13_local1 = f13_local0 + 0
    local f13_local2 = f13_local0 + 25
    local f13_local3 = 100
    local f13_local4 = 0
    local f13_local5 = 3
    local f13_local6 = 3
    Approach_Act_Flex(actor, goals, f13_local0, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6)
    local action = 3018
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF) + 999
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- running thrust
function SpearDragonCultist_Act12(actor, goals, _)
    local f14_local0 = 10 - actor:GetMapHitRadius(TARGET_SELF)
    local f14_local1 = f14_local0 + 0
    local f14_local2 = f14_local0 + 25
    local f14_local3 = 100
    local f14_local4 = 0
    local f14_local5 = 3
    local f14_local6 = 3
    Approach_Act_Flex(actor, goals, f14_local0, f14_local1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6)
    local action = 3019
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF) + 999
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- forward hop uppercut
function SpearDragonCultist_Act13(actor, goals, _)
    local f15_local0 = 12 - actor:GetMapHitRadius(TARGET_SELF)
    local f15_local1 = f15_local0 + 0
    local f15_local2 = f15_local0 + 25
    local f15_local3 = 100
    local f15_local4 = 0
    local f15_local5 = 3
    local f15_local6 = 3
    Approach_Act_Flex(actor, goals, f15_local0, f15_local1, f15_local2, f15_local3, f15_local4, f15_local5, f15_local6)
    local action = 3020
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF) + 999
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- hilt swipe into run sideways and poke (stance)
function SpearDragonCultist_Act14(actor, goals, _)
    local f16_local0 = 4 - actor:GetMapHitRadius(TARGET_SELF)
    local f16_local1 = f16_local0 + 0
    local f16_local2 = f16_local0 + 25
    local f16_local3 = 100
    local f16_local4 = 0
    local f16_local5 = 3
    local f16_local6 = 3
    Approach_Act_Flex(actor, goals, f16_local0, f16_local1, f16_local2, f16_local3, f16_local4, f16_local5, f16_local6)
    local action = 3025
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF) + 999
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- front hop
function SpearDragonCultist_Act15(_, goals, _)
    goals:AddSubGoal(GOAL_COMMON_StepSafety, 3, 1, -1, -1, -1, TARGET_ENE_0, 0, 0, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- sidehops
function SpearDragonCultist_Act16(arg0, goals, _)
    local success_distance = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local turn_time_before = 0
    local front_decision_angle = 0
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, 3034, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    else
        goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, 3035, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- backhop
function SpearDragonCultist_Act17(_, goals, _)
    goals:AddSubGoal(GOAL_COMMON_StepSafety, 3, -1, 1, -1, -1, TARGET_ENE_0, 0, 0, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- backhop dodge
function SpearDragonCultist_Act18(actor, goals, _)
    local action = 3026
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF) + 999
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- sidehops short
function SpearDragonCultist_Act19(arg0, goals, _)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        goals:AddSubGoal(GOAL_COMMON_StepSafety, 3, -1, -1, 1, -1, TARGET_ENE_0, 0, 0, true)
    else
        goals:AddSubGoal(GOAL_COMMON_StepSafety, 3, -1, -1, -1, 1, TARGET_ENE_0, 0, 0, true)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- idle
function SpearDragonCultist_Act20(arg0, goals, _)
    goals:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- sidehops
function SpearDragonCultist_Act21(arg0, goals, _)
    local success_distance = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local turn_time_before = 0
    local front_decision_angle = 0
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, 3032, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    else
        goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, 3033, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- fronthop stance
function SpearDragonCultist_Act22(actor, goals, _)
    local action = 3030
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF) + 999
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

-- backhop stance
function SpearDragonCultist_Act23(actor, goals, _)
    local action = 3031
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF) + 999
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end


function SpearDragonCultist_ActAfter_AdjustSpace(_, goals, _)
    goals:AddSubGoal(GOAL_SpearDragonCultist_AfterAttackAct, 10)
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (_, _, _)
end

Goal.Interrupt = function (_, actor, goals)
    actor:GetDist(TARGET_ENE_0)
    local success_distance = 5 - actor:GetMapHitRadius(TARGET_SELF)
    local turn_time_before = 0
    local front_decision_angle = 0
    local random = actor:GetRandam_Int(1, 100)
    if actor:HasSpecialEffectId(TARGET_SELF, 5110) == true or actor:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        return false
    elseif actor:IsInterupt(INTERUPT_ActivateSpecialEffect) and actor:GetSpecialEffectActivateInterruptId(5040) then
        if actor:HasSpecialEffectId(TARGET_ENE_0, 6992) == false or actor:HasSpecialEffectId(TARGET_ENE_0, 30) == false then
            if actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 5) then
                if random <= 10 then
                    goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3031, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 20 then
                    goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3032, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 30 then
                    goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 50 then
                    goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif random <= 70 then
                    goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3017, TARGET_ENE_0, 999, 0, 0)
                    return true
                else 
                    return true
                end
            else
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3030, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        end
    elseif actor:IsInterupt(INTERUPT_ActivateSpecialEffect) and actor:GetSpecialEffectActivateInterruptId(5041) then
        if actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 5) then
            goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            return true
        end
    elseif actor:IsInterupt(INTERUPT_ActivateSpecialEffect) and actor:GetSpecialEffectActivateInterruptId(5043) then
        if actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 270, 180, 8) then
            goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            return true
        end
    elseif actor:IsInterupt(INTERUPT_ActivateSpecialEffect) and actor:GetSpecialEffectActivateInterruptId(5044) then
        if random <= 10 then
            if actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 5) then
                return true
            elseif actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 12) then
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        else
            return true
        end
    elseif actor:IsInterupt(INTERUPT_ActivateSpecialEffect) and actor:GetSpecialEffectActivateInterruptId(5045) then
        if random <= 10 then
            if actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 5) then
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 12) then
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        else
            return true
        end
    elseif actor:IsInterupt(INTERUPT_ActivateSpecialEffect) and actor:GetSpecialEffectActivateInterruptId(5046) then
        if actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 5) then
            if random <= 20 then
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3013, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif random <= 50 then
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, 0, 0)
                return true
            else 
                return true
            end
        else
            return true
        end
    elseif actor:IsInterupt(INTERUPT_ActivateSpecialEffect) and actor:GetSpecialEffectActivateInterruptId(5047) then
        if actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 8) then
            if random <= 40 then
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0)
                return true
            else 
                return true
            end
        else
            return true
        end
    elseif actor:IsInterupt(INTERUPT_ActivateSpecialEffect) and actor:GetSpecialEffectActivateInterruptId(5048) then
        if actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 4) then
            return true
        elseif actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 12) then
            goals:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    return false
end

RegisterTableGoal(GOAL_SpearDragonCultist_AfterAttackAct, "SpearDragonCultist_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_SpearDragonCultist_AfterAttackAct, true)

Goal.Activate = function (_, _, _)
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end
