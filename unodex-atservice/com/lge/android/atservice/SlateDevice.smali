.class public Lcom/lge/android/atservice/SlateDevice;
.super Lcom/lge/android/atservice/Device;
.source "SlateDevice.java"


# static fields
.field private static final RSSI_TAG:Ljava/lang/String; = "GETRSSI"

.field private static final TAG:Ljava/lang/String; = "Slate Command"


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mContext:Landroid/content/Context;

.field protected mPhone:Landroid/telephony/TelephonyManager;

.field mServiceState:Landroid/telephony/ServiceState;

.field mSignalStrength:Landroid/telephony/SignalStrength;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/lge/android/atservice/Device;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 69
    iput-object p1, p0, Lcom/lge/android/atservice/SlateDevice;->mContext:Landroid/content/Context;

    .line 77
    const-string/jumbo v0, "Slate Command"

    const-string/jumbo v1, "SlateDevice()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void
.end method

.method private getFormattedKernelVersion()Ljava/lang/String;
    .registers 12

    .prologue
    .line 96
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    const-string/jumbo v9, "/proc/version"

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v9, 0x100

    invoke-direct {v5, v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_f} :catch_5f

    .line 98
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_f
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 99
    .local v4, "procVersionStr":Ljava/lang/String;
    if-nez v4, :cond_25

    .line 100
    const-string/jumbo v8, "Slate Command"

    const-string/jumbo v9, "procVersionStr is null "

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-string/jumbo v8, "Unavailable"
    :try_end_21
    .catchall {:try_start_f .. :try_end_21} :catchall_5a

    .line 104
    :try_start_21
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 101
    return-object v8

    .line 104
    :cond_25
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 108
    const-string/jumbo v0, "Linux version (\\S+) \\((\\S+?)\\) (?:\\(gcc.+? \\)) (#\\d+) (?:.*?)?((Sun|Mon|Tue|Wed|Thu|Fri|Sat).+)"

    .line 115
    .local v0, "PROC_VERSION_REGEX":Ljava/lang/String;
    const-string/jumbo v8, "Linux version (\\S+) \\((\\S+?)\\) (?:\\(gcc.+? \\)) (#\\d+) (?:.*?)?((Sun|Mon|Tue|Wed|Thu|Fri|Sat).+)"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 116
    .local v3, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 118
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-nez v8, :cond_6d

    .line 119
    const-string/jumbo v8, "Slate Command"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Regex did not match on /proc/version: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const-string/jumbo v8, "Unavailable"

    return-object v8

    .line 103
    .end local v0    # "PROC_VERSION_REGEX":Ljava/lang/String;
    .end local v2    # "m":Ljava/util/regex/Matcher;
    .end local v3    # "p":Ljava/util/regex/Pattern;
    .end local v4    # "procVersionStr":Ljava/lang/String;
    :catchall_5a
    move-exception v8

    .line 104
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 103
    throw v8
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_5f} :catch_5f

    .line 138
    .end local v5    # "reader":Ljava/io/BufferedReader;
    :catch_5f
    move-exception v1

    .line 139
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v8, "Slate Command"

    .line 140
    const-string/jumbo v9, "IO Exception when getting kernel version for Device Info screen"

    .line 139
    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    const-string/jumbo v8, "Unavailable"

    return-object v8

    .line 121
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "PROC_VERSION_REGEX":Ljava/lang/String;
    .restart local v2    # "m":Ljava/util/regex/Matcher;
    .restart local v3    # "p":Ljava/util/regex/Pattern;
    .restart local v4    # "procVersionStr":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :cond_6d
    :try_start_6d
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v8

    const/4 v9, 0x4

    if-ge v8, v9, :cond_9d

    .line 122
    const-string/jumbo v8, "Slate Command"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Regex match on /proc/version only returned "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 123
    const-string/jumbo v10, " groups"

    .line 122
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const-string/jumbo v8, "Unavailable"

    return-object v8

    .line 126
    :cond_9d
    const/4 v7, 0x0

    .line 127
    .local v7, "verInfo":Ljava/lang/String;
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_a9

    .line 128
    const-string/jumbo v8, "Unavailable"

    return-object v8

    .line 130
    :cond_a9
    new-instance v8, Ljava/lang/StringBuilder;

    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 132
    .local v7, "verInfo":Ljava/lang/String;
    const-string/jumbo v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 133
    .local v6, "strIndex":I
    if-lez v6, :cond_c5

    .line 134
    const/4 v8, 0x0

    invoke-virtual {v7, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_c4
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_c4} :catch_5f

    move-result-object v7

    .line 136
    :cond_c5
    return-object v7
.end method

.method private getRssiInfo()Ljava/lang/String;
    .registers 7

    .prologue
    .line 486
    const/4 v2, 0x0

    .line 487
    .local v2, "icd_rssi":I
    const/4 v0, 0x0

    .line 488
    .local v0, "icd_ecio":I
    const/4 v1, 0x0

    .line 489
    .local v1, "icd_iconLevel":I
    const/4 v3, 0x0

    .line 491
    .local v3, "isNoSvc":I
    iget-object v4, p0, Lcom/lge/android/atservice/SlateDevice;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/lge/android/atservice/LGATCMDService;

    iget-object v4, v4, Lcom/lge/android/atservice/LGATCMDService;->mSignalStrength:Landroid/telephony/SignalStrength;

    iput-object v4, p0, Lcom/lge/android/atservice/SlateDevice;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 492
    iget-object v4, p0, Lcom/lge/android/atservice/SlateDevice;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-nez v4, :cond_1d

    .line 493
    const-string/jumbo v4, "GETRSSI"

    const-string/jumbo v5, "mSignalStrength == null"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    const-string/jumbo v4, ""

    return-object v4

    .line 496
    :cond_1d
    iget-object v4, p0, Lcom/lge/android/atservice/SlateDevice;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v2

    .line 497
    iget-object v4, p0, Lcom/lge/android/atservice/SlateDevice;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v0

    .line 498
    iget-object v4, p0, Lcom/lge/android/atservice/SlateDevice;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v1

    .line 501
    iget-object v4, p0, Lcom/lge/android/atservice/SlateDevice;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/lge/android/atservice/LGATCMDService;

    iget-object v4, v4, Lcom/lge/android/atservice/LGATCMDService;->mServiceState:Landroid/telephony/ServiceState;

    iput-object v4, p0, Lcom/lge/android/atservice/SlateDevice;->mServiceState:Landroid/telephony/ServiceState;

    .line 502
    iget-object v4, p0, Lcom/lge/android/atservice/SlateDevice;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    if-eqz v4, :cond_4c

    .line 503
    const/4 v2, 0x0

    .line 504
    const/4 v0, 0x0

    .line 505
    const/4 v1, 0x0

    .line 506
    const/4 v3, 0x1

    .line 507
    const-string/jumbo v4, "GETRSSI"

    const-string/jumbo v5, "OUT_OF_SERVICE"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_4c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getStatus()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 693
    iget-object v3, p0, Lcom/lge/android/atservice/SlateDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "accelerometer_rotation"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 695
    .local v0, "status":I
    if-ne v0, v1, :cond_12

    :goto_11
    return v1

    :cond_12
    move v1, v2

    goto :goto_11
.end method


# virtual methods
.method public GetAPNList()Ljava/lang/String;
    .registers 8

    .prologue
    .line 172
    const/4 v3, 0x1

    .line 173
    .local v3, "process_result":Z
    const/4 v0, 0x0

    .line 174
    .local v0, "apnList":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .local v4, "verString":Ljava/lang/StringBuilder;
    const-string/jumbo v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v2

    .line 181
    .local v2, "mPhoneServiceEx":Lcom/lge/internal/telephony/ITelephonyEx;
    :try_start_12
    invoke-interface {v2}, Lcom/lge/internal/telephony/ITelephonyEx;->getAPNList()Ljava/lang/String;
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_1e

    move-result-object v0

    .line 186
    .end local v0    # "apnList":Ljava/lang/String;
    :goto_16
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 182
    .restart local v0    # "apnList":Ljava/lang/String;
    :catch_1e
    move-exception v1

    .line 183
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "Slate Command"

    const-string/jumbo v6, "[LG DATA] GetAPNList, file read error."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method

.method public GetUIScreenID()I
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 725
    const/4 v1, 0x0

    .line 727
    .local v1, "mActivityManager":Landroid/app/ActivityManager;
    iget-object v7, p0, Lcom/lge/android/atservice/SlateDevice;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "activity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "mActivityManager":Landroid/app/ActivityManager;
    check-cast v1, Landroid/app/ActivityManager;

    .line 728
    .local v1, "mActivityManager":Landroid/app/ActivityManager;
    invoke-virtual {v1, v10}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 729
    .local v3, "rt":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    .line 730
    .local v4, "runningTask":Ljava/lang/String;
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 732
    .local v6, "topActivityClassName":Ljava/lang/String;
    const-string/jumbo v7, "Slate Command"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "GetUIScreenID : runningTask = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    const-string/jumbo v7, "Slate Command"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "GetUIScreenID : topActivityClassName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :try_start_5e
    iget-object v7, p0, Lcom/lge/android/atservice/SlateDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "grid_view_hasfocus"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 737
    .local v0, "isGridViewHasFocus":I
    const-string/jumbo v7, "Slate Command"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "GetUIScreenID : isGridViewHasFocus = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_85
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_5e .. :try_end_85} :catch_ac

    .line 743
    :goto_85
    const-string/jumbo v7, "com.lge.launcher2.Launcher"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ba

    .line 744
    if-ne v0, v10, :cond_b8

    .line 745
    const/4 v2, 0x5

    .line 763
    .local v2, "process_result":I
    :goto_91
    const-string/jumbo v7, "Slate Command"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "GetUIScreenID : result = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    return v2

    .line 738
    .end local v0    # "isGridViewHasFocus":I
    .end local v2    # "process_result":I
    :catch_ac
    move-exception v5

    .line 739
    .local v5, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const/4 v0, 0x0

    .line 740
    .restart local v0    # "isGridViewHasFocus":I
    const-string/jumbo v7, "Slate Command"

    const-string/jumbo v8, "GetUIScreenID, SettingNotFoundException"

    invoke-static {v7, v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_85

    .line 747
    .end local v5    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_b8
    const/4 v2, 0x1

    .restart local v2    # "process_result":I
    goto :goto_91

    .line 749
    .end local v2    # "process_result":I
    :cond_ba
    const-string/jumbo v7, "ComponentInfo{com.android.settings/com.android.settings.Settings}"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c5

    .line 750
    const/4 v2, 0x2

    .restart local v2    # "process_result":I
    goto :goto_91

    .line 751
    .end local v2    # "process_result":I
    :cond_c5
    const-string/jumbo v7, "ComponentInfo{com.android.contacts/com.android.contacts.activities.DialtactsActivity}"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d0

    .line 752
    const/4 v2, 0x3

    .restart local v2    # "process_result":I
    goto :goto_91

    .line 753
    .end local v2    # "process_result":I
    :cond_d0
    const-string/jumbo v7, "ComponentInfo{com.android.browser/com.android.browser.BrowserActivity}"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_db

    .line 754
    const/4 v2, 0x4

    .restart local v2    # "process_result":I
    goto :goto_91

    .line 755
    .end local v2    # "process_result":I
    :cond_db
    const-string/jumbo v7, "ComponentInfo{com.android.settings/com.android.settings.SubSettings}"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e6

    .line 756
    const/4 v2, 0x6

    .restart local v2    # "process_result":I
    goto :goto_91

    .line 757
    .end local v2    # "process_result":I
    :cond_e6
    const-string/jumbo v7, "ComponentInfo{com.android.mms/com.android.mms.ui.ComposeMessageActivity}"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f1

    .line 758
    const/4 v2, 0x7

    .restart local v2    # "process_result":I
    goto :goto_91

    .line 760
    .end local v2    # "process_result":I
    :cond_f1
    const/4 v2, 0x0

    .restart local v2    # "process_result":I
    goto :goto_91
.end method

.method public finalize()V
    .registers 3

    .prologue
    .line 82
    const-string/jumbo v0, "GETRSSI"

    const-string/jumbo v1, "finalize()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void
.end method

.method public get4Gstatus()Z
    .registers 6

    .prologue
    .line 573
    :try_start_0
    iget-object v2, p0, Lcom/lge/android/atservice/SlateDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "preferred_network_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_2d

    move-result v0

    .line 580
    .local v0, "networkMode":I
    :goto_e
    const-string/jumbo v2, "Slate Command"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "fn get4Gstatus="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    invoke-virtual {p0, v0}, Lcom/lge/android/atservice/SlateDevice;->isLTEInclude(I)Z

    move-result v2

    return v2

    .line 576
    .end local v0    # "networkMode":I
    :catch_2d
    move-exception v1

    .line 577
    .local v1, "snfe":Ljava/lang/Exception;
    const/16 v0, 0x8

    .restart local v0    # "networkMode":I
    goto :goto_e
.end method

.method public getBacklightSetting()Ljava/lang/String;
    .registers 6

    .prologue
    .line 193
    const/4 v0, 0x0

    .line 196
    .local v0, "process_result":I
    :try_start_1
    iget-object v2, p0, Lcom/lge/android/atservice/SlateDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_off_timeout"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_31

    move-result v0

    .line 200
    :goto_e
    const-string/jumbo v2, "Slate Command"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getBacklightSetting : result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    sparse-switch v0, :sswitch_data_4e

    .line 228
    const/4 v0, -0x1

    .line 232
    :goto_2c
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 197
    :catch_31
    move-exception v1

    .line 198
    .local v1, "snfe":Ljava/lang/Exception;
    const/16 v0, 0x7530

    goto :goto_e

    .line 204
    .end local v1    # "snfe":Ljava/lang/Exception;
    :sswitch_35
    const/16 v0, 0xf

    .line 205
    goto :goto_2c

    .line 207
    :sswitch_38
    const/16 v0, 0x1e

    .line 208
    goto :goto_2c

    .line 210
    :sswitch_3b
    const/16 v0, 0x3c

    .line 211
    goto :goto_2c

    .line 213
    :sswitch_3e
    const/16 v0, 0x78

    .line 214
    goto :goto_2c

    .line 216
    :sswitch_41
    const/16 v0, 0x12c

    .line 217
    goto :goto_2c

    .line 219
    :sswitch_44
    const/16 v0, 0x258

    .line 220
    goto :goto_2c

    .line 222
    :sswitch_47
    const/16 v0, 0x384

    .line 223
    goto :goto_2c

    .line 225
    :sswitch_4a
    const/16 v0, 0x64

    .line 226
    goto :goto_2c

    .line 202
    nop

    :sswitch_data_4e
    .sparse-switch
        0x3a98 -> :sswitch_35
        0x7530 -> :sswitch_38
        0xea60 -> :sswitch_3b
        0x1d4c0 -> :sswitch_3e
        0x493e0 -> :sswitch_41
        0x927c0 -> :sswitch_44
        0xdbba0 -> :sswitch_47
        0x7fffffff -> :sswitch_4a
    .end sparse-switch
.end method

.method public getBluetoothStatus()I
    .registers 4

    .prologue
    .line 236
    const/4 v0, -0x1

    .line 238
    .local v0, "retVal":I
    iget-object v1, p0, Lcom/lge/android/atservice/SlateDevice;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_b

    .line 239
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/android/atservice/SlateDevice;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 242
    :cond_b
    iget-object v1, p0, Lcom/lge/android/atservice/SlateDevice;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 243
    iget-object v1, p0, Lcom/lge/android/atservice/SlateDevice;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v1

    const/16 v2, 0x17

    if-ne v1, v2, :cond_28

    .line 244
    const-string/jumbo v1, "Slate Command"

    const-string/jumbo v2, "getBluetoothStatus(): Bluetooth is turned on and discoverable (0x11)"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const/4 v0, 0x3

    .line 255
    :goto_27
    return v0

    .line 247
    :cond_28
    const-string/jumbo v1, "Slate Command"

    const-string/jumbo v2, "getBluetoothStatus(): Bluetooth is turned on, but is not discoverable (0x01)"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v0, 0x1

    goto :goto_27

    .line 251
    :cond_33
    const-string/jumbo v1, "Slate Command"

    const-string/jumbo v2, "getBluetoothStatus(): Bluetooth is turned off (0x00)"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const/4 v0, 0x0

    goto :goto_27
.end method

.method public getFrontKeyLightSetting()Ljava/lang/String;
    .registers 5

    .prologue
    .line 769
    const/4 v0, 0x0

    .line 770
    .local v0, "res_str":Ljava/lang/String;
    const-string/jumbo v1, "Slate Command"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "FRONT KEY LED TIMEOUT : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    return-object v0
.end method

.method public getGPSStatus()Z
    .registers 4

    .prologue
    .line 381
    iget-object v1, p0, Lcom/lge/android/atservice/SlateDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "gps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 382
    .local v0, "gpsEnable":Z
    return v0
.end method

.method public getScreenLockStatus()I
    .registers 4

    .prologue
    .line 699
    iget-object v1, p0, Lcom/lge/android/atservice/SlateDevice;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 700
    .local v0, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 701
    const-string/jumbo v1, "Slate Command"

    const-string/jumbo v2, "getScreenLockStatus :true"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    const/4 v1, 0x1

    return v1

    .line 704
    :cond_1c
    const-string/jumbo v1, "Slate Command"

    const-string/jumbo v2, "getScreenLockStatus :false"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    const/4 v1, 0x0

    return v1
.end method

.method public getUSBDebugStatus()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 416
    iget-object v0, p0, Lcom/lge/android/atservice/SlateDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "adb_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1b

    .line 417
    const-string/jumbo v0, "Slate Command"

    const-string/jumbo v1, "USBDEBUGGING is ON"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const/4 v0, 0x1

    return v0

    .line 419
    :cond_1b
    iget-object v0, p0, Lcom/lge/android/atservice/SlateDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "adb_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_34

    .line 420
    const-string/jumbo v0, "Slate Command"

    const-string/jumbo v1, "USBDEBUGGING is OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    return v2

    .line 424
    :cond_34
    const-string/jumbo v0, "Slate Command"

    const-string/jumbo v1, "getUSBDebugStatus : This is abnormal case"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    const/4 v0, -0x1

    return v0
.end method

.method public getVersions()Ljava/lang/String;
    .registers 8

    .prologue
    .line 148
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .local v3, "verString":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "gsm.version.baseband"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "basebandStr":Ljava/lang/String;
    const-string/jumbo v4, "ro.product.model"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "oemModel":Ljava/lang/String;
    const-string/jumbo v4, "ro.lge.swversion"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, "sw_ver":Ljava/lang/String;
    const-string/jumbo v4, "Model Number"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    const-string/jumbo v4, "Android Version"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    if-eqz v0, :cond_ce

    .line 157
    const-string/jumbo v4, "Baseband Version"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    :goto_68
    const-string/jumbo v4, "Kernel Version"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/lge/android/atservice/SlateDevice;->getFormattedKernelVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const-string/jumbo v4, "Build Number"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    const-string/jumbo v4, "SW Version"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    const-string/jumbo v4, "Slate Command"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getVersions : result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 159
    :cond_ce
    const-string/jumbo v4, "Baseband Version"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "UNKNOWN"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_68
.end method

.method public geticdRSSI()Ljava/lang/String;
    .registers 6

    .prologue
    .line 514
    iget-object v2, p0, Lcom/lge/android/atservice/SlateDevice;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "slate_rssi_data"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 515
    .local v1, "shared_pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "SLATETEST_GET_RSSI_DATA"

    invoke-direct {p0}, Lcom/lge/android/atservice/SlateDevice;->getRssiInfo()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 516
    const-string/jumbo v2, "SLATETEST_GET_RSSI_DATA"

    const-string/jumbo v3, "0 0 00 01"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 517
    .local v0, "mResult":Ljava/lang/String;
    const-string/jumbo v2, "GETRSSI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SLATETEST_GET_RSSI: mRssiResult="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    return-object v0
.end method

.method public geticdRoamingMode()B
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 397
    const/4 v0, 0x0

    .line 398
    .local v0, "process_result":I
    const/4 v1, 0x0

    .line 400
    .local v1, "result_buffer":I
    iget-object v2, p0, Lcom/lge/android/atservice/SlateDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "roaming_mode_selected_system"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 401
    const-string/jumbo v2, "Slate Command"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "geticdRoamingMode : result_buffer = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    if-nez v1, :cond_49

    .line 404
    const/4 v0, 0x1

    .line 410
    :goto_2d
    const-string/jumbo v2, "Slate Command"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "geticdRoamingMode : result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    int-to-byte v2, v0

    return v2

    .line 405
    :cond_49
    const/4 v2, 0x2

    if-ne v1, v2, :cond_4e

    .line 406
    const/4 v0, 0x2

    goto :goto_2d

    .line 408
    :cond_4e
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method public isLTEInclude(I)Z
    .registers 3
    .param p1, "networkMode"    # I

    .prologue
    .line 642
    packed-switch p1, :pswitch_data_8

    .line 648
    :pswitch_3
    const/4 v0, 0x0

    return v0

    .line 646
    :pswitch_5
    const/4 v0, 0x1

    return v0

    .line 642
    nop

    :pswitch_data_8
    .packed-switch 0x8
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public processGetRssi(Ljava/lang/String;)[B
    .registers 15
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 523
    const/4 v5, 0x0

    .line 524
    .local v5, "rxpower":I
    const/4 v0, 0x0

    .line 525
    .local v0, "ecio":I
    const/4 v3, 0x0

    .line 526
    .local v3, "no_of_bar":I
    const/4 v8, 0x0

    .line 527
    .local v8, "status":I
    const/4 v10, 0x6

    new-array v4, v10, [B

    .line 535
    .local v4, "result":[B
    const-string/jumbo v10, "Slate Command"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "SLATETEST_GET_RSSI: data="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    const-string/jumbo v10, " "

    invoke-virtual {p1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 538
    .local v9, "token":[Ljava/lang/String;
    new-instance v10, Ljava/lang/Integer;

    const/4 v11, 0x0

    aget-object v11, v9, v11

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 539
    mul-int/lit8 v5, v5, 0x64

    .line 540
    int-to-short v7, v5

    .line 542
    .local v7, "rxpower_short":S
    new-instance v10, Ljava/lang/Integer;

    const/4 v11, 0x1

    aget-object v11, v9, v11

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 543
    mul-int/lit8 v0, v0, 0x64

    .line 544
    int-to-short v2, v0

    .line 546
    .local v2, "ecio_short":S
    new-instance v10, Ljava/lang/Integer;

    const/4 v11, 0x2

    aget-object v11, v9, v11

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 547
    new-instance v10, Ljava/lang/Integer;

    const/4 v11, 0x3

    aget-object v11, v9, v11

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 549
    invoke-static {v7}, Lcom/lge/android/atservice/Utils;->shortToByteArrayLittleEndian(S)[B

    move-result-object v6

    .line 550
    .local v6, "rxpowerBuf":[B
    invoke-static {v2}, Lcom/lge/android/atservice/Utils;->shortToByteArrayLittleEndian(S)[B

    move-result-object v1

    .line 555
    .local v1, "ecioBuf":[B
    int-to-byte v10, v8

    const/4 v11, 0x0

    aput-byte v10, v4, v11

    .line 556
    int-to-byte v10, v3

    const/4 v11, 0x1

    aput-byte v10, v4, v11

    .line 558
    const/4 v10, 0x0

    aget-byte v10, v6, v10

    const/4 v11, 0x2

    aput-byte v10, v4, v11

    .line 559
    const/4 v10, 0x1

    aget-byte v10, v6, v10

    const/4 v11, 0x3

    aput-byte v10, v4, v11

    .line 560
    const/4 v10, 0x0

    aget-byte v10, v1, v10

    const/4 v11, 0x4

    aput-byte v10, v4, v11

    .line 561
    const/4 v10, 0x1

    aget-byte v10, v1, v10

    const/4 v11, 0x5

    aput-byte v10, v4, v11

    .line 566
    return-object v4
.end method

.method public set4Gstatus(Z)Z
    .registers 14
    .param p1, "settings"    # Z

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 592
    const-string/jumbo v7, "phone"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 594
    .local v2, "mPhoneService":Lcom/android/internal/telephony/ITelephony;
    const-string/jumbo v7, "ro.telephony.default_network"

    const/4 v8, -0x1

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 597
    .local v4, "network_prop":I
    :try_start_15
    iget-object v7, p0, Lcom/lge/android/atservice/SlateDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "preferred_network_mode"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_22} :catch_7a

    move-result v3

    .line 604
    .local v3, "networkMode":I
    :goto_23
    const-string/jumbo v7, "Slate Command"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "fn set4Gstatus settings = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    const-string/jumbo v7, "Slate Command"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "fn set4Gstatus read networkMode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    const-string/jumbo v7, "Slate Command"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ro.telephony.default_network="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    invoke-virtual {p0, v3}, Lcom/lge/android/atservice/SlateDevice;->isLTEInclude(I)Z

    move-result v0

    .line 610
    .local v0, "currStatus":Z
    if-eqz v0, :cond_7e

    if-eqz p1, :cond_7e

    .line 611
    :cond_79
    return v11

    .line 600
    .end local v0    # "currStatus":Z
    .end local v3    # "networkMode":I
    :catch_7a
    move-exception v6

    .line 601
    .local v6, "snfe":Ljava/lang/Exception;
    const/16 v3, 0x8

    .restart local v3    # "networkMode":I
    goto :goto_23

    .line 610
    .end local v6    # "snfe":Ljava/lang/Exception;
    .restart local v0    # "currStatus":Z
    :cond_7e
    if-nez v0, :cond_82

    if-eqz p1, :cond_79

    .line 614
    :cond_82
    if-eqz p1, :cond_ad

    .line 615
    const/16 v7, 0xa

    if-ne v4, v7, :cond_a3

    .line 616
    const/16 v5, 0xa

    .line 628
    .local v5, "settingmode":I
    :goto_8a
    iget-object v7, p0, Lcom/lge/android/atservice/SlateDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "preferred_network_mode"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 631
    :try_start_96
    invoke-interface {v2, v5}, Lcom/android/internal/telephony/ITelephony;->setNetworkModePreference(I)V
    :try_end_99
    .catch Landroid/os/RemoteException; {:try_start_96 .. :try_end_99} :catch_af

    .line 636
    const-string/jumbo v7, "Slate Command"

    const-string/jumbo v8, "set4Gstatus complete"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    return v11

    .line 618
    .end local v5    # "settingmode":I
    :cond_a3
    const/16 v7, 0x8

    if-ne v4, v7, :cond_aa

    .line 619
    const/16 v5, 0x8

    .restart local v5    # "settingmode":I
    goto :goto_8a

    .line 622
    .end local v5    # "settingmode":I
    :cond_aa
    const/16 v5, 0xa

    .restart local v5    # "settingmode":I
    goto :goto_8a

    .line 625
    .end local v5    # "settingmode":I
    :cond_ad
    const/4 v5, 0x4

    .restart local v5    # "settingmode":I
    goto :goto_8a

    .line 632
    :catch_af
    move-exception v1

    .line 633
    .local v1, "e":Landroid/os/RemoteException;
    return v10
.end method

.method public setBacklightSetting(I)B
    .registers 6
    .param p1, "duration"    # I

    .prologue
    .line 339
    const/4 v0, 0x1

    .line 341
    .local v0, "process_result":Z
    const-string/jumbo v1, "Slate Command"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setBacklightSetting : duration = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    sparse-switch p1, :sswitch_data_c8

    .line 370
    const/4 v0, 0x0

    .line 371
    const-string/jumbo v1, "Slate Command"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setBacklightSetting : undefined command "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    .end local v0    # "process_result":Z
    :goto_39
    if-eqz v0, :cond_c4

    const/4 v1, 0x0

    :goto_3c
    return v1

    .line 345
    .restart local v0    # "process_result":Z
    :sswitch_3d
    iget-object v1, p0, Lcom/lge/android/atservice/SlateDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_off_timeout"

    const/16 v3, 0x3a98

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .local v0, "process_result":Z
    goto :goto_39

    .line 348
    .local v0, "process_result":Z
    :sswitch_4d
    iget-object v1, p0, Lcom/lge/android/atservice/SlateDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_off_timeout"

    const/16 v3, 0x7530

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .local v0, "process_result":Z
    goto :goto_39

    .line 351
    .local v0, "process_result":Z
    :sswitch_5d
    iget-object v1, p0, Lcom/lge/android/atservice/SlateDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_off_timeout"

    const v3, 0xea60

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .local v0, "process_result":Z
    goto :goto_39

    .line 354
    .local v0, "process_result":Z
    :sswitch_6e
    iget-object v1, p0, Lcom/lge/android/atservice/SlateDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_off_timeout"

    const v3, 0x7fffffff

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .local v0, "process_result":Z
    goto :goto_39

    .line 357
    .local v0, "process_result":Z
    :sswitch_7f
    iget-object v1, p0, Lcom/lge/android/atservice/SlateDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_off_timeout"

    const v3, 0x1d4c0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .local v0, "process_result":Z
    goto :goto_39

    .line 360
    .local v0, "process_result":Z
    :sswitch_90
    iget-object v1, p0, Lcom/lge/android/atservice/SlateDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_off_timeout"

    const v3, 0x493e0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .local v0, "process_result":Z
    goto :goto_39

    .line 363
    .local v0, "process_result":Z
    :sswitch_a1
    iget-object v1, p0, Lcom/lge/android/atservice/SlateDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_off_timeout"

    const v3, 0x927c0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .local v0, "process_result":Z
    goto :goto_39

    .line 366
    .local v0, "process_result":Z
    :sswitch_b2
    iget-object v1, p0, Lcom/lge/android/atservice/SlateDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_off_timeout"

    const v3, 0xdbba0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .local v0, "process_result":Z
    goto/16 :goto_39

    .line 376
    .end local v0    # "process_result":Z
    :cond_c4
    const/4 v1, 0x1

    goto/16 :goto_3c

    .line 343
    nop

    :sswitch_data_c8
    .sparse-switch
        0xf -> :sswitch_3d
        0x1e -> :sswitch_4d
        0x3c -> :sswitch_5d
        0x64 -> :sswitch_6e
        0x78 -> :sswitch_7f
        0x12c -> :sswitch_90
        0x258 -> :sswitch_a1
        0x384 -> :sswitch_b2
    .end sparse-switch
.end method

.method public setBluetoothStatus(I)I
    .registers 10
    .param p1, "reqCmd"    # I

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x17

    .line 259
    const/4 v1, 0x0

    .line 261
    .local v1, "retVal":Z
    iget-object v3, p0, Lcom/lge/android/atservice/SlateDevice;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v3, :cond_e

    .line 262
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/android/atservice/SlateDevice;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 265
    :cond_e
    iget-object v3, p0, Lcom/lge/android/atservice/SlateDevice;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getDiscoverableTimeout()I

    move-result v2

    .line 266
    .local v2, "timeout":I
    if-gez v2, :cond_18

    .line 267
    const/16 v2, 0x78

    .line 270
    :cond_18
    const-string/jumbo v3, "Slate Command"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mAdapter.getScanMode(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/android/atservice/SlateDevice;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", mAdapter.getState(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/android/atservice/SlateDevice;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", cmd: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", timeout: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    packed-switch p1, :pswitch_data_1ee

    .line 325
    :pswitch_62
    const-string/jumbo v3, "Slate Command"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setBluetoothStatus() : Request Code="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is wrong. Please input 0x00, 0x01, or 0x03."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const/4 v3, -0x1

    return v3

    .line 274
    :pswitch_85
    const-string/jumbo v3, "Slate Command"

    const-string/jumbo v4, "setBluetoothStatus(): cmd = 0x11"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v3, p0, Lcom/lge/android/atservice/SlateDevice;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_dd

    .line 276
    iget-object v3, p0, Lcom/lge/android/atservice/SlateDevice;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v3

    if-eq v3, v6, :cond_db

    .line 277
    iget-object v3, p0, Lcom/lge/android/atservice/SlateDevice;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, v6, v2}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(II)Z

    move-result v1

    .line 278
    .local v1, "retVal":Z
    const-string/jumbo v3, "Slate Command"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setBluetoothStatus() : set Discoverable mode to SCAN_MODE_CONNECTABLE_DISCOVERABLE > retVal="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    .end local v1    # "retVal":Z
    :goto_be
    if-eqz v1, :cond_1d1

    .line 330
    const-string/jumbo v3, "Slate Command"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setBluetoothStatus was successful for Request Code="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    return v7

    .line 280
    .local v1, "retVal":Z
    :cond_db
    const/4 v1, 0x1

    goto :goto_be

    .line 283
    :cond_dd
    iget-object v3, p0, Lcom/lge/android/atservice/SlateDevice;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v1

    .line 284
    .local v1, "retVal":Z
    const-string/jumbo v3, "Slate Command"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setBluetoothStatus(): mAdapter.enable() > retVal="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :goto_fd
    iget-object v3, p0, Lcom/lge/android/atservice/SlateDevice;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_118

    .line 288
    const-wide/16 v4, 0x64

    :try_start_109
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_10c
    .catch Ljava/lang/InterruptedException; {:try_start_109 .. :try_end_10c} :catch_10d

    goto :goto_fd

    .line 289
    :catch_10d
    move-exception v0

    .line 290
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v3, "Slate Command"

    const-string/jumbo v4, "InterruptedException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fd

    .line 294
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_118
    iget-object v3, p0, Lcom/lge/android/atservice/SlateDevice;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, v6, v2}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(II)Z

    move-result v1

    .line 295
    const-string/jumbo v3, "Slate Command"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setBluetoothStatus() : set Discoverable mode to SCAN_MODE_CONNECTABLE_DISCOVERABLE > retVal="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_be

    .line 300
    .local v1, "retVal":Z
    :pswitch_139
    const-string/jumbo v3, "Slate Command"

    const-string/jumbo v4, "setBluetoothStatus(): cmd = 0x01"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v3, p0, Lcom/lge/android/atservice/SlateDevice;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_16c

    .line 302
    iget-object v3, p0, Lcom/lge/android/atservice/SlateDevice;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v1

    .line 303
    .local v1, "retVal":Z
    const-string/jumbo v3, "Slate Command"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setBluetoothStatus(): mAdapter.enable() > retVal="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_be

    .line 305
    .local v1, "retVal":Z
    :cond_16c
    iget-object v3, p0, Lcom/lge/android/atservice/SlateDevice;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v3

    if-ne v3, v6, :cond_198

    .line 306
    iget-object v3, p0, Lcom/lge/android/atservice/SlateDevice;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v4, 0x15

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    move-result v1

    .line 307
    .local v1, "retVal":Z
    const-string/jumbo v3, "Slate Command"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SetBluetoothStatus() : set Discoverable mode to SCAN_MODE_CONNECTABLE > retVal="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_be

    .line 309
    .local v1, "retVal":Z
    :cond_198
    const/4 v1, 0x1

    goto/16 :goto_be

    .line 315
    :pswitch_19b
    const-string/jumbo v3, "Slate Command"

    const-string/jumbo v4, "setBluetoothStatus(): cmd = 0x00"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v3, p0, Lcom/lge/android/atservice/SlateDevice;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1ce

    .line 317
    iget-object v3, p0, Lcom/lge/android/atservice/SlateDevice;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v1

    .line 318
    .local v1, "retVal":Z
    const-string/jumbo v3, "Slate Command"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setBluetoothStatus(): mAdapter.disable() > retVal="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_be

    .line 320
    .local v1, "retVal":Z
    :cond_1ce
    const/4 v1, 0x1

    goto/16 :goto_be

    .line 333
    .end local v1    # "retVal":Z
    :cond_1d1
    const-string/jumbo v3, "Slate Command"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setBluetoothStatus was not successful for Request Code="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const/4 v3, 0x1

    return v3

    .line 272
    nop

    :pswitch_data_1ee
    .packed-switch 0x0
        :pswitch_19b
        :pswitch_139
        :pswitch_62
        :pswitch_85
    .end packed-switch
.end method

.method public setFrontKeyLightSetting(I)Z
    .registers 3
    .param p1, "setTimeout"    # I

    .prologue
    .line 775
    const/4 v0, 0x0

    return v0
.end method

.method public setGPSStatus(Z)Z
    .registers 6
    .param p1, "gps_status"    # Z

    .prologue
    .line 386
    const/4 v0, 0x1

    .line 387
    .local v0, "gps_lock_value":Z
    const/4 v1, 0x0

    .line 390
    .local v1, "result":Z
    iget-object v2, p0, Lcom/lge/android/atservice/SlateDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "gps"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 391
    const/4 v1, 0x1

    .line 393
    return v1
.end method

.method public setOrientationLock(I)I
    .registers 10
    .param p1, "setVal"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 653
    const-string/jumbo v4, "Slate Command"

    const-string/jumbo v5, "setorien setOrientationLock"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :try_start_b
    const-string/jumbo v4, "window"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    .line 656
    .local v3, "wm":Landroid/view/IWindowManager;
    if-eqz v3, :cond_2e

    .line 657
    packed-switch p1, :pswitch_data_90

    .line 678
    return v6

    .line 659
    :pswitch_1c
    const-string/jumbo v4, "Slate Command"

    const-string/jumbo v5, "setorien UNLOCK_SCREEN"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    invoke-direct {p0}, Lcom/lge/android/atservice/SlateDevice;->getStatus()Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 661
    invoke-interface {v3}, Landroid/view/IWindowManager;->thawRotation()V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_2e} :catch_4a
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_2e} :catch_74

    .line 687
    .end local v3    # "wm":Landroid/view/IWindowManager;
    :cond_2e
    :goto_2e
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "com.android.settings.rotation.CHANGED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 688
    .local v1, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/lge/android/atservice/SlateDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 689
    return v7

    .line 666
    .end local v1    # "intent":Landroid/content/Intent;
    .restart local v3    # "wm":Landroid/view/IWindowManager;
    :pswitch_3c
    :try_start_3c
    const-string/jumbo v4, "Slate Command"

    const-string/jumbo v5, "setorien LOCKIN_PORTRAIT_MODE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/IWindowManager;->freezeRotation(I)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_49} :catch_4a
    .catch Ljava/lang/NullPointerException; {:try_start_3c .. :try_end_49} :catch_74

    goto :goto_2e

    .line 682
    .end local v3    # "wm":Landroid/view/IWindowManager;
    :catch_4a
    move-exception v0

    .line 683
    .local v0, "exc":Landroid/os/RemoteException;
    const-string/jumbo v4, "Slate Command"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setOrientationLock RemoteException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 671
    .end local v0    # "exc":Landroid/os/RemoteException;
    .restart local v3    # "wm":Landroid/view/IWindowManager;
    :pswitch_66
    :try_start_66
    const-string/jumbo v4, "Slate Command"

    const-string/jumbo v5, "setorien LOCKIN_LANDSCAPE_MODE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/view/IWindowManager;->freezeRotation(I)V
    :try_end_73
    .catch Landroid/os/RemoteException; {:try_start_66 .. :try_end_73} :catch_4a
    .catch Ljava/lang/NullPointerException; {:try_start_66 .. :try_end_73} :catch_74

    goto :goto_2e

    .line 684
    .end local v3    # "wm":Landroid/view/IWindowManager;
    :catch_74
    move-exception v2

    .line 685
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string/jumbo v4, "Slate Command"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setOrientationLock NullPointerException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 657
    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_3c
        :pswitch_66
    .end packed-switch
.end method

.method public setUSBDebugStatus(I)I
    .registers 8
    .param p1, "setVal"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 429
    const/4 v0, 0x0

    .line 431
    .local v0, "status":Z
    const-string/jumbo v1, "Slate Command"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setUSBDebugStatus : setVal = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    packed-switch p1, :pswitch_data_b4

    .line 467
    const-string/jumbo v1, "Slate Command"

    const-string/jumbo v2, "setUSBDebugStatus : This is abnormal case"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const/4 v1, -0x1

    return v1

    .line 434
    :pswitch_2b
    iget-object v1, p0, Lcom/lge/android/atservice/SlateDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "adb_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_65

    .line 435
    iget-object v1, p0, Lcom/lge/android/atservice/SlateDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "adb_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 436
    .local v0, "status":Z
    const-string/jumbo v1, "Slate Command"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Turn USBDEBUGGING to OFF : status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    if-eqz v0, :cond_64

    .line 439
    return v4

    .line 441
    :cond_64
    return v5

    .line 444
    .local v0, "status":Z
    :cond_65
    const-string/jumbo v1, "Slate Command"

    const-string/jumbo v2, "USBDEBUGGING already OFF"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    return v4

    .line 449
    :pswitch_6f
    iget-object v1, p0, Lcom/lge/android/atservice/SlateDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "adb_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_a9

    .line 450
    iget-object v1, p0, Lcom/lge/android/atservice/SlateDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "adb_enabled"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 451
    .local v0, "status":Z
    const-string/jumbo v1, "Slate Command"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Turn USBDEBUGGING to ON : status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    if-eqz v0, :cond_a8

    .line 454
    return v4

    .line 456
    :cond_a8
    return v5

    .line 459
    .local v0, "status":Z
    :cond_a9
    const-string/jumbo v1, "Slate Command"

    const-string/jumbo v2, "USBDEBUGGING already ON"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    return v4

    .line 432
    nop

    :pswitch_data_b4
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_6f
    .end packed-switch
.end method
