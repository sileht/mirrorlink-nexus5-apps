.class public Lcom/lge/android/atservice/SetcomSettingsHandler;
.super Lcom/lge/android/atservice/ATCmdHandler;
.source "SetcomSettingsHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SetcomSettingsHandler"


# instance fields
.field final displaySettings:[Ljava/lang/String;

.field final generalSettings:[Ljava/lang/String;

.field final generalSettingsSecure:[Ljava/lang/String;

.field public mContext:Landroid/content/Context;

.field final networksSettings:[Ljava/lang/String;

.field final networksSettingsSecure:[Ljava/lang/String;

.field final soundSettings:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    invoke-direct {p0}, Lcom/lge/android/atservice/ATCmdHandler;-><init>()V

    .line 21
    new-array v0, v6, [Ljava/lang/String;

    .line 22
    const-string/jumbo v1, "wifi_sleep_policy"

    aput-object v1, v0, v3

    .line 23
    const-string/jumbo v1, "airplane_mode_on"

    aput-object v1, v0, v4

    .line 24
    const-string/jumbo v1, "data_roaming"

    aput-object v1, v0, v5

    .line 21
    iput-object v0, p0, Lcom/lge/android/atservice/SetcomSettingsHandler;->networksSettings:[Ljava/lang/String;

    .line 26
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 27
    const-string/jumbo v1, "bluetooth_on"

    aput-object v1, v0, v3

    .line 28
    const-string/jumbo v1, "wifi_on"

    aput-object v1, v0, v4

    .line 29
    const-string/jumbo v1, "wifi_networks_available_notification_on"

    aput-object v1, v0, v5

    .line 30
    const-string/jumbo v1, "data_roaming_enhanced_4g_lte_mode"

    aput-object v1, v0, v6

    .line 31
    const-string/jumbo v1, "mobile_data"

    aput-object v1, v0, v2

    .line 26
    iput-object v0, p0, Lcom/lge/android/atservice/SetcomSettingsHandler;->networksSettingsSecure:[Ljava/lang/String;

    .line 33
    new-array v0, v2, [Ljava/lang/String;

    .line 34
    const-string/jumbo v1, "dtmf_tone"

    aput-object v1, v0, v3

    .line 35
    const-string/jumbo v1, "haptic_feedback_enabled"

    aput-object v1, v0, v4

    .line 36
    const-string/jumbo v1, "sound_effects_enabled"

    aput-object v1, v0, v5

    .line 37
    const-string/jumbo v1, "mode_ringer"

    aput-object v1, v0, v6

    .line 33
    iput-object v0, p0, Lcom/lge/android/atservice/SetcomSettingsHandler;->soundSettings:[Ljava/lang/String;

    .line 39
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 40
    const-string/jumbo v1, "accelerometer_rotation"

    aput-object v1, v0, v3

    .line 41
    const-string/jumbo v1, "screen_brightness"

    aput-object v1, v0, v4

    .line 42
    const-string/jumbo v1, "screen_brightness_mode"

    aput-object v1, v0, v5

    .line 43
    const-string/jumbo v1, "screen_off_timeout"

    aput-object v1, v0, v6

    .line 44
    const-string/jumbo v1, "keep_screen_on"

    aput-object v1, v0, v2

    .line 45
    const-string/jumbo v1, "front_key_light_prevalue"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 39
    iput-object v0, p0, Lcom/lge/android/atservice/SetcomSettingsHandler;->displaySettings:[Ljava/lang/String;

    .line 47
    new-array v0, v6, [Ljava/lang/String;

    .line 48
    const-string/jumbo v1, "auto_time"

    aput-object v1, v0, v3

    .line 49
    const-string/jumbo v1, "auto_time_zone"

    aput-object v1, v0, v4

    .line 50
    const-string/jumbo v1, "time_12_24"

    aput-object v1, v0, v5

    .line 47
    iput-object v0, p0, Lcom/lge/android/atservice/SetcomSettingsHandler;->generalSettings:[Ljava/lang/String;

    .line 52
    new-array v0, v4, [Ljava/lang/String;

    .line 53
    const-string/jumbo v1, "install_non_market_apps"

    aput-object v1, v0, v3

    .line 52
    iput-object v0, p0, Lcom/lge/android/atservice/SetcomSettingsHandler;->generalSettingsSecure:[Ljava/lang/String;

    .line 60
    iput-object p1, p0, Lcom/lge/android/atservice/SetcomSettingsHandler;->mContext:Landroid/content/Context;

    .line 59
    return-void
.end method

.method private makeElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 172
    const-string/jumbo v0, "<%s>%s</%s>"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private makeXML(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "xmlcontent"    # Ljava/lang/String;
    .param p2, "root"    # Ljava/lang/String;

    .prologue
    .line 117
    const-string/jumbo v0, "<?xml version=\"1.0\"?><%s>%s</%s>"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private queryNfcSetting()Ljava/lang/String;
    .registers 10

    .prologue
    .line 146
    const-string/jumbo v7, "SetcomSettingsHandler"

    const-string/jumbo v8, "queryNfcSetting()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const-string/jumbo v0, "nfc_on"

    .line 148
    .local v0, "NFC_ON":Ljava/lang/String;
    const/4 v1, -0x1

    .line 150
    .local v1, "isNfcEnabled":I
    iget-object v7, p0, Lcom/lge/android/atservice/SetcomSettingsHandler;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_3a

    .line 152
    iget-object v7, p0, Lcom/lge/android/atservice/SetcomSettingsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 153
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v7, "android.hardware.nfc"

    invoke-virtual {v5, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    .line 154
    .local v2, "isSupportNFC":Z
    iget-object v7, p0, Lcom/lge/android/atservice/SetcomSettingsHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "nfc"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/nfc/NfcManager;

    .line 156
    .local v4, "mNfcManager":Landroid/nfc/NfcManager;
    if-eqz v2, :cond_3a

    if-eqz v4, :cond_3a

    .line 157
    invoke-virtual {v4}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v3

    .line 159
    .local v3, "mNfcAdapter":Landroid/nfc/NfcAdapter;
    if-eqz v3, :cond_3a

    .line 160
    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_52

    const/4 v1, 0x1

    .line 165
    .end local v2    # "isSupportNFC":Z
    .end local v3    # "mNfcAdapter":Landroid/nfc/NfcAdapter;
    .end local v4    # "mNfcManager":Landroid/nfc/NfcManager;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    :cond_3a
    :goto_3a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .local v6, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v7, "nfc_on"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/lge/android/atservice/SetcomSettingsHandler;->makeElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 160
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .restart local v2    # "isSupportNFC":Z
    .restart local v3    # "mNfcAdapter":Landroid/nfc/NfcAdapter;
    .restart local v4    # "mNfcManager":Landroid/nfc/NfcManager;
    .restart local v5    # "pm":Landroid/content/pm/PackageManager;
    :cond_52
    const/4 v1, 0x0

    goto :goto_3a
.end method

.method private querySecureSetting(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/lge/android/atservice/SetcomSettingsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private querySecureSettings([Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "names"    # [Ljava/lang/String;

    .prologue
    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    array-length v3, p1

    :goto_7
    if-ge v2, v3, :cond_19

    aget-object v0, p1, v2

    .line 131
    .local v0, "name":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/lge/android/atservice/SetcomSettingsHandler;->querySecureSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/lge/android/atservice/SetcomSettingsHandler;->makeElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 133
    .end local v0    # "name":Ljava/lang/String;
    :cond_19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private querySettings(Ljava/lang/String;)V
    .registers 6
    .param p1, "xmlpath"    # Ljava/lang/String;

    .prologue
    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .local v1, "settings":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/lge/android/atservice/SetcomSettingsHandler;->networksSettings:[Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/lge/android/atservice/SetcomSettingsHandler;->querySystemSettings([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-object v2, p0, Lcom/lge/android/atservice/SetcomSettingsHandler;->networksSettingsSecure:[Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/lge/android/atservice/SetcomSettingsHandler;->querySecureSettings([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const-string/jumbo v2, "apn"

    const-string/jumbo v3, "0"

    invoke-direct {p0, v2, v3}, Lcom/lge/android/atservice/SetcomSettingsHandler;->makeElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-direct {p0}, Lcom/lge/android/atservice/SetcomSettingsHandler;->queryNfcSetting()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const-string/jumbo v2, "networks"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/lge/android/atservice/SetcomSettingsHandler;->makeElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "sb":Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/lge/android/atservice/SetcomSettingsHandler;->soundSettings:[Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/lge/android/atservice/SetcomSettingsHandler;->querySystemSettings([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string/jumbo v2, "sound"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/lge/android/atservice/SetcomSettingsHandler;->makeElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "sb":Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/lge/android/atservice/SetcomSettingsHandler;->displaySettings:[Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/lge/android/atservice/SetcomSettingsHandler;->querySystemSettings([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const-string/jumbo v2, "display"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/lge/android/atservice/SetcomSettingsHandler;->makeElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "sb":Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/lge/android/atservice/SetcomSettingsHandler;->generalSettings:[Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/lge/android/atservice/SetcomSettingsHandler;->querySystemSettings([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget-object v2, p0, Lcom/lge/android/atservice/SetcomSettingsHandler;->generalSettingsSecure:[Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/lge/android/atservice/SetcomSettingsHandler;->querySecureSettings([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    const-string/jumbo v2, "general"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/lge/android/atservice/SetcomSettingsHandler;->makeElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "settings"

    invoke-direct {p0, v2, v3}, Lcom/lge/android/atservice/SetcomSettingsHandler;->makeXML(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/lge/android/atservice/SetcomSettingsHandler;->save(Ljava/lang/String;Ljava/lang/String;)Z

    .line 70
    return-void
.end method

.method private querySystemSetting(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/lge/android/atservice/SetcomSettingsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private querySystemSettings([Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "names"    # [Ljava/lang/String;

    .prologue
    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    array-length v3, p1

    :goto_7
    if-ge v2, v3, :cond_19

    aget-object v0, p1, v2

    .line 123
    .local v0, "name":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/lge/android/atservice/SetcomSettingsHandler;->querySystemSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/lge/android/atservice/SetcomSettingsHandler;->makeElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 125
    .end local v0    # "name":Ljava/lang/String;
    :cond_19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private save(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "xml"    # Ljava/lang/String;

    .prologue
    .line 99
    const/4 v1, 0x0

    .line 102
    .local v1, "f":Ljava/io/FileWriter;
    :try_start_1
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_1a

    .line 104
    .end local v1    # "f":Ljava/io/FileWriter;
    .local v2, "f":Ljava/io/FileWriter;
    :try_start_6
    invoke-virtual {v2, p2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_e

    .line 106
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    .line 113
    const/4 v3, 0x1

    return v3

    .line 105
    :catchall_e
    move-exception v3

    .line 106
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    .line 105
    throw v3
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_13} :catch_13

    .line 108
    :catch_13
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move-object v1, v2

    .line 109
    .end local v2    # "f":Ljava/io/FileWriter;
    :goto_15
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 110
    const/4 v3, 0x0

    return v3

    .line 108
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "f":Ljava/io/FileWriter;
    :catch_1a
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_15
.end method


# virtual methods
.method public handleCmd([Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 64
    const/4 v1, 0x0

    .line 65
    .local v1, "responseString":Ljava/lang/String;
    const-string/jumbo v0, "/mnt/sdcard/settings_lge.xml"

    .line 66
    .local v0, "SETTINGS_XML":Ljava/lang/String;
    const-string/jumbo v2, "/mnt/sdcard/settings_lge.xml"

    invoke-direct {p0, v2}, Lcom/lge/android/atservice/SetcomSettingsHandler;->querySettings(Ljava/lang/String;)V

    .line 67
    const-string/jumbo v2, "/mnt/sdcard/settings_lge.xml"

    return-object v2
.end method
