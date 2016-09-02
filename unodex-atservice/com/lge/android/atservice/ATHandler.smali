.class public Lcom/lge/android/atservice/ATHandler;
.super Ljava/lang/Object;
.source "ATHandler.java"


# instance fields
.field private mATParser:Lcom/lge/android/atservice/ATParser;

.field private mContext:Landroid/content/Context;

.field private mHandlerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/android/atservice/ATCmdHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mMTCHandler:Lcom/lge/android/atservice/MTCHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/lge/android/atservice/ATHandler;->mContext:Landroid/content/Context;

    .line 22
    new-instance v0, Lcom/lge/android/atservice/ATParser;

    invoke-direct {v0}, Lcom/lge/android/atservice/ATParser;-><init>()V

    iput-object v0, p0, Lcom/lge/android/atservice/ATHandler;->mATParser:Lcom/lge/android/atservice/ATParser;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/android/atservice/ATHandler;->mHandlerList:Ljava/util/List;

    .line 25
    iget-object v0, p0, Lcom/lge/android/atservice/ATHandler;->mHandlerList:Ljava/util/List;

    new-instance v1, Lcom/lge/android/atservice/SetcomAlarmHandler;

    invoke-direct {v1, p1}, Lcom/lge/android/atservice/SetcomAlarmHandler;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v0, p0, Lcom/lge/android/atservice/ATHandler;->mHandlerList:Ljava/util/List;

    new-instance v1, Lcom/lge/android/atservice/SetcomBluetoothHandler;

    invoke-direct {v1, p1}, Lcom/lge/android/atservice/SetcomBluetoothHandler;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object v0, p0, Lcom/lge/android/atservice/ATHandler;->mHandlerList:Ljava/util/List;

    new-instance v1, Lcom/lge/android/atservice/SetcomCallDurationHandler;

    invoke-direct {v1, p1}, Lcom/lge/android/atservice/SetcomCallDurationHandler;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object v0, p0, Lcom/lge/android/atservice/ATHandler;->mHandlerList:Ljava/util/List;

    new-instance v1, Lcom/lge/android/atservice/SetcomCallLogsHandler;

    invoke-direct {v1, p1}, Lcom/lge/android/atservice/SetcomCallLogsHandler;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object v0, p0, Lcom/lge/android/atservice/ATHandler;->mHandlerList:Ljava/util/List;

    new-instance v1, Lcom/lge/android/atservice/SetcomContactHandler;

    invoke-direct {v1, p1}, Lcom/lge/android/atservice/SetcomContactHandler;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object v0, p0, Lcom/lge/android/atservice/ATHandler;->mHandlerList:Ljava/util/List;

    new-instance v1, Lcom/lge/android/atservice/SetcomDownloadedContentHandler;

    invoke-direct {v1, p1}, Lcom/lge/android/atservice/SetcomDownloadedContentHandler;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object v0, p0, Lcom/lge/android/atservice/ATHandler;->mHandlerList:Ljava/util/List;

    new-instance v1, Lcom/lge/android/atservice/SetcomEmailHandler;

    invoke-direct {v1, p1}, Lcom/lge/android/atservice/SetcomEmailHandler;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object v0, p0, Lcom/lge/android/atservice/ATHandler;->mHandlerList:Ljava/util/List;

    new-instance v1, Lcom/lge/android/atservice/SetcomHandler;

    invoke-direct {v1, p1}, Lcom/lge/android/atservice/SetcomHandler;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object v0, p0, Lcom/lge/android/atservice/ATHandler;->mHandlerList:Ljava/util/List;

    new-instance v1, Lcom/lge/android/atservice/SetcomMessageHandler;

    invoke-direct {v1, p1}, Lcom/lge/android/atservice/SetcomMessageHandler;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v0, p0, Lcom/lge/android/atservice/ATHandler;->mHandlerList:Ljava/util/List;

    new-instance v1, Lcom/lge/android/atservice/SetcomNotesHandler;

    invoke-direct {v1, p1}, Lcom/lge/android/atservice/SetcomNotesHandler;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v0, p0, Lcom/lge/android/atservice/ATHandler;->mHandlerList:Ljava/util/List;

    new-instance v1, Lcom/lge/android/atservice/SetcomPacketDataHandler;

    invoke-direct {v1, p1}, Lcom/lge/android/atservice/SetcomPacketDataHandler;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object v0, p0, Lcom/lge/android/atservice/ATHandler;->mHandlerList:Ljava/util/List;

    new-instance v1, Lcom/lge/android/atservice/SetcomSettingsHandler;

    invoke-direct {v1, p1}, Lcom/lge/android/atservice/SetcomSettingsHandler;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v0, p0, Lcom/lge/android/atservice/ATHandler;->mHandlerList:Ljava/util/List;

    new-instance v1, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;

    invoke-direct {v1, p1}, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v0, p0, Lcom/lge/android/atservice/ATHandler;->mHandlerList:Ljava/util/List;

    new-instance v1, Lcom/lge/android/atservice/SetcomSIMContactHandler;

    invoke-direct {v1, p1}, Lcom/lge/android/atservice/SetcomSIMContactHandler;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v0, p0, Lcom/lge/android/atservice/ATHandler;->mHandlerList:Ljava/util/List;

    new-instance v1, Lcom/lge/android/atservice/SetcomSyncHandler;

    invoke-direct {v1, p1}, Lcom/lge/android/atservice/SetcomSyncHandler;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v0, p0, Lcom/lge/android/atservice/ATHandler;->mHandlerList:Ljava/util/List;

    new-instance v1, Lcom/lge/android/atservice/SetcomTaskHandler;

    invoke-direct {v1, p1}, Lcom/lge/android/atservice/SetcomTaskHandler;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object v0, p0, Lcom/lge/android/atservice/ATHandler;->mHandlerList:Ljava/util/List;

    new-instance v1, Lcom/lge/android/atservice/SetcomTimerHandler;

    invoke-direct {v1, p1}, Lcom/lge/android/atservice/SetcomTimerHandler;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v0, p0, Lcom/lge/android/atservice/ATHandler;->mHandlerList:Ljava/util/List;

    new-instance v1, Lcom/lge/android/atservice/SetcomWapHandler;

    invoke-direct {v1, p1}, Lcom/lge/android/atservice/SetcomWapHandler;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v0, p0, Lcom/lge/android/atservice/ATHandler;->mHandlerList:Ljava/util/List;

    new-instance v1, Lcom/lge/android/atservice/SetcomReminderHandler;

    invoke-direct {v1, p1}, Lcom/lge/android/atservice/SetcomReminderHandler;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    return-void
.end method

.method private handleATCMD()Ljava/lang/String;
    .registers 8

    .prologue
    .line 63
    sget-object v4, Lcom/lge/android/atservice/ATCmdHandler$Status;->ERROR:Lcom/lge/android/atservice/ATCmdHandler$Status;

    .line 64
    .local v4, "status":Lcom/lge/android/atservice/ATCmdHandler$Status;
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 65
    .local v3, "result":Ljava/lang/String;
    iget-object v5, p0, Lcom/lge/android/atservice/ATHandler;->mATParser:Lcom/lge/android/atservice/ATParser;

    invoke-virtual {v5}, Lcom/lge/android/atservice/ATParser;->getCommand()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "atCmd":Ljava/lang/String;
    iget-object v5, p0, Lcom/lge/android/atservice/ATHandler;->mHandlerList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 67
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/android/atservice/ATCmdHandler;>;"
    new-instance v1, Lcom/lge/android/atservice/ATCmdHandler;

    invoke-direct {v1}, Lcom/lge/android/atservice/ATCmdHandler;-><init>()V

    .line 68
    .local v1, "handler":Lcom/lge/android/atservice/ATCmdHandler;
    :cond_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 69
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "handler":Lcom/lge/android/atservice/ATCmdHandler;
    check-cast v1, Lcom/lge/android/atservice/ATCmdHandler;

    .line 70
    .restart local v1    # "handler":Lcom/lge/android/atservice/ATCmdHandler;
    invoke-virtual {v1}, Lcom/lge/android/atservice/ATCmdHandler;->command()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 71
    iget-object v5, p0, Lcom/lge/android/atservice/ATHandler;->mATParser:Lcom/lge/android/atservice/ATParser;

    invoke-virtual {v5}, Lcom/lge/android/atservice/ATParser;->getAction()Lcom/lge/android/atservice/ATParser$AtCmdAction;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/android/atservice/ATHandler;->mATParser:Lcom/lge/android/atservice/ATParser;

    invoke-virtual {v6}, Lcom/lge/android/atservice/ATParser;->getParams()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v0, v5, v6}, Lcom/lge/android/atservice/ATCmdHandler;->request(Ljava/lang/String;Lcom/lge/android/atservice/ATParser$AtCmdAction;[Ljava/lang/String;)Lcom/lge/android/atservice/ATCmdHandler$Status;

    move-result-object v4

    .line 75
    :cond_3e
    sget-object v5, Lcom/lge/android/atservice/ATCmdHandler$Status;->OK:Lcom/lge/android/atservice/ATCmdHandler$Status;

    if-ne v4, v5, :cond_5b

    .line 76
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/lge/android/atservice/ATCmdHandler;->getResult()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\r\nOK\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 81
    :goto_5a
    return-object v3

    .line 78
    :cond_5b
    const-string/jumbo v3, "ERROR\r\n"

    goto :goto_5a
.end method

.method private printAtCmd()V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 85
    const-string/jumbo v3, "LGATCMDService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "AtAct: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/android/atservice/ATHandler;->mATParser:Lcom/lge/android/atservice/ATParser;

    invoke-virtual {v5}, Lcom/lge/android/atservice/ATParser;->getAction()Lcom/lge/android/atservice/ATParser$AtCmdAction;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", AtCmd: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/android/atservice/ATHandler;->mATParser:Lcom/lge/android/atservice/ATParser;

    invoke-virtual {v5}, Lcom/lge/android/atservice/ATParser;->getCommand()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v3, p0, Lcom/lge/android/atservice/ATHandler;->mATParser:Lcom/lge/android/atservice/ATParser;

    invoke-virtual {v3}, Lcom/lge/android/atservice/ATParser;->getParams()[Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "params":[Ljava/lang/String;
    if-eqz v1, :cond_5f

    array-length v3, v1

    if-lez v3, :cond_5f

    .line 88
    array-length v3, v1

    :goto_3e
    if-ge v2, v3, :cond_5f

    aget-object v0, v1, v2

    .line 89
    .local v0, "param":Ljava/lang/String;
    const-string/jumbo v4, "LGATCMDService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "AtParam : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    .line 84
    .end local v0    # "param":Ljava/lang/String;
    :cond_5f
    return-void
.end method


# virtual methods
.method public request(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "atCmd"    # Ljava/lang/String;

    .prologue
    .line 47
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "ERROR\r\n"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 48
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/lge/android/atservice/ATHandler;->mATParser:Lcom/lge/android/atservice/ATParser;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/android/atservice/ATParser;->parse(Ljava/lang/String;)Lcom/lge/android/atservice/ATParser$AtCmdStatus;

    move-result-object v1

    sget-object v2, Lcom/lge/android/atservice/ATParser$AtCmdStatus;->OK:Lcom/lge/android/atservice/ATParser$AtCmdStatus;

    if-ne v1, v2, :cond_22

    .line 49
    sget-boolean v1, Lcom/lge/android/atservice/Debug;->mDebug:Z

    if-eqz v1, :cond_1d

    .line 50
    invoke-direct {p0}, Lcom/lge/android/atservice/ATHandler;->printAtCmd()V

    .line 52
    :cond_1d
    invoke-direct {p0}, Lcom/lge/android/atservice/ATHandler;->handleATCMD()Ljava/lang/String;

    move-result-object v0

    .line 56
    :goto_21
    return-object v0

    .line 54
    :cond_22
    const-string/jumbo v1, "Error while parsing AT Command string"

    invoke-static {v1}, Lcom/lge/android/atservice/Debug;->LogE(Ljava/lang/String;)V

    goto :goto_21
.end method

.method public send(Ljava/lang/String;)V
    .registers 2
    .param p1, "atcmd"    # Ljava/lang/String;

    .prologue
    .line 59
    return-void
.end method
