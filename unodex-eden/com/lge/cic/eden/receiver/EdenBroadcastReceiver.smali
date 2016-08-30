.class public Lcom/lge/cic/eden/receiver/EdenBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EdenBroadcastReceiver.java"


# static fields
.field public static final ACTION_DETECT_POSITION:Ljava/lang/String; = "com.lge.myplace.homeDetected"

.field private static final DEBUG:Z = true


# instance fields
.field private final logger:Lcom/lge/cic/eden/utils/Logger;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 25
    const-class v0, Lcom/lge/cic/eden/receiver/EdenBroadcastReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/cic/eden/utils/Logger;->getLogger(Ljava/lang/String;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/cic/eden/receiver/EdenBroadcastReceiver;->logger:Lcom/lge/cic/eden/utils/Logger;

    .line 24
    return-void
.end method

.method private notifyChangeAllTable(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/cic/eden/db/table/ActivityEventViewTable;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/cic/eden/db/table/ActivityEventMapTable;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 152
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/cic/eden/db/table/EventMediaMapTable;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 153
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/cic/eden/db/table/EventInfoTable;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/cic/eden/db/table/ActivityInfoTable;->ACTIVITYINFO_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/cic/eden/db/table/MediaInfoTable;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 156
    iget-object v0, p0, Lcom/lge/cic/eden/receiver/EdenBroadcastReceiver;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "notifyChangeAllTable"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method private registerAlarms(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-static {p1}, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper;->registerStartAlarm(Landroid/content/Context;)V

    .line 32
    invoke-static {p1}, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper;->registerRestartAlarm(Landroid/content/Context;)V

    .line 33
    invoke-static {p1}, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper;->registerStopAlarm(Landroid/content/Context;)V

    .line 35
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 25
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/receiver/EdenBroadcastReceiver;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v18, v0

    const-string v19, "onReceive()"

    invoke-virtual/range {v18 .. v19}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 41
    if-eqz p2, :cond_13

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_1f

    .line 42
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/receiver/EdenBroadcastReceiver;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v18, v0

    const-string v19, "intent is null"

    invoke-virtual/range {v18 .. v19}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    .line 147
    :cond_1e
    :goto_1e
    return-void

    .line 46
    :cond_1f
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 48
    .local v4, "action":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/receiver/EdenBroadcastReceiver;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "  action: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", received at: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    new-instance v20, Ljava/util/GregorianCalendar;

    invoke-direct/range {v20 .. v20}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual/range {v20 .. v20}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 51
    const-string v18, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8f

    .line 53
    const-string v18, "com.lge.cic.eden.pref.mountinfo"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 54
    .local v15, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    const-string v19, "PREF_KEY_MOUNT_INFO_MOUNTED_TIME"

    const-wide/16 v20, -0x1

    invoke-interface/range {v18 .. v21}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    .line 55
    const-string v19, "PREF_KEY_MOUNT_INFO_SCANFINISHED_TIME"

    const-wide/16 v20, -0x1

    invoke-interface/range {v18 .. v21}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    .line 56
    const-string v19, "PREF_KEY_MOUNT_INFO_UNMOUNTED_TIME"

    const-wide/16 v20, -0x1

    invoke-interface/range {v18 .. v21}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    .line 57
    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 59
    invoke-direct/range {p0 .. p1}, Lcom/lge/cic/eden/receiver/EdenBroadcastReceiver;->registerAlarms(Landroid/content/Context;)V

    goto :goto_1e

    .line 60
    .end local v15    # "pref":Landroid/content/SharedPreferences;
    :cond_8f
    const-string v18, "android.intent.action.TIMEZONE_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a1

    .line 61
    invoke-direct/range {p0 .. p1}, Lcom/lge/cic/eden/receiver/EdenBroadcastReceiver;->registerAlarms(Landroid/content/Context;)V

    .line 62
    invoke-static/range {p1 .. p1}, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper;->stopAnalysisIfSatisfiedCondition(Landroid/content/Context;)V

    goto/16 :goto_1e

    .line 64
    :cond_a1
    const-string v18, "android.intent.action.TIME_SET"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_12c

    .line 65
    invoke-static {}, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper;->currentConcatenatedDate()I

    move-result v6

    .line 67
    .local v6, "currentDate":I
    const-string v18, "com.lge.cic.eden.pref"

    const/16 v19, 0x0

    .line 66
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 68
    .restart local v15    # "pref":Landroid/content/SharedPreferences;
    const-string v18, "PREF_KEY_PREVIOUS_REGISTER_ALARM"

    const/16 v19, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 70
    .local v16, "prevDate":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/receiver/EdenBroadcastReceiver;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "    register date. prev = "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", current = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 72
    if-ltz v16, :cond_f7

    move/from16 v0, v16

    if-ge v6, v0, :cond_ff

    .line 73
    :cond_f7
    invoke-direct/range {p0 .. p1}, Lcom/lge/cic/eden/receiver/EdenBroadcastReceiver;->registerAlarms(Landroid/content/Context;)V

    .line 83
    :cond_fa
    :goto_fa
    invoke-static/range {p1 .. p1}, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper;->stopAnalysisIfSatisfiedCondition(Landroid/content/Context;)V

    goto/16 :goto_1e

    .line 75
    :cond_ff
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/receiver/EdenBroadcastReceiver;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v18, v0

    const-string v19, "  aleady register alarm"

    invoke-virtual/range {v18 .. v19}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 76
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper;->registerConcatenatedDate(Landroid/content/Context;I)V

    .line 78
    invoke-static/range {p1 .. p1}, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper;->getStartAlarmInfo(Landroid/content/Context;)Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper$AlarmInfo;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper$AlarmInfo;->checkIfPendingIntentIsRegistered(Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_fa

    .line 79
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/receiver/EdenBroadcastReceiver;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v18, v0

    const-string v19, "  but alarm didn\'t register at AlarmManager."

    invoke-virtual/range {v18 .. v19}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    .line 80
    invoke-direct/range {p0 .. p1}, Lcom/lge/cic/eden/receiver/EdenBroadcastReceiver;->registerAlarms(Landroid/content/Context;)V

    goto :goto_fa

    .line 85
    .end local v6    # "currentDate":I
    .end local v15    # "pref":Landroid/content/SharedPreferences;
    .end local v16    # "prevDate":I
    :cond_12c
    const-string v18, "com.lge.cic.eden.intent.action.ACTION_START_ANALYSIS"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_144

    .line 86
    invoke-static/range {p1 .. p1}, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper;->receiveStartAlarm(Landroid/content/Context;)Z

    move-result v7

    .line 87
    .local v7, "isStarted":Z
    if-eqz v7, :cond_13f

    .line 88
    invoke-static/range {p1 .. p1}, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper;->registerCardAlarm(Landroid/content/Context;)V

    .line 90
    :cond_13f
    invoke-static/range {p1 .. p1}, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper;->registerStartAlarm(Landroid/content/Context;)V

    goto/16 :goto_1e

    .line 92
    .end local v7    # "isStarted":Z
    :cond_144
    const-string v18, "com.lge.cic.eden.intent.action.ACTION_RESTART_ANALYSIS"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_157

    .line 93
    invoke-static/range {p1 .. p1}, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper;->receiveRestartAlarm(Landroid/content/Context;)Z

    move-result v7

    .line 97
    .restart local v7    # "isStarted":Z
    invoke-static/range {p1 .. p1}, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper;->registerRestartAlarm(Landroid/content/Context;)V

    goto/16 :goto_1e

    .line 99
    .end local v7    # "isStarted":Z
    :cond_157
    const-string v18, "com.lge.cic.eden.intent.action.ACTION_STOP_ANALYSIS"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1e

    .line 104
    const-string v18, "com.lge.cic.eden.intent.action.ACTION_SHOW_CARD"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_170

    .line 105
    invoke-static/range {p1 .. p1}, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper;->receiveCardAlarm(Landroid/content/Context;)V

    goto/16 :goto_1e

    .line 107
    :cond_170
    const-string v18, "com.lge.myplace.homeDetected"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1a1

    .line 108
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 109
    .local v17, "serviceIntent":Landroid/content/Intent;
    new-instance v5, Landroid/content/ComponentName;

    const-string v18, "com.lge.cic.eden.service"

    const-string v19, "com.lge.cic.eden.service.EdenService"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v5, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .local v5, "component":Landroid/content/ComponentName;
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 111
    const-string v18, "MSG_TYPE"

    const-string v19, "com.lge.myplace.homeDetected"

    invoke-virtual/range {v17 .. v19}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_1e

    .line 113
    .end local v5    # "component":Landroid/content/ComponentName;
    .end local v17    # "serviceIntent":Landroid/content/Intent;
    :cond_1a1
    const-string v18, "android.intent.action.MEDIA_MOUNTED"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1d0

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 115
    .local v8, "lastMountedTime":J
    const-string v18, "com.lge.cic.eden.pref.mountinfo"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 116
    .restart local v15    # "pref":Landroid/content/SharedPreferences;
    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    const-string v19, "PREF_KEY_MOUNT_INFO_MOUNTED_TIME"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1e

    .line 120
    .end local v8    # "lastMountedTime":J
    .end local v15    # "pref":Landroid/content/SharedPreferences;
    :cond_1d0
    const-string v18, "android.intent.action.MEDIA_SCANNER_FINISHED"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_227

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 122
    .local v10, "lastScanFinishedTime":J
    const-string v18, "com.lge.cic.eden.pref.mountinfo"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 123
    .restart local v15    # "pref":Landroid/content/SharedPreferences;
    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    const-string v19, "PREF_KEY_MOUNT_INFO_SCANFINISHED_TIME"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 125
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 126
    .restart local v17    # "serviceIntent":Landroid/content/Intent;
    new-instance v5, Landroid/content/ComponentName;

    const-string v18, "com.lge.cic.eden.service"

    const-string v19, "com.lge.cic.eden.service.EdenService"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v5, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .restart local v5    # "component":Landroid/content/ComponentName;
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 128
    const-string v18, "MSG_TYPE"

    const-string v19, "MediaSync"

    invoke-virtual/range {v17 .. v19}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 131
    invoke-direct/range {p0 .. p1}, Lcom/lge/cic/eden/receiver/EdenBroadcastReceiver;->notifyChangeAllTable(Landroid/content/Context;)V

    goto/16 :goto_1e

    .line 133
    .end local v5    # "component":Landroid/content/ComponentName;
    .end local v10    # "lastScanFinishedTime":J
    .end local v15    # "pref":Landroid/content/SharedPreferences;
    .end local v17    # "serviceIntent":Landroid/content/Intent;
    :cond_227
    const-string v18, "android.intent.action.MEDIA_REMOVED"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_236

    .line 134
    invoke-direct/range {p0 .. p1}, Lcom/lge/cic/eden/receiver/EdenBroadcastReceiver;->notifyChangeAllTable(Landroid/content/Context;)V

    goto/16 :goto_1e

    .line 135
    :cond_236
    const-string v18, "android.intent.action.MEDIA_UNMOUNTED"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_245

    .line 136
    invoke-direct/range {p0 .. p1}, Lcom/lge/cic/eden/receiver/EdenBroadcastReceiver;->notifyChangeAllTable(Landroid/content/Context;)V

    goto/16 :goto_1e

    .line 137
    :cond_245
    const-string v18, "android.intent.action.MEDIA_EJECT"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_277

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 139
    .local v12, "lastUnMountedTime":J
    const-string v18, "com.lge.cic.eden.pref.mountinfo"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 140
    .restart local v15    # "pref":Landroid/content/SharedPreferences;
    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    const-string v19, "PREF_KEY_MOUNT_INFO_UNMOUNTED_TIME"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v12, v13}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 142
    invoke-direct/range {p0 .. p1}, Lcom/lge/cic/eden/receiver/EdenBroadcastReceiver;->notifyChangeAllTable(Landroid/content/Context;)V

    goto/16 :goto_1e

    .line 143
    .end local v12    # "lastUnMountedTime":J
    .end local v15    # "pref":Landroid/content/SharedPreferences;
    :cond_277
    const-string v18, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1e

    .line 144
    const-string v18, "power"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/PowerManager;

    .line 145
    .local v14, "pm":Landroid/os/PowerManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/receiver/EdenBroadcastReceiver;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "check isDeviceIdleMode : "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_1e
.end method
