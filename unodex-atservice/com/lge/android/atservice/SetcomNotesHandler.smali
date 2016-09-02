.class public Lcom/lge/android/atservice/SetcomNotesHandler;
.super Lcom/lge/android/atservice/ATCmdHandler;
.source "SetcomNotesHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/android/atservice/SetcomNotesHandler$StoredNotesSize;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.lge.app.richnote"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final RICHNOTE_MAX_CNT:I = 0x12c


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-string/jumbo v0, "content://com.lge.app.richnote/notes"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/android/atservice/SetcomNotesHandler;->CONTENT_URI:Landroid/net/Uri;

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/lge/android/atservice/ATCmdHandler;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/lge/android/atservice/SetcomNotesHandler;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method

.method public static getTotalFilesSizeUnderDir(Ljava/io/File;Lcom/lge/android/atservice/SetcomNotesHandler$StoredNotesSize;)V
    .registers 10
    .param p0, "aStartingDir"    # Ljava/io/File;
    .param p1, "size"    # Lcom/lge/android/atservice/SetcomNotesHandler$StoredNotesSize;

    .prologue
    .line 115
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 116
    .local v2, "filesAndDirs":[Ljava/io/File;
    if-nez v2, :cond_7

    .line 117
    return-void

    .line 119
    :cond_7
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 121
    .local v3, "filesDirs":Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 122
    .local v4, "filesIter":Ljava/util/Iterator;
    const/4 v0, 0x0

    .line 123
    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_38

    .line 125
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 127
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v5

    if-nez v5, :cond_26

    .line 128
    invoke-static {v0, p1}, Lcom/lge/android/atservice/SetcomNotesHandler;->getTotalFilesSizeUnderDir(Ljava/io/File;Lcom/lge/android/atservice/SetcomNotesHandler$StoredNotesSize;)V

    goto :goto_10

    .line 133
    :cond_26
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 134
    .local v1, "file_size":I
    iget v5, p1, Lcom/lge/android/atservice/SetcomNotesHandler$StoredNotesSize;->value:I

    add-int/2addr v5, v1

    iput v5, p1, Lcom/lge/android/atservice/SetcomNotesHandler$StoredNotesSize;->value:I

    goto :goto_10

    .line 112
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "file_size":I
    :cond_38
    return-void
.end method


# virtual methods
.method GetStoredNotesCount()Ljava/lang/String;
    .registers 11

    .prologue
    .line 79
    const/4 v6, 0x0

    .line 80
    .local v6, "cursor":Landroid/database/Cursor;
    const-string/jumbo v8, ""

    .line 81
    .local v8, "responseString":Ljava/lang/String;
    const/4 v1, 0x0

    .line 82
    .local v1, "uri":Landroid/net/Uri;
    const/4 v9, 0x0

    .line 84
    .local v9, "storedNotesCount":I
    iget-object v2, p0, Lcom/lge/android/atservice/SetcomNotesHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 85
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v2, Lcom/lge/android/atservice/SetcomNotesHandler;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 89
    .local v1, "uri":Landroid/net/Uri;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_1a
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 91
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_24

    .line 93
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 95
    :cond_24
    const-string/jumbo v2, "%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_34} :catch_3b
    .catchall {:try_start_1a .. :try_end_34} :catchall_5a

    move-result-object v8

    .line 103
    if-eqz v6, :cond_3a

    .line 105
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 109
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_3a
    :goto_3a
    return-object v8

    .line 98
    :catch_3b
    move-exception v7

    .line 99
    .local v7, "e":Ljava/lang/Exception;
    :try_start_3c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ERROR : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_53
    .catchall {:try_start_3c .. :try_end_53} :catchall_5a

    move-result-object v8

    .line 103
    if-eqz v6, :cond_3a

    .line 105
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3a

    .line 102
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_5a
    move-exception v2

    .line 103
    if-eqz v6, :cond_60

    .line 105
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 102
    :cond_60
    throw v2
.end method

.method public handleCmd([Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 43
    const/4 v6, 0x0

    .line 45
    .local v6, "responseString":Ljava/lang/String;
    if-eqz p1, :cond_1a

    array-length v9, p1

    if-lez v9, :cond_1a

    .line 47
    aget-object v9, p1, v8

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "NR"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_22

    .line 49
    invoke-virtual {p0}, Lcom/lge/android/atservice/SetcomNotesHandler;->GetStoredNotesCount()Ljava/lang/String;

    move-result-object v6

    .line 64
    .end local v6    # "responseString":Ljava/lang/String;
    :cond_1a
    :goto_1a
    if-nez v6, :cond_21

    .line 65
    if-nez p1, :cond_69

    .line 66
    const-string/jumbo v6, "parameter is null"

    .line 74
    :cond_21
    return-object v6

    .line 51
    .restart local v6    # "responseString":Ljava/lang/String;
    :cond_22
    aget-object v9, p1, v8

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "SZ"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 53
    new-instance v7, Lcom/lge/android/atservice/SetcomNotesHandler$StoredNotesSize;

    invoke-direct {v7, p0, v8}, Lcom/lge/android/atservice/SetcomNotesHandler$StoredNotesSize;-><init>(Lcom/lge/android/atservice/SetcomNotesHandler;I)V

    .line 54
    .local v7, "size":Lcom/lge/android/atservice/SetcomNotesHandler$StoredNotesSize;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v9, "/mnt/sdcard/Memo"

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    .local v1, "fileNote":Ljava/io/File;
    invoke-static {v1, v7}, Lcom/lge/android/atservice/SetcomNotesHandler;->getTotalFilesSizeUnderDir(Ljava/io/File;Lcom/lge/android/atservice/SetcomNotesHandler$StoredNotesSize;)V

    .line 57
    const-string/jumbo v5, "####.##"

    .line 58
    .local v5, "pattern":Ljava/lang/String;
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, "dFormat":Ljava/text/DecimalFormat;
    iget v9, v7, Lcom/lge/android/atservice/SetcomNotesHandler$StoredNotesSize;->value:I

    int-to-double v10, v9

    const-wide/high16 v12, 0x4090000000000000L    # 1024.0

    div-double v2, v10, v12

    .line 60
    .local v2, "data":D
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, "responseString":Ljava/lang/String;
    goto :goto_1a

    .line 68
    .end local v0    # "dFormat":Ljava/text/DecimalFormat;
    .end local v1    # "fileNote":Ljava/io/File;
    .end local v2    # "data":D
    .end local v5    # "pattern":Ljava/lang/String;
    .end local v6    # "responseString":Ljava/lang/String;
    .end local v7    # "size":Lcom/lge/android/atservice/SetcomNotesHandler$StoredNotesSize;
    :cond_69
    const-string/jumbo v6, "Invalid parameter: "

    .line 69
    .restart local v6    # "responseString":Ljava/lang/String;
    array-length v9, p1

    :goto_6d
    if-ge v8, v9, :cond_21

    aget-object v4, p1, v8

    .line 70
    .local v4, "p":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 69
    add-int/lit8 v8, v8, 0x1

    goto :goto_6d
.end method
