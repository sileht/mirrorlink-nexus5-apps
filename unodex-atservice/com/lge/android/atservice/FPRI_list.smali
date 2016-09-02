.class public Lcom/lge/android/atservice/FPRI_list;
.super Ljava/lang/Object;
.source "FPRI_list.java"


# static fields
.field private static final CN_list:[Ljava/lang/String;

.field private static final COMMON_List:[Ljava/lang/String;

.field private static final Canada_list:[Ljava/lang/String;

.field private static final EU_list:[Ljava/lang/String;

.field public static Fpri_skip_list:[Ljava/lang/String; = null

.field private static final GLOBAL_list:[Ljava/lang/String;

.field private static final JP_list:[Ljava/lang/String;

.field private static final KR_list:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "DATABASE_CRC"

.field private static final US_att_list:[Ljava/lang/String;

.field private static final US_crk_list:[Ljava/lang/String;

.field private static final US_list:[Ljava/lang/String;

.field private static final US_mpcs_list:[Ljava/lang/String;

.field private static final US_spr_list:[Ljava/lang/String;

.field private static final US_tmo_list:[Ljava/lang/String;

.field private static final US_trf_list:[Ljava/lang/String;

.field private static final US_usc_list:[Ljava/lang/String;

.field private static final US_vzw_list:[Ljava/lang/String;

.field private static sCountryName:Ljava/lang/String;

.field private static sTargetName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 18
    const-string/jumbo v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/android/atservice/FPRI_list;->sTargetName:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, "ro.build.target_country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/android/atservice/FPRI_list;->sCountryName:Ljava/lang/String;

    .line 67
    const/16 v0, 0x1d

    new-array v0, v0, [Ljava/lang/String;

    .line 68
    const-string/jumbo v1, "android_id"

    aput-object v1, v0, v3

    .line 69
    const-string/jumbo v1, "assist_dial_ota_sid"

    aput-object v1, v0, v4

    .line 70
    const-string/jumbo v1, "bluetooth_address"

    aput-object v1, v0, v5

    .line 71
    const-string/jumbo v1, "check_night_mode"

    aput-object v1, v0, v6

    .line 72
    const-string/jumbo v1, "current_mcc"

    aput-object v1, v0, v7

    .line 73
    const-string/jumbo v1, "factroy_reset_date"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 74
    const-string/jumbo v1, "intent_old_mcc"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 75
    const-string/jumbo v1, "lge_lockscreen_wallpaper_index"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 76
    const-string/jumbo v1, "navigation_bar_theme"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 77
    const-string/jumbo v1, "pcsuite_wifi_connection_status"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 78
    const-string/jumbo v1, "phoneAppLoaded"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 79
    const-string/jumbo v1, "quiet_time_before_status"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 80
    const-string/jumbo v1, "quiet_time_before_status"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 81
    const-string/jumbo v1, "quiet_time_change_count"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 82
    const-string/jumbo v1, "quiet_time_change_count"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 83
    const-string/jumbo v1, "quiet_time_end_start_time"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 84
    const-string/jumbo v1, "quiet_time_start_time"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 85
    const-string/jumbo v1, "quiet_timechanged_status"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 86
    const-string/jumbo v1, "quiet_timechanged_status"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 87
    const-string/jumbo v1, "Retail_Mode"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 88
    const-string/jumbo v1, "shop_mode"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 89
    const-string/jumbo v1, "shop_mode_check"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 90
    const-string/jumbo v1, "user_haptic_feedback_enabled"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 91
    const-string/jumbo v1, "wifi_passpoint_connection"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 92
    const-string/jumbo v1, "android.msg.mms.max.count"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 93
    const-string/jumbo v1, "android.msg.old.message.delete"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 94
    const-string/jumbo v1, "android.msg.sms.max.count"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 95
    const-string/jumbo v1, "user_knockon_length_change"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 96
    const-string/jumbo v1, "user_rotation"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 67
    sput-object v0, Lcom/lge/android/atservice/FPRI_list;->COMMON_List:[Ljava/lang/String;

    .line 99
    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/lge/android/atservice/FPRI_list;->KR_list:[Ljava/lang/String;

    .line 101
    new-array v0, v4, [Ljava/lang/String;

    .line 102
    const-string/jumbo v1, "bd_setting_i"

    aput-object v1, v0, v3

    .line 101
    sput-object v0, Lcom/lge/android/atservice/FPRI_list;->CN_list:[Ljava/lang/String;

    .line 105
    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/lge/android/atservice/FPRI_list;->JP_list:[Ljava/lang/String;

    .line 107
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 108
    const-string/jumbo v1, "wifi_country_code"

    aput-object v1, v0, v3

    .line 109
    const-string/jumbo v1, "microphone_mute"

    aput-object v1, v0, v4

    .line 110
    const-string/jumbo v1, "NfcUIMinit"

    aput-object v1, v0, v5

    .line 111
    const-string/jumbo v1, "multi_sim_sms"

    aput-object v1, v0, v6

    .line 112
    const-string/jumbo v1, "multi_sim_default_sub"

    aput-object v1, v0, v7

    .line 113
    const-string/jumbo v1, "multi_sim_data_call"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 114
    const-string/jumbo v1, "tether_dun_required"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 107
    sput-object v0, Lcom/lge/android/atservice/FPRI_list;->US_list:[Ljava/lang/String;

    .line 117
    new-array v0, v7, [Ljava/lang/String;

    .line 118
    const-string/jumbo v1, "wifi_offloading_timer_reminder"

    aput-object v1, v0, v3

    .line 119
    const-string/jumbo v1, "microphone_mute"

    aput-object v1, v0, v4

    .line 120
    const-string/jumbo v1, "assist_dial_ota_mcc"

    aput-object v1, v0, v5

    .line 121
    const-string/jumbo v1, "ssid_update_completed"

    aput-object v1, v0, v6

    .line 117
    sput-object v0, Lcom/lge/android/atservice/FPRI_list;->US_vzw_list:[Ljava/lang/String;

    .line 124
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    .line 125
    const-string/jumbo v1, "android.msg.attachment.max.size"

    aput-object v1, v0, v3

    .line 126
    const-string/jumbo v1, "android.msg.camera.max.video.resolution"

    aput-object v1, v0, v4

    .line 127
    const-string/jumbo v1, "android.msg.mms.max.size"

    aput-object v1, v0, v5

    .line 128
    const-string/jumbo v1, "android.msg.mms.uaprofile"

    aput-object v1, v0, v6

    .line 129
    const-string/jumbo v1, "android.msg.mms.useragent"

    aput-object v1, v0, v7

    .line 130
    const-string/jumbo v1, "android.msg.recipient.max.size"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 131
    const-string/jumbo v1, "android.msg.vobject.max.size"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 132
    const-string/jumbo v1, "com.asurion.android.mobilerecovery.attandroid_owner_userId"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 133
    const-string/jumbo v1, "ssid_update_done"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 134
    const-string/jumbo v1, "vvm_att_setup_completed"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 124
    sput-object v0, Lcom/lge/android/atservice/FPRI_list;->US_att_list:[Ljava/lang/String;

    .line 136
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    .line 137
    const-string/jumbo v1, "android.msg.attachment.max.size"

    aput-object v1, v0, v3

    .line 138
    const-string/jumbo v1, "android.msg.camera.max.video.resolution"

    aput-object v1, v0, v4

    .line 139
    const-string/jumbo v1, "android.msg.mms.max.size"

    aput-object v1, v0, v5

    .line 140
    const-string/jumbo v1, "android.msg.mms.uaprofile"

    aput-object v1, v0, v6

    .line 141
    const-string/jumbo v1, "android.msg.mms.useragent"

    aput-object v1, v0, v7

    .line 142
    const-string/jumbo v1, "android.msg.recipient.max.size"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 143
    const-string/jumbo v1, "android.msg.vobject.max.size"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 144
    const-string/jumbo v1, "ssid_update_complete"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 136
    sput-object v0, Lcom/lge/android/atservice/FPRI_list;->US_crk_list:[Ljava/lang/String;

    .line 146
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    .line 147
    const-string/jumbo v1, "wifi_chameleon_roaming_type"

    aput-object v1, v0, v3

    .line 148
    const-string/jumbo v1, "cbox_international_sms"

    aput-object v1, v0, v4

    .line 149
    const-string/jumbo v1, "cbox_international_sms_forced"

    aput-object v1, v0, v5

    .line 150
    const-string/jumbo v1, "rguard_domestic_data"

    aput-object v1, v0, v6

    .line 151
    const-string/jumbo v1, "rguard_domestic_data_forced"

    aput-object v1, v0, v7

    .line 152
    const-string/jumbo v1, "rguard_domestic_voice"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 153
    const-string/jumbo v1, "rguard_domestic_voice_forced"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 154
    const-string/jumbo v1, "rguard_international_data"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 155
    const-string/jumbo v1, "rguard_international_data_forced"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 156
    const-string/jumbo v1, "rguard_international_voice"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 157
    const-string/jumbo v1, "rguard_international_voice_forced"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 158
    const-string/jumbo v1, "roaming_mode_domestic_data"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 159
    const-string/jumbo v1, "roaming_mode_domestic_data_forced"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 160
    const-string/jumbo v1, "roaming_mode_domestic_voice"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 161
    const-string/jumbo v1, "roaming_mode_domestic_voice_forced"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 162
    const-string/jumbo v1, "roaming_mode_international_data"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 163
    const-string/jumbo v1, "roaming_mode_international_data_forced"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 164
    const-string/jumbo v1, "roaming_mode_international_voice"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 165
    const-string/jumbo v1, "roaming_mode_international_voice_forced"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 166
    const-string/jumbo v1, "assist_dial_ota_mcc"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 167
    const-string/jumbo v1, "ssid_update_completed"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 168
    const-string/jumbo v1, "contact_mcc_value"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 169
    const-string/jumbo v1, "contact_mnc_value"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 170
    const-string/jumbo v1, "multi_sim_voice_call"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 146
    sput-object v0, Lcom/lge/android/atservice/FPRI_list;->US_spr_list:[Ljava/lang/String;

    .line 173
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 174
    const-string/jumbo v1, "android.msg.attachment.max.size"

    aput-object v1, v0, v3

    .line 175
    const-string/jumbo v1, "android.msg.camera.max.video.resolution"

    aput-object v1, v0, v4

    .line 176
    const-string/jumbo v1, "android.msg.mms.max.size"

    aput-object v1, v0, v5

    .line 177
    const-string/jumbo v1, "android.msg.mms.uaprofile"

    aput-object v1, v0, v6

    .line 178
    const-string/jumbo v1, "android.msg.recipient.max.size"

    aput-object v1, v0, v7

    .line 179
    const-string/jumbo v1, "android.msg.vobject.max.size"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 173
    sput-object v0, Lcom/lge/android/atservice/FPRI_list;->US_trf_list:[Ljava/lang/String;

    .line 182
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 183
    const-string/jumbo v1, "wifi_ap_power_mode_high_with_usb"

    aput-object v1, v0, v3

    .line 184
    const-string/jumbo v1, "android.msg.attachment.max.size"

    aput-object v1, v0, v4

    .line 185
    const-string/jumbo v1, "android.msg.mms.max.size"

    aput-object v1, v0, v5

    .line 186
    const-string/jumbo v1, "android.msg.mms.uaprofile"

    aput-object v1, v0, v6

    .line 187
    const-string/jumbo v1, "android.msg.recipient.max.size"

    aput-object v1, v0, v7

    .line 188
    const-string/jumbo v1, "android.msg.vobject.max.size"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 182
    sput-object v0, Lcom/lge/android/atservice/FPRI_list;->US_tmo_list:[Ljava/lang/String;

    .line 191
    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/lge/android/atservice/FPRI_list;->US_usc_list:[Ljava/lang/String;

    .line 193
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 194
    const-string/jumbo v1, "android.msg.attachment.max.size"

    aput-object v1, v0, v3

    .line 195
    const-string/jumbo v1, "android.msg.mms.max.size"

    aput-object v1, v0, v4

    .line 196
    const-string/jumbo v1, "android.msg.mms.uaprofile"

    aput-object v1, v0, v5

    .line 197
    const-string/jumbo v1, "android.msg.recipient.max.size"

    aput-object v1, v0, v6

    .line 198
    const-string/jumbo v1, "android.msg.vobject.max.size"

    aput-object v1, v0, v7

    .line 193
    sput-object v0, Lcom/lge/android/atservice/FPRI_list;->US_mpcs_list:[Ljava/lang/String;

    .line 200
    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/lge/android/atservice/FPRI_list;->EU_list:[Ljava/lang/String;

    .line 202
    new-array v0, v4, [Ljava/lang/String;

    .line 203
    const-string/jumbo v1, "auto_reply_mode_message_content"

    aput-object v1, v0, v3

    .line 202
    sput-object v0, Lcom/lge/android/atservice/FPRI_list;->GLOBAL_list:[Ljava/lang/String;

    .line 206
    new-array v0, v4, [Ljava/lang/String;

    .line 207
    const-string/jumbo v1, "NfcUIMinit"

    aput-object v1, v0, v3

    .line 206
    sput-object v0, Lcom/lge/android/atservice/FPRI_list;->Canada_list:[Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Make_fpri_list()V
    .registers 4

    .prologue
    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .local v0, "temp_list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lcom/lge/android/atservice/FPRI_list;->COMMON_List:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 27
    const-string/jumbo v1, "DATABASE_CRC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCrcBySettings: Target country is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/lge/android/atservice/FPRI_list;->sCountryName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    const-string/jumbo v1, "DATABASE_CRC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCrcBySettings: Target operator is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/lge/android/atservice/FPRI_list;->sTargetName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    sget-object v1, Lcom/lge/android/atservice/FPRI_list;->sCountryName:Ljava/lang/String;

    const-string/jumbo v2, "KR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 31
    sget-object v1, Lcom/lge/android/atservice/FPRI_list;->KR_list:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 63
    :cond_5a
    :goto_5a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    sput-object v1, Lcom/lge/android/atservice/FPRI_list;->Fpri_skip_list:[Ljava/lang/String;

    .line 23
    return-void

    .line 32
    :cond_69
    sget-object v1, Lcom/lge/android/atservice/FPRI_list;->sCountryName:Ljava/lang/String;

    const-string/jumbo v2, "CN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 33
    sget-object v1, Lcom/lge/android/atservice/FPRI_list;->CN_list:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_5a

    .line 34
    :cond_7e
    sget-object v1, Lcom/lge/android/atservice/FPRI_list;->sCountryName:Ljava/lang/String;

    const-string/jumbo v2, "JP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_93

    .line 35
    sget-object v1, Lcom/lge/android/atservice/FPRI_list;->JP_list:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_5a

    .line 36
    :cond_93
    sget-object v1, Lcom/lge/android/atservice/FPRI_list;->sCountryName:Ljava/lang/String;

    const-string/jumbo v2, "US"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_155

    .line 37
    sget-object v1, Lcom/lge/android/atservice/FPRI_list;->US_list:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 38
    sget-object v1, Lcom/lge/android/atservice/FPRI_list;->sTargetName:Ljava/lang/String;

    const-string/jumbo v2, "VZW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bc

    .line 39
    sget-object v1, Lcom/lge/android/atservice/FPRI_list;->US_vzw_list:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_5a

    .line 40
    :cond_bc
    sget-object v1, Lcom/lge/android/atservice/FPRI_list;->sTargetName:Ljava/lang/String;

    const-string/jumbo v2, "ATT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d1

    .line 41
    sget-object v1, Lcom/lge/android/atservice/FPRI_list;->US_att_list:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_5a

    .line 42
    :cond_d1
    sget-object v1, Lcom/lge/android/atservice/FPRI_list;->sTargetName:Ljava/lang/String;

    const-string/jumbo v2, "SPR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e7

    .line 43
    sget-object v1, Lcom/lge/android/atservice/FPRI_list;->US_spr_list:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_5a

    .line 44
    :cond_e7
    sget-object v1, Lcom/lge/android/atservice/FPRI_list;->sTargetName:Ljava/lang/String;

    const-string/jumbo v2, "TRF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fd

    .line 45
    sget-object v1, Lcom/lge/android/atservice/FPRI_list;->US_trf_list:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_5a

    .line 46
    :cond_fd
    sget-object v1, Lcom/lge/android/atservice/FPRI_list;->sTargetName:Ljava/lang/String;

    const-string/jumbo v2, "TMO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_113

    .line 47
    sget-object v1, Lcom/lge/android/atservice/FPRI_list;->US_tmo_list:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_5a

    .line 48
    :cond_113
    sget-object v1, Lcom/lge/android/atservice/FPRI_list;->sTargetName:Ljava/lang/String;

    const-string/jumbo v2, "USC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_129

    .line 49
    sget-object v1, Lcom/lge/android/atservice/FPRI_list;->US_usc_list:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_5a

    .line 50
    :cond_129
    sget-object v1, Lcom/lge/android/atservice/FPRI_list;->sTargetName:Ljava/lang/String;

    const-string/jumbo v2, "MPCS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13f

    .line 51
    sget-object v1, Lcom/lge/android/atservice/FPRI_list;->US_mpcs_list:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_5a

    .line 52
    :cond_13f
    sget-object v1, Lcom/lge/android/atservice/FPRI_list;->sTargetName:Ljava/lang/String;

    const-string/jumbo v2, "CRK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 53
    sget-object v1, Lcom/lge/android/atservice/FPRI_list;->US_crk_list:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_5a

    .line 55
    :cond_155
    sget-object v1, Lcom/lge/android/atservice/FPRI_list;->sCountryName:Ljava/lang/String;

    const-string/jumbo v2, "CA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16b

    .line 56
    sget-object v1, Lcom/lge/android/atservice/FPRI_list;->Canada_list:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_5a

    .line 57
    :cond_16b
    const-string/jumbo v1, "ro.build.sbp"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 58
    sget-object v1, Lcom/lge/android/atservice/FPRI_list;->GLOBAL_list:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_5a
.end method
