.class public Lcom/lge/android/atservice/SetcomTaskHandler;
.super Lcom/lge/android/atservice/ATCmdHandler;
.source "SetcomTaskHandler.java"


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/lge/android/atservice/ATCmdHandler;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/lge/android/atservice/SetcomTaskHandler;->mContext:Landroid/content/Context;

    .line 19
    return-void
.end method

.method private GetRunningTaskCount()Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 47
    const-string/jumbo v3, ""

    .line 49
    .local v3, "requestString":Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/android/atservice/SetcomTaskHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 50
    .local v0, "am":Landroid/app/ActivityManager;
    const/16 v4, 0x3e8

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 51
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-nez v2, :cond_18

    .line 52
    return-object v6

    .line 54
    :cond_18
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 56
    .local v1, "count":I
    const-string/jumbo v4, "%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 57
    return-object v3
.end method


# virtual methods
.method public handleCmd([Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 24
    const/4 v1, 0x0

    .line 26
    .local v1, "responseString":Ljava/lang/String;
    if-eqz p1, :cond_1a

    array-length v3, p1

    if-lez v3, :cond_1a

    .line 28
    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "NR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 29
    invoke-direct {p0}, Lcom/lge/android/atservice/SetcomTaskHandler;->GetRunningTaskCount()Ljava/lang/String;

    move-result-object v1

    .line 33
    .end local v1    # "responseString":Ljava/lang/String;
    :cond_1a
    if-nez v1, :cond_21

    .line 34
    if-nez p1, :cond_22

    .line 35
    const-string/jumbo v1, "parameter is null"

    .line 43
    :cond_21
    return-object v1

    .line 37
    :cond_22
    const-string/jumbo v1, "Invalid parameter: "

    .line 38
    .local v1, "responseString":Ljava/lang/String;
    array-length v3, p1

    :goto_26
    if-ge v2, v3, :cond_21

    aget-object v0, p1, v2

    .line 39
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

    .line 38
    add-int/lit8 v2, v2, 0x1

    goto :goto_26
.end method
