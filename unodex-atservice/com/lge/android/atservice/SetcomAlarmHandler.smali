.class public Lcom/lge/android/atservice/SetcomAlarmHandler;
.super Lcom/lge/android/atservice/ATCmdHandler;
.source "SetcomAlarmHandler.java"


# static fields
.field public static final CONTENT_ALARMS_URI_STRING:Ljava/lang/String; = "content://com.lge.clock.alarmclock.ALProvider/alarms?queryType=1"

.field private static final PROJECTION_1_STRINGS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SetcomAT"

.field private static mContext:Landroid/content/Context;


# instance fields
.field private cursorQuery:Landroid/database/Cursor;

.field private resolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 18
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "hour"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "minutes"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "daysofweek"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "enabled"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "widget_yn"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "memo"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/lge/android/atservice/SetcomAlarmHandler;->PROJECTION_1_STRINGS:[Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/android/atservice/SetcomAlarmHandler;->mContext:Landroid/content/Context;

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/lge/android/atservice/ATCmdHandler;-><init>()V

    .line 24
    sput-object p1, Lcom/lge/android/atservice/SetcomAlarmHandler;->mContext:Landroid/content/Context;

    .line 23
    return-void
.end method

.method private getAlarmCount()I
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 28
    const/4 v6, 0x0

    .line 30
    .local v6, "listCount":I
    sget-object v0, Lcom/lge/android/atservice/SetcomAlarmHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/android/atservice/SetcomAlarmHandler;->resolver:Landroid/content/ContentResolver;

    .line 31
    iget-object v0, p0, Lcom/lge/android/atservice/SetcomAlarmHandler;->resolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "content://com.lge.clock.alarmclock.ALProvider/alarms?queryType=1"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/lge/android/atservice/SetcomAlarmHandler;->PROJECTION_1_STRINGS:[Ljava/lang/String;

    const-string/jumbo v5, "widget_yn desc, hour, minutes, _id"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/android/atservice/SetcomAlarmHandler;->cursorQuery:Landroid/database/Cursor;

    .line 33
    iget-object v0, p0, Lcom/lge/android/atservice/SetcomAlarmHandler;->cursorQuery:Landroid/database/Cursor;

    if-nez v0, :cond_25

    .line 34
    const/4 v0, -0x1

    return v0

    .line 36
    :cond_25
    iget-object v0, p0, Lcom/lge/android/atservice/SetcomAlarmHandler;->cursorQuery:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 37
    const-string/jumbo v0, "SetcomAT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AlarmCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return v6
.end method

.method private getAlarmInfo(I)Ljava/lang/String;
    .registers 12
    .param p1, "id"    # I

    .prologue
    const/4 v4, 0x0

    .line 43
    const/4 v9, 0x0

    .line 44
    .local v9, "responseString":Ljava/lang/String;
    move v8, p1

    .line 46
    .local v8, "req_id":I
    const/4 v0, 0x1

    if-ge v8, v0, :cond_a

    .line 47
    const-string/jumbo v0, "Invalid ID"

    return-object v0

    .line 50
    :cond_a
    sget-object v0, Lcom/lge/android/atservice/SetcomAlarmHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/android/atservice/SetcomAlarmHandler;->resolver:Landroid/content/ContentResolver;

    .line 51
    iget-object v0, p0, Lcom/lge/android/atservice/SetcomAlarmHandler;->resolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "content://com.lge.clock.alarmclock.ALProvider/alarms?queryType=1"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/lge/android/atservice/SetcomAlarmHandler;->PROJECTION_1_STRINGS:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "_id ="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "hour, minutes"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/android/atservice/SetcomAlarmHandler;->cursorQuery:Landroid/database/Cursor;

    .line 53
    iget-object v0, p0, Lcom/lge/android/atservice/SetcomAlarmHandler;->cursorQuery:Landroid/database/Cursor;

    if-eqz v0, :cond_98

    .line 54
    iget-object v0, p0, Lcom/lge/android/atservice/SetcomAlarmHandler;->cursorQuery:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 55
    iget-object v0, p0, Lcom/lge/android/atservice/SetcomAlarmHandler;->cursorQuery:Landroid/database/Cursor;

    const-string/jumbo v1, "hour"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 56
    .local v6, "hourCol":I
    iget-object v0, p0, Lcom/lge/android/atservice/SetcomAlarmHandler;->cursorQuery:Landroid/database/Cursor;

    const-string/jumbo v1, "minutes"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 57
    .local v7, "minCol":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lge/android/atservice/SetcomAlarmHandler;->cursorQuery:Landroid/database/Cursor;

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/android/atservice/SetcomAlarmHandler;->cursorQuery:Landroid/database/Cursor;

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 62
    .end local v6    # "hourCol":I
    .end local v7    # "minCol":I
    .local v9, "responseString":Ljava/lang/String;
    :goto_7d
    const-string/jumbo v0, "SetcomAT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AlarmInfo : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-object v9

    .line 59
    .local v9, "responseString":Ljava/lang/String;
    :cond_98
    const-string/jumbo v9, "Error (Query Failed)"

    .local v9, "responseString":Ljava/lang/String;
    goto :goto_7d
.end method


# virtual methods
.method public handleCmd([Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 68
    const/4 v3, 0x0

    .line 69
    .local v3, "responseString":Ljava/lang/String;
    aget-object v1, p1, v4

    .line 71
    .local v1, "p0":Ljava/lang/String;
    if-eqz p1, :cond_a

    array-length v4, p1

    const/4 v5, 0x1

    if-ge v4, v5, :cond_e

    .line 72
    :cond_a
    const-string/jumbo v3, "Null Param"

    .line 73
    .local v3, "responseString":Ljava/lang/String;
    return-object v3

    .line 76
    .local v3, "responseString":Ljava/lang/String;
    :cond_e
    const-string/jumbo v4, "SetcomAT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "===Params[0] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-direct {p0}, Lcom/lge/android/atservice/SetcomAlarmHandler;->getAlarmCount()I

    move-result v0

    .line 79
    .local v0, "alarmCount":I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_33

    .line 80
    const-string/jumbo v3, "Error (Query Failed)"

    .line 81
    .local v3, "responseString":Ljava/lang/String;
    return-object v3

    .line 84
    .local v3, "responseString":Ljava/lang/String;
    :cond_33
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "NR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 85
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, "responseString":Ljava/lang/String;
    :goto_44
    return-object v3

    .line 87
    .local v3, "responseString":Ljava/lang/String;
    :cond_45
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 89
    .local v2, "req_id":I
    if-ltz v2, :cond_54

    if-ge v2, v0, :cond_54

    .line 90
    add-int/lit8 v4, v2, 0x1

    invoke-direct {p0, v4}, Lcom/lge/android/atservice/SetcomAlarmHandler;->getAlarmInfo(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "responseString":Ljava/lang/String;
    goto :goto_44

    .line 92
    .local v3, "responseString":Ljava/lang/String;
    :cond_54
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Plz input valid value. From 1 to"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "responseString":Ljava/lang/String;
    goto :goto_44
.end method
