.class public Lcom/lge/android/atservice/SetcomSyncHandler;
.super Lcom/lge/android/atservice/ATCmdHandler;
.source "SetcomSyncHandler.java"


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/lge/android/atservice/ATCmdHandler;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/lge/android/atservice/SetcomSyncHandler;->mContext:Landroid/content/Context;

    .line 21
    return-void
.end method

.method private GetSyncCount()Ljava/lang/String;
    .registers 7

    .prologue
    .line 48
    iget-object v2, p0, Lcom/lge/android/atservice/SetcomSyncHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    .line 49
    .local v0, "accounts":[Landroid/accounts/Account;
    const-string/jumbo v2, "%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    array-length v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "requestString":Ljava/lang/String;
    return-object v1
.end method


# virtual methods
.method public handleCmd([Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 26
    const/4 v1, 0x0

    .line 28
    .local v1, "responseString":Ljava/lang/String;
    if-eqz p1, :cond_1a

    array-length v3, p1

    if-lez v3, :cond_1a

    .line 29
    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "NR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 30
    invoke-direct {p0}, Lcom/lge/android/atservice/SetcomSyncHandler;->GetSyncCount()Ljava/lang/String;

    move-result-object v1

    .line 34
    .end local v1    # "responseString":Ljava/lang/String;
    :cond_1a
    if-nez v1, :cond_21

    .line 35
    if-nez p1, :cond_22

    .line 36
    const-string/jumbo v1, "parameter is null"

    .line 44
    :cond_21
    return-object v1

    .line 38
    :cond_22
    const-string/jumbo v1, "Invalid parameter: "

    .line 39
    .local v1, "responseString":Ljava/lang/String;
    array-length v3, p1

    :goto_26
    if-ge v2, v3, :cond_21

    aget-object v0, p1, v2

    .line 40
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

    .line 39
    add-int/lit8 v2, v2, 0x1

    goto :goto_26
.end method
