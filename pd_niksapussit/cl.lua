RegisterNetEvent('PussiHuuleen_Client')
AddEventHandler('PussiHuuleen_Client', function()
    if lib.progressCircle({
        duration = 2200,
        position = 'bottom',
        label = PD.ProgressTeksti,
        useWhileDead = false,
        canCancel = false,
        disable = {
            car = true,
            move = true,
            sprint = true,
        },
        anim = {
            dict = 'mp_suicide',
            clip = 'pill_fp'
        },
    }) then VITTUKUSATII() end
end)

function VITTUKUSATII()
    if PD.TajuChance == 0 then
        lib.notify({title = 'Nikotiinipussi', description = 'Laitoit nikotiinipussin huuleen.', showDuration = true, type = 'info'})
    else
        local chance = math.random(1, 100)
        if chance >= 1 and chance <= PD.TajuChance then
            SetPedToRagdoll(GetPlayerPed(-1), 8000, 8000, 0, 0, 0, 0)
            lib.notify({title = 'Nikotiinipussi', description = 'Nikotiinipussi vei sinulta tajun!', showDuration = true, type = 'info'})
            SetTimecycleModifier("REDMIST_blend")
            ShakeGameplayCam("FAMILY5_DRUG_TRIP_SHAKE", 1.0)
            Wait(5000)
            SetTimecycleModifier("hud_def_desat_Trevor")
            Wait(2500)
            SetTimecycleModifier("")
            SetTransitionTimecycleModifier("")
            StopGameplayCamShaking()
        else
            lib.notify({title = 'Nikotiinipussi', description = 'Laitoit nikotiinipussin huuleen.', showDuration = true, type = 'info'})
        end
    end
end