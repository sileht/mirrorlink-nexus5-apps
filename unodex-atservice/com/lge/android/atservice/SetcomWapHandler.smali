.class public Lcom/lge/android/atservice/SetcomWapHandler;
.super Lcom/lge/android/atservice/ATCmdHandler;
.source "SetcomWapHandler.java"


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/lge/android/atservice/ATCmdHandler;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/lge/android/atservice/SetcomWapHandler;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method

.method static GetBookmarkCount(Landroid/content/Context;)Ljava/lang/String;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 70
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 71
    .local v7, "cursor":Landroid/database/Cursor;
    const-string/jumbo v9, ""

    .line 72
    .local v9, "responseString":Ljava/lang/String;
    const/4 v6, 0x0

    .line 76
    .local v6, "bookmarkCount":I
    :try_start_9
    sget-object v1, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    .line 77
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "url"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "folder = 0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 76
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 79
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_23

    .line 80
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 82
    :cond_23
    const-string/jumbo v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_33} :catch_3a
    .catchall {:try_start_9 .. :try_end_33} :catchall_59

    move-result-object v9

    .line 86
    if-eqz v7, :cond_39

    .line 87
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 91
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_39
    :goto_39
    return-object v9

    .line 83
    :catch_3a
    move-exception v8

    .line 84
    .local v8, "e":Ljava/lang/Exception;
    :try_start_3b
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
    :try_end_52
    .catchall {:try_start_3b .. :try_end_52} :catchall_59

    move-result-object v9

    .line 86
    if-eqz v7, :cond_39

    .line 87
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_39

    .line 85
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_59
    move-exception v1

    .line 86
    if-eqz v7, :cond_5f

    .line 87
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 85
    :cond_5f
    throw v1
.end method

.method static getAllServiceMSG(Landroid/content/Context;)I
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    const/4 v7, 0x0

    .line 96
    .local v7, "count":I
    const/4 v6, 0x0

    .line 99
    .local v6, "c":Landroid/database/Cursor;
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "LgeMsgType = 1 OR LgeMsgType = 2"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 101
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_18

    .line 102
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_17
    .catchall {:try_start_2 .. :try_end_17} :catchall_1e

    move-result v7

    .line 105
    :cond_18
    if-eqz v6, :cond_1d

    .line 106
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 110
    :cond_1d
    return v7

    .line 104
    .end local v6    # "c":Landroid/database/Cursor;
    :catchall_1e
    move-exception v0

    .line 105
    if-eqz v6, :cond_24

    .line 106
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 104
    :cond_24
    throw v0
.end method

.method public static handleCmd(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v4, 0x0

    .line 29
    const/4 v10, 0x0

    .line 30
    .local v10, "responseString":Ljava/lang/String;
    array-length v0, p1

    if-le v0, v12, :cond_73

    .line 31
    aget-object v0, p1, v11

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    .line 32
    .local v8, "p1":Ljava/lang/String;
    aget-object v0, p1, v12

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    .line 33
    .local v9, "p2":Ljava/lang/String;
    const-string/jumbo v0, "UP"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 34
    const-string/jumbo v0, "NR"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 35
    const-string/jumbo v3, "usercreatesetting >= \'1\'"

    .line 36
    .local v3, "where":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v5, "_id"

    aput-object v5, v2, v11

    const-string/jumbo v5, "name"

    aput-object v5, v2, v12

    const-string/jumbo v5, "apn"

    const/4 v12, 0x2

    aput-object v5, v2, v12

    const-string/jumbo v5, "type"

    const/4 v12, 0x3

    aput-object v5, v2, v12

    const-string/jumbo v5, "protocol"

    const/4 v12, 0x4

    aput-object v5, v2, v12

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 37
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_7b

    .line 38
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 39
    .local v10, "responseString":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " cursor is NOT null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 55
    .end local v3    # "where":Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "p1":Ljava/lang/String;
    .end local v9    # "p2":Ljava/lang/String;
    .end local v10    # "responseString":Ljava/lang/String;
    :cond_73
    :goto_73
    if-nez v10, :cond_7a

    .line 56
    if-nez p1, :cond_b7

    .line 57
    const-string/jumbo v10, "parameter is null"

    .line 65
    :cond_7a
    return-object v10

    .line 41
    .restart local v3    # "where":Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "p1":Ljava/lang/String;
    .restart local v9    # "p2":Ljava/lang/String;
    .local v10, "responseString":Ljava/lang/String;
    :cond_7b
    const-string/jumbo v10, "Error (Query Failed) cursor is null"

    .line 42
    .local v10, "responseString":Ljava/lang/String;
    const-string/jumbo v0, " cursor is null"

    invoke-static {v0}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    goto :goto_73

    .line 45
    .end local v3    # "where":Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .local v10, "responseString":Ljava/lang/String;
    :cond_85
    const-string/jumbo v0, "BM"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 46
    const-string/jumbo v0, "NR"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 47
    invoke-static {p0}, Lcom/lge/android/atservice/SetcomWapHandler;->GetBookmarkCount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .local v10, "responseString":Ljava/lang/String;
    goto :goto_73

    .line 49
    .local v10, "responseString":Ljava/lang/String;
    :cond_9c
    const-string/jumbo v0, "PI"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 50
    const-string/jumbo v0, "NR"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 51
    invoke-static {p0}, Lcom/lge/android/atservice/SetcomWapHandler;->getAllServiceMSG(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .local v10, "responseString":Ljava/lang/String;
    goto :goto_73

    .line 59
    .end local v8    # "p1":Ljava/lang/String;
    .end local v9    # "p2":Ljava/lang/String;
    .end local v10    # "responseString":Ljava/lang/String;
    :cond_b7
    const-string/jumbo v10, "Invalid parameter: "

    .line 60
    .restart local v10    # "responseString":Ljava/lang/String;
    array-length v1, p1

    move v0, v11

    :goto_bc
    if-ge v0, v1, :cond_7a

    aget-object v7, p1, v0

    .line 61
    .local v7, "p":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_bc
.end method
