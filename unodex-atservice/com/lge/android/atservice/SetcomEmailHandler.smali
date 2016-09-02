.class public Lcom/lge/android/atservice/SetcomEmailHandler;
.super Lcom/lge/android/atservice/ATCmdHandler;
.source "SetcomEmailHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/android/atservice/SetcomEmailHandler$Mailbox;,
        Lcom/lge/android/atservice/SetcomEmailHandler$Message;
    }
.end annotation


# static fields
.field private static final COLUMN_ID:Ljava/lang/String; = "_id"

.field private static CONTENT_URI:Landroid/net/Uri;

.field private static CONTENT_URI_ACCOUNT:Landroid/net/Uri;

.field private static CONTENT_URI_MAILBOX:Landroid/net/Uri;

.field private static CONTENT_URI_MESSAGE:Landroid/net/Uri;

.field private static CONTENT_URI_MESSAGE_COMBINEDBOX:Landroid/net/Uri;

.field private static CONTENT_URI_MESSAGE_EXTERNAL:Landroid/net/Uri;

.field private static EMAIL_AUTHORITY:Ljava/lang/String;


# instance fields
.field private isNewVersion:Z

.field public mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 27
    const-string/jumbo v0, "com.lge.providers.lgemail"

    sput-object v0, Lcom/lge/android/atservice/SetcomEmailHandler;->EMAIL_AUTHORITY:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/lge/android/atservice/SetcomEmailHandler;->EMAIL_AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/android/atservice/SetcomEmailHandler;->CONTENT_URI:Landroid/net/Uri;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/lge/android/atservice/SetcomEmailHandler;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/message"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/android/atservice/SetcomEmailHandler;->CONTENT_URI_MESSAGE_EXTERNAL:Landroid/net/Uri;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/lge/android/atservice/SetcomEmailHandler;->CONTENT_URI_MESSAGE_EXTERNAL:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/combinedBox"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/android/atservice/SetcomEmailHandler;->CONTENT_URI_MESSAGE_COMBINEDBOX:Landroid/net/Uri;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/lge/android/atservice/SetcomEmailHandler;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/account"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/android/atservice/SetcomEmailHandler;->CONTENT_URI_ACCOUNT:Landroid/net/Uri;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/lge/android/atservice/SetcomEmailHandler;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/message_internal"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/android/atservice/SetcomEmailHandler;->CONTENT_URI_MESSAGE:Landroid/net/Uri;

    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/android/atservice/SetcomEmailHandler;->CONTENT_URI_MAILBOX:Landroid/net/Uri;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/lge/android/atservice/ATCmdHandler;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/android/atservice/SetcomEmailHandler;->isNewVersion:Z

    .line 54
    iput-object p1, p0, Lcom/lge/android/atservice/SetcomEmailHandler;->mContext:Landroid/content/Context;

    .line 56
    const-string/jumbo v0, "4.2"

    const-string/jumbo v1, "ro.lge.lguiversion"

    const-string/jumbo v2, "4.1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/android/atservice/SetcomEmailHandler;->isNewVersion:Z

    .line 59
    const-string/jumbo v0, "com.lge.email.provider"

    sput-object v0, Lcom/lge/android/atservice/SetcomEmailHandler;->EMAIL_AUTHORITY:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/lge/android/atservice/SetcomEmailHandler;->EMAIL_AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/android/atservice/SetcomEmailHandler;->CONTENT_URI:Landroid/net/Uri;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/lge/android/atservice/SetcomEmailHandler;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/message"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/android/atservice/SetcomEmailHandler;->CONTENT_URI_MESSAGE:Landroid/net/Uri;

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/lge/android/atservice/SetcomEmailHandler;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/account"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/android/atservice/SetcomEmailHandler;->CONTENT_URI_ACCOUNT:Landroid/net/Uri;

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/lge/android/atservice/SetcomEmailHandler;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/mailbox"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/android/atservice/SetcomEmailHandler;->CONTENT_URI_MAILBOX:Landroid/net/Uri;

    .line 53
    :cond_93
    return-void
.end method

.method private GetEmailAccountCount()Ljava/lang/String;
    .registers 13

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 95
    const/4 v6, 0x0

    .line 96
    .local v6, "count":I
    const/4 v7, 0x0

    .line 99
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_4
    iget-boolean v0, p0, Lcom/lge/android/atservice/SetcomEmailHandler;->isNewVersion:Z

    if-nez v0, :cond_3b

    .line 100
    iget-object v0, p0, Lcom/lge/android/atservice/SetcomEmailHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/android/atservice/SetcomEmailHandler;->CONTENT_URI_ACCOUNT:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "accountID"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 101
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_26

    .line 102
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_25} :catch_61
    .catchall {:try_start_4 .. :try_end_25} :catchall_6b

    move-result v6

    .line 114
    :cond_26
    :goto_26
    if-eqz v7, :cond_2b

    .line 115
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 118
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_2b
    :goto_2b
    const-string/jumbo v0, "%d"

    new-array v1, v11, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v10

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 119
    .local v9, "requestString":Ljava/lang/String;
    return-object v9

    .line 106
    .end local v9    # "requestString":Ljava/lang/String;
    .local v7, "cursor":Landroid/database/Cursor;
    :cond_3b
    :try_start_3b
    iget-object v0, p0, Lcom/lge/android/atservice/SetcomEmailHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/android/atservice/SetcomEmailHandler;->CONTENT_URI_ACCOUNT:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "COUNT(_id)"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 107
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_26

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 108
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_5f} :catch_61
    .catchall {:try_start_3b .. :try_end_5f} :catchall_6b

    move-result v6

    goto :goto_26

    .line 111
    .end local v7    # "cursor":Landroid/database/Cursor;
    :catch_61
    move-exception v8

    .line 112
    .local v8, "e":Ljava/lang/Exception;
    :try_start_62
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_6b

    .line 114
    if-eqz v7, :cond_2b

    .line 115
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2b

    .line 113
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_6b
    move-exception v0

    .line 114
    if-eqz v7, :cond_71

    .line 115
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 113
    :cond_71
    throw v0
.end method

.method private getInboxSize(I)I
    .registers 16
    .param p1, "inboxId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 181
    const/4 v13, 0x0

    .line 182
    .local v13, "sizeSum":I
    const/4 v10, 0x0

    .line 184
    .local v10, "cursor":Landroid/database/Cursor;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "msgBoxID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " and bodyMarkedForDownload = 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 185
    .local v3, "selection":Ljava/lang/String;
    new-array v12, v4, [Ljava/lang/String;

    const-string/jumbo v0, "sum(msgSize)"

    aput-object v0, v12, v2

    .line 188
    .local v12, "projections":[Ljava/lang/String;
    :try_start_26
    iget-boolean v0, p0, Lcom/lge/android/atservice/SetcomEmailHandler;->isNewVersion:Z

    if-nez v0, :cond_54

    .line 189
    iget-object v0, p0, Lcom/lge/android/atservice/SetcomEmailHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/android/atservice/SetcomEmailHandler;->CONTENT_URI_MESSAGE:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "sum(msgSize)"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 194
    .local v10, "cursor":Landroid/database/Cursor;
    :goto_41
    if-eqz v10, :cond_50

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 195
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_4d} :catch_78
    .catchall {:try_start_26 .. :try_end_4d} :catchall_80

    move-result v0

    add-int/lit8 v13, v0, 0x0

    .line 200
    :cond_50
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 203
    .end local v10    # "cursor":Landroid/database/Cursor;
    :goto_53
    return v13

    .line 191
    .local v10, "cursor":Landroid/database/Cursor;
    :cond_54
    :try_start_54
    iget-object v0, p0, Lcom/lge/android/atservice/SetcomEmailHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/lge/android/atservice/SetcomEmailHandler;->CONTENT_URI_MESSAGE:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const-string/jumbo v0, "sum(msgSize)"

    const/4 v1, 0x0

    aput-object v0, v6, v1

    .line 192
    const-string/jumbo v7, "mailboxKey=?"

    const/4 v0, 0x1

    new-array v8, v0, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v8, v1

    const/4 v9, 0x0

    .line 191
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_76} :catch_78
    .catchall {:try_start_54 .. :try_end_76} :catchall_80

    move-result-object v10

    .local v10, "cursor":Landroid/database/Cursor;
    goto :goto_41

    .line 197
    .end local v10    # "cursor":Landroid/database/Cursor;
    :catch_78
    move-exception v11

    .line 198
    .local v11, "e":Ljava/lang/Exception;
    :try_start_79
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7c
    .catchall {:try_start_79 .. :try_end_7c} :catchall_80

    .line 200
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_53

    .line 199
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_80
    move-exception v0

    .line 200
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 199
    throw v0
.end method

.method private getTotalCnt()I
    .registers 12

    .prologue
    .line 123
    const-string/jumbo v10, "folderType=2"

    .line 124
    .local v10, "selection_old":Ljava/lang/String;
    const-string/jumbo v9, "mailboxKey IN  ( SELECT _id FROM Mailbox WHERE type IN ( 0 )  ) "

    .line 131
    .local v9, "selection_new":Ljava/lang/String;
    const/4 v6, 0x0

    .line 132
    .local v6, "count":I
    const/4 v7, 0x0

    .line 135
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_8
    iget-boolean v0, p0, Lcom/lge/android/atservice/SetcomEmailHandler;->isNewVersion:Z

    if-nez v0, :cond_39

    .line 136
    iget-object v0, p0, Lcom/lge/android/atservice/SetcomEmailHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/android/atservice/SetcomEmailHandler;->CONTENT_URI_MESSAGE_COMBINEDBOX:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "count(*) AS count"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "folderType=2"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 140
    .local v7, "cursor":Landroid/database/Cursor;
    :goto_26
    if-eqz v7, :cond_33

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 141
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_32} :catch_54
    .catchall {:try_start_8 .. :try_end_32} :catchall_5e

    move-result v6

    .line 146
    :cond_33
    if-eqz v7, :cond_38

    .line 147
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 151
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_38
    :goto_38
    return v6

    .line 138
    .local v7, "cursor":Landroid/database/Cursor;
    :cond_39
    :try_start_39
    iget-object v0, p0, Lcom/lge/android/atservice/SetcomEmailHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/android/atservice/SetcomEmailHandler;->CONTENT_URI_MESSAGE:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "COUNT(_id)"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "mailboxKey IN  ( SELECT _id FROM Mailbox WHERE type IN ( 0 )  ) "

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_52} :catch_54
    .catchall {:try_start_39 .. :try_end_52} :catchall_5e

    move-result-object v7

    .local v7, "cursor":Landroid/database/Cursor;
    goto :goto_26

    .line 143
    .end local v7    # "cursor":Landroid/database/Cursor;
    :catch_54
    move-exception v8

    .line 144
    .local v8, "e":Ljava/lang/Exception;
    :try_start_55
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_5e

    .line 146
    if-eqz v7, :cond_38

    .line 147
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_38

    .line 145
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_5e
    move-exception v0

    .line 146
    if-eqz v7, :cond_64

    .line 147
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 145
    :cond_64
    throw v0
.end method

.method private getTotalInboxSize()I
    .registers 12

    .prologue
    .line 155
    const/4 v9, 0x0

    .line 156
    .local v9, "sizeSum":I
    const/4 v6, 0x0

    .line 159
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_2
    iget-boolean v0, p0, Lcom/lge/android/atservice/SetcomEmailHandler;->isNewVersion:Z

    if-nez v0, :cond_3a

    .line 160
    iget-object v0, p0, Lcom/lge/android/atservice/SetcomEmailHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/android/atservice/SetcomEmailHandler;->CONTENT_URI_ACCOUNT:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "inboxId"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 165
    .local v6, "cursor":Landroid/database/Cursor;
    :goto_1e
    if-eqz v6, :cond_36

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 167
    :cond_26
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 168
    .local v8, "inboxId":I
    invoke-direct {p0, v8}, Lcom/lge/android/atservice/SetcomEmailHandler;->getInboxSize(I)I

    move-result v0

    add-int/2addr v9, v0

    .line 169
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_33} :catch_5f
    .catchall {:try_start_2 .. :try_end_33} :catchall_67

    move-result v0

    if-nez v0, :cond_26

    .line 174
    .end local v8    # "inboxId":I
    :cond_36
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 177
    .end local v6    # "cursor":Landroid/database/Cursor;
    :goto_39
    return v9

    .line 162
    .local v6, "cursor":Landroid/database/Cursor;
    :cond_3a
    :try_start_3a
    iget-object v0, p0, Lcom/lge/android/atservice/SetcomEmailHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/android/atservice/SetcomEmailHandler;->CONTENT_URI_MAILBOX:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "_id"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "type=?"

    .line 163
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x0

    aput-object v5, v4, v10

    const/4 v5, 0x0

    .line 162
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_5d} :catch_5f
    .catchall {:try_start_3a .. :try_end_5d} :catchall_67

    move-result-object v6

    .local v6, "cursor":Landroid/database/Cursor;
    goto :goto_1e

    .line 171
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_5f
    move-exception v7

    .line 172
    .local v7, "e":Ljava/lang/Exception;
    :try_start_60
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_67

    .line 174
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_39

    .line 173
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_67
    move-exception v0

    .line 174
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 173
    throw v0
.end method


# virtual methods
.method public handleCmd([Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 68
    const/4 v1, 0x0

    .line 70
    .local v1, "responseString":Ljava/lang/String;
    if-eqz p1, :cond_1a

    array-length v3, p1

    if-lez v3, :cond_1a

    .line 71
    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "NR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 72
    invoke-direct {p0}, Lcom/lge/android/atservice/SetcomEmailHandler;->GetEmailAccountCount()Ljava/lang/String;

    move-result-object v1

    .line 81
    .end local v1    # "responseString":Ljava/lang/String;
    :cond_1a
    :goto_1a
    if-nez v1, :cond_21

    .line 82
    if-nez p1, :cond_6a

    .line 83
    const-string/jumbo v1, "parameter is null"

    .line 91
    :cond_21
    return-object v1

    .line 73
    .restart local v1    # "responseString":Ljava/lang/String;
    :cond_22
    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "SZ"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 74
    invoke-direct {p0}, Lcom/lge/android/atservice/SetcomEmailHandler;->getTotalCnt()I

    move-result v3

    if-lez v3, :cond_66

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Value :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/lge/android/atservice/SetcomEmailHandler;->getTotalCnt()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/lge/android/atservice/SetcomEmailHandler;->getTotalInboxSize()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " KB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "responseString":Ljava/lang/String;
    goto :goto_1a

    .line 77
    .local v1, "responseString":Ljava/lang/String;
    :cond_66
    const-string/jumbo v1, "Value :0, 0 KB"

    .local v1, "responseString":Ljava/lang/String;
    goto :goto_1a

    .line 85
    .end local v1    # "responseString":Ljava/lang/String;
    :cond_6a
    const-string/jumbo v1, "Invalid parameter: "

    .line 86
    .restart local v1    # "responseString":Ljava/lang/String;
    array-length v3, p1

    :goto_6e
    if-ge v2, v3, :cond_21

    aget-object v0, p1, v2

    .line 87
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

    .line 86
    add-int/lit8 v2, v2, 0x1

    goto :goto_6e
.end method
