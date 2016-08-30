.class public Lcom/lge/cic/eden/alarm/EdenAlarmManager;
.super Ljava/lang/Object;
.source "EdenAlarmManager.java"


# static fields
.field private static final logger:Lcom/lge/cic/eden/utils/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const-class v0, Lcom/lge/cic/eden/alarm/EdenAlarmManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/cic/eden/utils/Logger;->getLogger(Ljava/lang/String;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v0

    sput-object v0, Lcom/lge/cic/eden/alarm/EdenAlarmManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerAlarm(Landroid/content/Context;Landroid/content/Intent;IIZ)V
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "hour"    # I
    .param p3, "minute"    # I
    .param p4, "repeatable"    # Z

    .prologue
    const/4 v5, -0x1

    .line 20
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, v5

    invoke-static/range {v0 .. v6}, Lcom/lge/cic/eden/alarm/EdenAlarmManager;->registerAlarm(Landroid/content/Context;Landroid/content/Intent;IIZII)V

    .line 21
    return-void
.end method

.method public static registerAlarm(Landroid/content/Context;Landroid/content/Intent;IIZII)V
    .registers 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "hour"    # I
    .param p3, "minute"    # I
    .param p4, "repeatable"    # Z
    .param p5, "startHour"    # I
    .param p6, "startMinute"    # I

    .prologue
    .line 25
    sget-object v3, Lcom/lge/cic/eden/alarm/EdenAlarmManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  registerAlarm() alarm at "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "h:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "m"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 28
    new-instance v11, Ljava/util/GregorianCalendar;

    invoke-direct {v11}, Ljava/util/GregorianCalendar;-><init>()V

    .line 29
    .local v11, "gregorianCalendar":Ljava/util/GregorianCalendar;
    sget-object v3, Lcom/lge/cic/eden/alarm/EdenAlarmManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "    current day: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 31
    const/16 v3, 0xb

    invoke-virtual {v11, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v9

    .line 32
    .local v9, "currHour":I
    const/16 v3, 0xc

    invoke-virtual {v11, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v10

    .line 33
    .local v10, "currMinute":I
    sget-object v3, Lcom/lge/cic/eden/alarm/EdenAlarmManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "    current hours "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 35
    if-ltz p5, :cond_fe

    if-ltz p6, :cond_fe

    .line 37
    if-ne v9, p2, :cond_6d

    if-ge v10, p3, :cond_6f

    :cond_6d
    if-le v9, p2, :cond_c6

    .line 38
    :cond_6f
    sget-object v3, Lcom/lge/cic/eden/alarm/EdenAlarmManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v4, "    add 24 hours"

    invoke-virtual {v3, v4}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 39
    add-int/lit8 p2, p2, 0x18

    .line 47
    :goto_78
    const/16 v3, 0xb

    invoke-virtual {v11, v3, p2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 48
    const/16 v3, 0xc

    invoke-virtual {v11, v3, p3}, Ljava/util/GregorianCalendar;->set(II)V

    .line 49
    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-virtual {v11, v3, v4}, Ljava/util/GregorianCalendar;->set(II)V

    .line 50
    sget-object v3, Lcom/lge/cic/eden/alarm/EdenAlarmManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "    alarm will be at "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-virtual {v11}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 52
    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {p0, v3, p1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 53
    .local v8, "operation":Landroid/app/PendingIntent;
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 54
    .local v2, "alarmManager":Landroid/app/AlarmManager;
    if-eqz p4, :cond_107

    .line 55
    const/4 v3, 0x0

    invoke-virtual {v11}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x5265c00

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 60
    :goto_c5
    return-void

    .line 41
    .end local v2    # "alarmManager":Landroid/app/AlarmManager;
    .end local v8    # "operation":Landroid/app/PendingIntent;
    :cond_c6
    sget-object v3, Lcom/lge/cic/eden/alarm/EdenAlarmManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "    do not add 24 hours(A) "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    goto/16 :goto_78

    .line 44
    :cond_fe
    sget-object v3, Lcom/lge/cic/eden/alarm/EdenAlarmManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v4, "    do not add 24 hours(B)"

    invoke-virtual {v3, v4}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    goto/16 :goto_78

    .line 58
    .restart local v2    # "alarmManager":Landroid/app/AlarmManager;
    .restart local v8    # "operation":Landroid/app/PendingIntent;
    :cond_107
    const/4 v3, 0x0

    invoke-virtual {v11}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5, v8}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_c5
.end method

.method public static registerElapsedRealtimeAlarm(Landroid/content/Context;ILandroid/content/Intent;J)V
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "delayMillis"    # J

    .prologue
    .line 63
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p0, p1, p2, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 64
    .local v1, "operation":Landroid/app/PendingIntent;
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 65
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    const/4 v2, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v4, p3

    invoke-virtual {v0, v2, v4, v5, v1}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 66
    return-void
.end method
