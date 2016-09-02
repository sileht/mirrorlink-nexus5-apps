.class public final Lcom/lge/android/atservice/PriResolver;
.super Ljava/lang/Object;
.source "PriResolver.java"


# static fields
.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static final QUERY_BASE:Ljava/lang/String; = "_id is ?"

.field private static final QUERY_INDEX:Ljava/lang/String; = "offset ?"

.field private static final QUERY_MCCMNC:Ljava/lang/String; = "mnc=? and mcc=?"


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const-string/jumbo v0, "content://telephony/carriers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/android/atservice/PriResolver;->CONTENT_URI:Landroid/net/Uri;

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .registers 2
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/lge/android/atservice/PriResolver;->mContentResolver:Landroid/content/ContentResolver;

    .line 24
    return-void
.end method

.method private query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;
    .registers 13
    .param p1, "protect"    # [Ljava/lang/String;
    .param p2, "whereQuery"    # Ljava/lang/String;
    .param p3, "whereParams"    # [Ljava/lang/String;
    .param p4, "index"    # I

    .prologue
    const/4 v7, 0x0

    .line 29
    const/4 v6, 0x0

    .line 31
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_2
    iget-object v0, p0, Lcom/lge/android/atservice/PriResolver;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/lge/android/atservice/PriResolver;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_82

    move-result-object v6

    .line 32
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_16

    .line 48
    if-eqz v6, :cond_15

    .line 49
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 33
    :cond_15
    return-object v7

    .line 36
    :cond_16
    :try_start_16
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Query PRI: select="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " whereQuery="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 38
    const-string/jumbo v1, " whereParams="

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 40
    invoke-interface {v6, p4}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 42
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_6f
    .catchall {:try_start_16 .. :try_end_6f} :catchall_82

    move-result-object v0

    .line 48
    if-eqz v6, :cond_75

    .line 49
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 42
    :cond_75
    return-object v0

    .line 48
    :cond_76
    if-eqz v6, :cond_7b

    .line 49
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 44
    :cond_7b
    return-object v7

    .line 48
    :cond_7c
    if-eqz v6, :cond_81

    .line 49
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 46
    :cond_81
    return-object v7

    .line 47
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catchall_82
    move-exception v0

    .line 48
    if-eqz v6, :cond_88

    .line 49
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 47
    :cond_88
    throw v0
.end method

.method private queryId(I)Ljava/lang/String;
    .registers 10
    .param p1, "index"    # I

    .prologue
    const/4 v7, 0x0

    .line 55
    const/4 v6, 0x0

    .line 57
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_2
    iget-object v0, p0, Lcom/lge/android/atservice/PriResolver;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/lge/android/atservice/PriResolver;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "_id"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_15
    .catchall {:try_start_2 .. :try_end_15} :catchall_51

    move-result-object v6

    .line 58
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_1e

    .line 68
    if-eqz v6, :cond_1d

    .line 69
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 59
    :cond_1d
    return-object v7

    .line 62
    :cond_1e
    :try_start_1e
    invoke-interface {v6, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Query ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 64
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_44
    .catchall {:try_start_1e .. :try_end_44} :catchall_51

    move-result-object v0

    .line 68
    if-eqz v6, :cond_4a

    .line 69
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 64
    :cond_4a
    return-object v0

    .line 68
    :cond_4b
    if-eqz v6, :cond_50

    .line 69
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 66
    :cond_50
    return-object v7

    .line 67
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catchall_51
    move-exception v0

    .line 68
    if-eqz v6, :cond_57

    .line 69
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 67
    :cond_57
    throw v0
.end method


# virtual methods
.method public getString(ILjava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "index"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 75
    new-array v2, v3, [Ljava/lang/String;

    .line 76
    .local v2, "protect":[Ljava/lang/String;
    new-array v1, v3, [Ljava/lang/String;

    .line 77
    .local v1, "params":[Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/lge/android/atservice/PriResolver;->queryId(I)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "id":Ljava/lang/String;
    if-nez v0, :cond_e

    .line 80
    return-object v5

    .line 83
    :cond_e
    aput-object p2, v2, v4

    .line 84
    aput-object v0, v1, v4

    .line 86
    const-string/jumbo v3, "_id is ?"

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/lge/android/atservice/PriResolver;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "index"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "mnc"    # Ljava/lang/String;
    .param p4, "mcc"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 90
    new-array v1, v4, [Ljava/lang/String;

    .line 91
    .local v1, "protect":[Ljava/lang/String;
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    .line 93
    .local v0, "params":[Ljava/lang/String;
    aput-object p2, v1, v3

    .line 94
    aput-object p3, v0, v3

    .line 95
    aput-object p4, v0, v4

    .line 97
    const-string/jumbo v2, "mnc=? and mcc=?"

    invoke-direct {p0, v1, v2, v0, p1}, Lcom/lge/android/atservice/PriResolver;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
