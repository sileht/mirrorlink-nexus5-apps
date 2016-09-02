.class public Lcom/lge/android/atservice/SetcomHandler;
.super Lcom/lge/android/atservice/ATCmdHandler;
.source "SetcomHandler.java"


# static fields
.field static final COMMAND:Ljava/lang/String; = "SETCOM"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/lge/android/atservice/ATCmdHandler;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/lge/android/atservice/SetcomHandler;->mContext:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method public handleCmd([BI[B)I
    .registers 15
    .param p1, "request"    # [B
    .param p2, "length"    # I
    .param p3, "response"    # [B

    .prologue
    const/4 v10, 0x0

    .line 26
    const/4 v6, 0x0

    .line 27
    .local v6, "responseString":Ljava/lang/String;
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1, v10, p2}, Ljava/lang/String;-><init>([BII)V

    .line 28
    .local v5, "requestString":Ljava/lang/String;
    new-instance v7, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v8, 0x2c

    invoke-direct {v7, v8}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 29
    .local v7, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v7, v5}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 30
    invoke-interface {v7}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 31
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_60

    .line 32
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, "cmd":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    const/4 v8, 0x2

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    .local v3, "paramList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_43

    .line 35
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 37
    :cond_43
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    new-array v4, v8, [Ljava/lang/String;

    .line 38
    .local v4, "params":[Ljava/lang/String;
    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 39
    const-string/jumbo v8, "AT+CTACT"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6f

    .line 40
    new-instance v8, Lcom/lge/android/atservice/SetcomContactHandler;

    iget-object v9, p0, Lcom/lge/android/atservice/SetcomHandler;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/lge/android/atservice/SetcomContactHandler;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v4}, Lcom/lge/android/atservice/SetcomContactHandler;->handleCmd([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 80
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v3    # "paramList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "params":[Ljava/lang/String;
    .end local v6    # "responseString":Ljava/lang/String;
    :cond_60
    :goto_60
    if-nez v6, :cond_65

    .line 81
    const-string/jumbo v6, "Unhandled error"

    .line 84
    :cond_65
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 85
    .local v0, "buffer":[B
    array-length v8, v0

    invoke-static {v0, v10, p3, v10, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 86
    array-length v8, v0

    return v8

    .line 41
    .end local v0    # "buffer":[B
    .restart local v1    # "cmd":Ljava/lang/String;
    .restart local v3    # "paramList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "params":[Ljava/lang/String;
    .restart local v6    # "responseString":Ljava/lang/String;
    :cond_6f
    const-string/jumbo v8, "AT+CCLGS"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_84

    .line 42
    new-instance v8, Lcom/lge/android/atservice/SetcomCallLogsHandler;

    iget-object v9, p0, Lcom/lge/android/atservice/SetcomHandler;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/lge/android/atservice/SetcomCallLogsHandler;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v4}, Lcom/lge/android/atservice/SetcomCallLogsHandler;->handleCmd([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "responseString":Ljava/lang/String;
    goto :goto_60

    .line 43
    .local v6, "responseString":Ljava/lang/String;
    :cond_84
    const-string/jumbo v8, "AT+CDUR"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_99

    .line 44
    new-instance v8, Lcom/lge/android/atservice/SetcomCallDurationHandler;

    iget-object v9, p0, Lcom/lge/android/atservice/SetcomHandler;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/lge/android/atservice/SetcomCallDurationHandler;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v4}, Lcom/lge/android/atservice/SetcomCallDurationHandler;->handleCmd([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "responseString":Ljava/lang/String;
    goto :goto_60

    .line 45
    .local v6, "responseString":Ljava/lang/String;
    :cond_99
    const-string/jumbo v8, "AT+CDVOL"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a7

    .line 46
    invoke-static {v4}, Lcom/lge/android/atservice/SetcomPacketDataHandler;->handleCmd([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "responseString":Ljava/lang/String;
    goto :goto_60

    .line 47
    .local v6, "responseString":Ljava/lang/String;
    :cond_a7
    const-string/jumbo v8, "AT+CEMAIL"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_bc

    .line 48
    new-instance v8, Lcom/lge/android/atservice/SetcomEmailHandler;

    iget-object v9, p0, Lcom/lge/android/atservice/SetcomHandler;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/lge/android/atservice/SetcomEmailHandler;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v4}, Lcom/lge/android/atservice/SetcomEmailHandler;->handleCmd([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "responseString":Ljava/lang/String;
    goto :goto_60

    .line 49
    .local v6, "responseString":Ljava/lang/String;
    :cond_bc
    const-string/jumbo v8, "AT+CWAP"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_cc

    .line 50
    iget-object v8, p0, Lcom/lge/android/atservice/SetcomHandler;->mContext:Landroid/content/Context;

    invoke-static {v8, v4}, Lcom/lge/android/atservice/SetcomWapHandler;->handleCmd(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "responseString":Ljava/lang/String;
    goto :goto_60

    .line 51
    .local v6, "responseString":Ljava/lang/String;
    :cond_cc
    const-string/jumbo v8, "AT+CDCONT"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e1

    .line 52
    new-instance v8, Lcom/lge/android/atservice/SetcomDownloadedContentHandler;

    iget-object v9, p0, Lcom/lge/android/atservice/SetcomHandler;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/lge/android/atservice/SetcomDownloadedContentHandler;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v4}, Lcom/lge/android/atservice/SetcomDownloadedContentHandler;->handleCmd([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "responseString":Ljava/lang/String;
    goto :goto_60

    .line 53
    .local v6, "responseString":Ljava/lang/String;
    :cond_e1
    const-string/jumbo v8, "AT+CSYNC"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f7

    .line 54
    new-instance v8, Lcom/lge/android/atservice/SetcomSyncHandler;

    iget-object v9, p0, Lcom/lge/android/atservice/SetcomHandler;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/lge/android/atservice/SetcomSyncHandler;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v4}, Lcom/lge/android/atservice/SetcomSyncHandler;->handleCmd([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "responseString":Ljava/lang/String;
    goto/16 :goto_60

    .line 55
    .local v6, "responseString":Ljava/lang/String;
    :cond_f7
    const-string/jumbo v8, "AT+CBLTH"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_106

    .line 56
    invoke-static {v4}, Lcom/lge/android/atservice/SetcomBluetoothHandler;->handleCmd([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "responseString":Ljava/lang/String;
    goto/16 :goto_60

    .line 57
    .local v6, "responseString":Ljava/lang/String;
    :cond_106
    const-string/jumbo v8, "AT+CALRM"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11c

    .line 58
    new-instance v8, Lcom/lge/android/atservice/SetcomAlarmHandler;

    iget-object v9, p0, Lcom/lge/android/atservice/SetcomHandler;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/lge/android/atservice/SetcomAlarmHandler;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v4}, Lcom/lge/android/atservice/SetcomAlarmHandler;->handleCmd([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "responseString":Ljava/lang/String;
    goto/16 :goto_60

    .line 59
    .local v6, "responseString":Ljava/lang/String;
    :cond_11c
    const-string/jumbo v8, "AT+CTMRV"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_132

    .line 60
    new-instance v8, Lcom/lge/android/atservice/SetcomTimerHandler;

    iget-object v9, p0, Lcom/lge/android/atservice/SetcomHandler;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/lge/android/atservice/SetcomTimerHandler;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v4}, Lcom/lge/android/atservice/SetcomTimerHandler;->handleCmd([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "responseString":Ljava/lang/String;
    goto/16 :goto_60

    .line 61
    .local v6, "responseString":Ljava/lang/String;
    :cond_132
    const-string/jumbo v8, "AT+CSMCT"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_148

    .line 62
    new-instance v8, Lcom/lge/android/atservice/SetcomSIMContactHandler;

    iget-object v9, p0, Lcom/lge/android/atservice/SetcomHandler;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/lge/android/atservice/SetcomSIMContactHandler;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v4}, Lcom/lge/android/atservice/SetcomSIMContactHandler;->handleCmd([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "responseString":Ljava/lang/String;
    goto/16 :goto_60

    .line 63
    .local v6, "responseString":Ljava/lang/String;
    :cond_148
    const-string/jumbo v8, "AT+CNPAD"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15e

    .line 64
    new-instance v8, Lcom/lge/android/atservice/SetcomNotesHandler;

    iget-object v9, p0, Lcom/lge/android/atservice/SetcomHandler;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/lge/android/atservice/SetcomNotesHandler;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v4}, Lcom/lge/android/atservice/SetcomNotesHandler;->handleCmd([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "responseString":Ljava/lang/String;
    goto/16 :goto_60

    .line 65
    .local v6, "responseString":Ljava/lang/String;
    :cond_15e
    const-string/jumbo v8, "AT+CTASK"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_174

    .line 66
    new-instance v8, Lcom/lge/android/atservice/SetcomTaskHandler;

    iget-object v9, p0, Lcom/lge/android/atservice/SetcomHandler;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/lge/android/atservice/SetcomTaskHandler;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v4}, Lcom/lge/android/atservice/SetcomTaskHandler;->handleCmd([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "responseString":Ljava/lang/String;
    goto/16 :goto_60

    .line 67
    .local v6, "responseString":Ljava/lang/String;
    :cond_174
    const-string/jumbo v8, "AT+CMSG"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18a

    .line 68
    new-instance v8, Lcom/lge/android/atservice/SetcomMessageHandler;

    iget-object v9, p0, Lcom/lge/android/atservice/SetcomHandler;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/lge/android/atservice/SetcomMessageHandler;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v4}, Lcom/lge/android/atservice/SetcomMessageHandler;->handleCmd([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "responseString":Ljava/lang/String;
    goto/16 :goto_60

    .line 69
    .local v6, "responseString":Ljava/lang/String;
    :cond_18a
    const-string/jumbo v8, "AT+CTBCPS"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a0

    .line 70
    new-instance v8, Lcom/lge/android/atservice/SetcomSettingsHandler;

    iget-object v9, p0, Lcom/lge/android/atservice/SetcomHandler;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/lge/android/atservice/SetcomSettingsHandler;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v4}, Lcom/lge/android/atservice/SetcomSettingsHandler;->handleCmd([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "responseString":Ljava/lang/String;
    goto/16 :goto_60

    .line 71
    .local v6, "responseString":Ljava/lang/String;
    :cond_1a0
    const-string/jumbo v8, "AT+CRST"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b6

    .line 72
    new-instance v8, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;

    iget-object v9, p0, Lcom/lge/android/atservice/SetcomHandler;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v4}, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->handleCmd([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "responseString":Ljava/lang/String;
    goto/16 :goto_60

    .line 73
    .local v6, "responseString":Ljava/lang/String;
    :cond_1b6
    const-string/jumbo v8, "AT+CRMIND"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1cc

    .line 74
    new-instance v8, Lcom/lge/android/atservice/SetcomReminderHandler;

    iget-object v9, p0, Lcom/lge/android/atservice/SetcomHandler;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/lge/android/atservice/SetcomReminderHandler;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v4}, Lcom/lge/android/atservice/SetcomReminderHandler;->handleCmd([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "responseString":Ljava/lang/String;
    goto/16 :goto_60

    .line 76
    .local v6, "responseString":Ljava/lang/String;
    :cond_1cc
    const-string/jumbo v6, "unimplemented command"

    .local v6, "responseString":Ljava/lang/String;
    goto/16 :goto_60
.end method
