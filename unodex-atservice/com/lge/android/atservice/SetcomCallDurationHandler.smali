.class public Lcom/lge/android/atservice/SetcomCallDurationHandler;
.super Lcom/lge/android/atservice/ATCmdHandler;
.source "SetcomCallDurationHandler.java"


# static fields
.field private static final DIVIDER_HOUR:J = 0x36ee80L

.field private static final DIVIDER_MIN:J = 0xea60L

.field private static final DIVIDER_SEC:J = 0x3e8L

.field public static final PREF_ALL_CALL:Ljava/lang/String; = "allCall"

.field public static final PREF_CALL_DURATION:Ljava/lang/String; = "PrefCallDuration"

.field public static final PREF_LAST_CALL:Ljava/lang/String; = "lastCall"

.field public static final PREF_MO_CALL:Ljava/lang/String; = "moCall"

.field public static final PREF_MT_CALL:Ljava/lang/String; = "mtCall"


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/lge/android/atservice/ATCmdHandler;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/lge/android/atservice/SetcomCallDurationHandler;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method

.method private GetCallDuration(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 63
    const-string/jumbo v4, ""

    .line 64
    .local v4, "responseString":Ljava/lang/String;
    const/4 v3, 0x0

    .line 66
    .local v3, "myContext":Landroid/content/Context;
    :try_start_4
    iget-object v6, p0, Lcom/lge/android/atservice/SetcomCallDurationHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "com.android.phone"

    const/4 v8, 0x6

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    .line 67
    .local v3, "myContext":Landroid/content/Context;
    const-string/jumbo v6, "PrefCallDuration"

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 68
    .local v5, "settings":Landroid/content/SharedPreferences;
    const-wide/16 v6, 0x0

    invoke-interface {v5, p1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 69
    .local v0, "duration":J
    invoke-direct {p0, v0, v1}, Lcom/lge/android/atservice/SetcomCallDurationHandler;->toFormattedDuration(J)Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1f} :catch_21

    move-result-object v4

    .line 73
    .end local v0    # "duration":J
    .end local v3    # "myContext":Landroid/content/Context;
    .end local v5    # "settings":Landroid/content/SharedPreferences;
    :goto_20
    return-object v4

    .line 70
    :catch_21
    move-exception v2

    .line 71
    .local v2, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ERROR : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_20
.end method

.method private final toFormattedDuration(J)Ljava/lang/String;
    .registers 16
    .param p1, "duration"    # J

    .prologue
    .line 81
    const-wide/32 v8, 0x36ee80

    div-long v8, p1, v8

    long-to-int v0, v8

    .line 82
    .local v0, "hour":I
    const-wide/32 v8, 0x36ee80

    rem-long v8, p1, v8

    const-wide/32 v10, 0xea60

    div-long/2addr v8, v10

    long-to-int v1, v8

    .line 83
    .local v1, "minute":I
    const-wide/32 v8, 0xea60

    rem-long v8, p1, v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    long-to-int v3, v8

    .line 85
    .local v3, "second":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 86
    .local v4, "time_hour":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 87
    .local v5, "time_min":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 88
    .local v6, "time_sec":Ljava/lang/String;
    const/16 v7, 0xa

    if-ge v0, v7, :cond_49

    .line 89
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 91
    :cond_49
    const/16 v7, 0xa

    if-ge v1, v7, :cond_61

    .line 92
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 94
    :cond_61
    const/16 v7, 0xa

    if-ge v3, v7, :cond_79

    .line 95
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 98
    :cond_79
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, "retValue":Ljava/lang/String;
    return-object v2
.end method


# virtual methods
.method public handleCmd([Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 35
    const/4 v1, 0x0

    .line 37
    .local v1, "responseString":Ljava/lang/String;
    if-eqz p1, :cond_1d

    array-length v3, p1

    if-lez v3, :cond_1d

    .line 38
    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "LC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 39
    const-string/jumbo v3, "lastCall"

    invoke-direct {p0, v3}, Lcom/lge/android/atservice/SetcomCallDurationHandler;->GetCallDuration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    .end local v1    # "responseString":Ljava/lang/String;
    :cond_1d
    :goto_1d
    if-nez v1, :cond_24

    .line 50
    if-nez p1, :cond_6a

    .line 51
    const-string/jumbo v1, "parameter is null"

    .line 59
    :cond_24
    return-object v1

    .line 40
    .restart local v1    # "responseString":Ljava/lang/String;
    :cond_25
    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "DC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 41
    const-string/jumbo v3, "moCall"

    invoke-direct {p0, v3}, Lcom/lge/android/atservice/SetcomCallDurationHandler;->GetCallDuration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "responseString":Ljava/lang/String;
    goto :goto_1d

    .line 42
    .local v1, "responseString":Ljava/lang/String;
    :cond_3c
    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "RC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 43
    const-string/jumbo v3, "mtCall"

    invoke-direct {p0, v3}, Lcom/lge/android/atservice/SetcomCallDurationHandler;->GetCallDuration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "responseString":Ljava/lang/String;
    goto :goto_1d

    .line 44
    .local v1, "responseString":Ljava/lang/String;
    :cond_53
    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "AC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 45
    const-string/jumbo v3, "allCall"

    invoke-direct {p0, v3}, Lcom/lge/android/atservice/SetcomCallDurationHandler;->GetCallDuration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "responseString":Ljava/lang/String;
    goto :goto_1d

    .line 53
    .end local v1    # "responseString":Ljava/lang/String;
    :cond_6a
    const-string/jumbo v1, "Invalid parameter: "

    .line 54
    .restart local v1    # "responseString":Ljava/lang/String;
    array-length v3, p1

    :goto_6e
    if-ge v2, v3, :cond_24

    aget-object v0, p1, v2

    .line 55
    .local v0, "p":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 54
    add-int/lit8 v2, v2, 0x1

    goto :goto_6e
.end method
