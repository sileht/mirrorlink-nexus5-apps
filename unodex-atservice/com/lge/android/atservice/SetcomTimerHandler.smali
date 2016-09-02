.class public Lcom/lge/android/atservice/SetcomTimerHandler;
.super Lcom/lge/android/atservice/ATCmdHandler;
.source "SetcomTimerHandler.java"


# static fields
.field private static final SETTIME:Ljava/lang/String; = "user_input_time"

.field private static final TAG:Ljava/lang/String; = "SetcomAT"

.field private static mContext:Landroid/content/Context;

.field private static mPref:Landroid/content/SharedPreferences;

.field private static myContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 17
    sput-object v0, Lcom/lge/android/atservice/SetcomTimerHandler;->mContext:Landroid/content/Context;

    .line 18
    sput-object v0, Lcom/lge/android/atservice/SetcomTimerHandler;->myContext:Landroid/content/Context;

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/lge/android/atservice/ATCmdHandler;-><init>()V

    .line 22
    sput-object p1, Lcom/lge/android/atservice/SetcomTimerHandler;->mContext:Landroid/content/Context;

    .line 21
    return-void
.end method

.method private getTimerCount()I
    .registers 6

    .prologue
    .line 30
    const/4 v1, 0x0

    .line 33
    .local v1, "listCount":I
    :try_start_1
    sget-object v2, Lcom/lge/android/atservice/SetcomTimerHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "com.lge.clock"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/lge/android/atservice/SetcomTimerHandler;->myContext:Landroid/content/Context;
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_d} :catch_1f

    .line 38
    :goto_d
    sget-object v2, Lcom/lge/android/atservice/SetcomTimerHandler;->myContext:Landroid/content/Context;

    const-string/jumbo v3, "TIMER_STATE"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    sput-object v2, Lcom/lge/android/atservice/SetcomTimerHandler;->mPref:Landroid/content/SharedPreferences;

    .line 39
    sget-object v2, Lcom/lge/android/atservice/SetcomTimerHandler;->mPref:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_1e

    .line 40
    const/4 v1, 0x1

    .line 43
    :cond_1e
    return v1

    .line 34
    :catch_1f
    move-exception v0

    .line 35
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_d
.end method

.method private loadSetTimePreferences()J
    .registers 5

    .prologue
    .line 26
    sget-object v0, Lcom/lge/android/atservice/SetcomTimerHandler;->mPref:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "user_input_time"

    const-wide/32 v2, 0xea60

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public handleCmd([Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 47
    const/4 v2, 0x0

    .line 48
    .local v2, "responseString":Ljava/lang/String;
    aget-object v0, p1, v4

    .line 50
    .local v0, "p0":Ljava/lang/String;
    if-eqz p1, :cond_a

    array-length v4, p1

    if-ge v4, v7, :cond_e

    .line 51
    :cond_a
    const-string/jumbo v4, "Null Param"

    return-object v4

    .line 54
    :cond_e
    const-string/jumbo v4, "SetcomAT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "===Params[0] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-direct {p0}, Lcom/lge/android/atservice/SetcomTimerHandler;->getTimerCount()I

    move-result v3

    .line 57
    .local v3, "timerCount":I
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "NR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 58
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "responseString":Ljava/lang/String;
    :goto_3d
    return-object v2

    .line 60
    .local v2, "responseString":Ljava/lang/String;
    :cond_3e
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 62
    .local v1, "req_id":I
    if-nez v1, :cond_4f

    if-ne v3, v7, :cond_4f

    .line 63
    invoke-direct {p0}, Lcom/lge/android/atservice/SetcomTimerHandler;->loadSetTimePreferences()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .local v2, "responseString":Ljava/lang/String;
    goto :goto_3d

    .line 65
    .local v2, "responseString":Ljava/lang/String;
    :cond_4f
    const-string/jumbo v2, "Please input valid value!!! (OutOfRange)"

    .local v2, "responseString":Ljava/lang/String;
    goto :goto_3d
.end method
