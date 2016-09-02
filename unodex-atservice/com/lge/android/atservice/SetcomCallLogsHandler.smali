.class public Lcom/lge/android/atservice/SetcomCallLogsHandler;
.super Lcom/lge/android/atservice/ATCmdHandler;
.source "SetcomCallLogsHandler.java"


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/lge/android/atservice/ATCmdHandler;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/lge/android/atservice/SetcomCallLogsHandler;->mContext:Landroid/content/Context;

    .line 18
    return-void
.end method


# virtual methods
.method GetCallCount(I)Ljava/lang/String;
    .registers 12
    .param p1, "callType"    # I

    .prologue
    .line 48
    iget-object v1, p0, Lcom/lge/android/atservice/SetcomCallLogsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 49
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 50
    .local v7, "cursor":Landroid/database/Cursor;
    const-string/jumbo v9, ""

    .line 51
    .local v9, "responseString":Ljava/lang/String;
    const/4 v6, 0x0

    .line 54
    .local v6, "callCount":I
    :try_start_b
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "type"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 56
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_36

    .line 57
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 59
    :cond_36
    const-string/jumbo v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_46} :catch_4d
    .catchall {:try_start_b .. :try_end_46} :catchall_6c

    move-result-object v9

    .line 63
    if-eqz v7, :cond_4c

    .line 64
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 68
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_4c
    :goto_4c
    return-object v9

    .line 60
    :catch_4d
    move-exception v8

    .line 61
    .local v8, "e":Ljava/lang/Exception;
    :try_start_4e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ERROR : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_65
    .catchall {:try_start_4e .. :try_end_65} :catchall_6c

    move-result-object v9

    .line 63
    if-eqz v7, :cond_4c

    .line 64
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_4c

    .line 62
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_6c
    move-exception v1

    .line 63
    if-eqz v7, :cond_72

    .line 64
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 62
    :cond_72
    throw v1
.end method

.method public handleCmd([Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 23
    const/4 v1, 0x0

    .line 25
    .local v1, "responseString":Ljava/lang/String;
    if-eqz p1, :cond_1b

    array-length v3, p1

    if-lez v3, :cond_1b

    .line 26
    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "DC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 27
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/lge/android/atservice/SetcomCallLogsHandler;->GetCallCount(I)Ljava/lang/String;

    move-result-object v1

    .line 34
    .end local v1    # "responseString":Ljava/lang/String;
    :cond_1b
    :goto_1b
    if-nez v1, :cond_22

    .line 35
    if-nez p1, :cond_4d

    .line 36
    const-string/jumbo v1, "parameter is null"

    .line 44
    :cond_22
    return-object v1

    .line 28
    .restart local v1    # "responseString":Ljava/lang/String;
    :cond_23
    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "RC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 29
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/lge/android/atservice/SetcomCallLogsHandler;->GetCallCount(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "responseString":Ljava/lang/String;
    goto :goto_1b

    .line 30
    .local v1, "responseString":Ljava/lang/String;
    :cond_38
    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "MC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 31
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/lge/android/atservice/SetcomCallLogsHandler;->GetCallCount(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "responseString":Ljava/lang/String;
    goto :goto_1b

    .line 38
    .end local v1    # "responseString":Ljava/lang/String;
    :cond_4d
    const-string/jumbo v1, "Invalid parameter: "

    .line 39
    .restart local v1    # "responseString":Ljava/lang/String;
    array-length v3, p1

    :goto_51
    if-ge v2, v3, :cond_22

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

    goto :goto_51
.end method
