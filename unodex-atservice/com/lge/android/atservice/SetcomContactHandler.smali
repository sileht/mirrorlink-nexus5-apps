.class public Lcom/lge/android/atservice/SetcomContactHandler;
.super Lcom/lge/android/atservice/ATCmdHandler;
.source "SetcomContactHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/android/atservice/SetcomContactHandler$1;
    }
.end annotation


# instance fields
.field contactStorageDataSize:J

.field getContactStorageDataSizeSuceeded:Z

.field public mContext:Landroid/content/Context;

.field final packageStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/lge/android/atservice/ATCmdHandler;-><init>()V

    .line 68
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/android/atservice/SetcomContactHandler;->contactStorageDataSize:J

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/android/atservice/SetcomContactHandler;->getContactStorageDataSizeSuceeded:Z

    .line 71
    new-instance v0, Lcom/lge/android/atservice/SetcomContactHandler$1;

    invoke-direct {v0, p0}, Lcom/lge/android/atservice/SetcomContactHandler$1;-><init>(Lcom/lge/android/atservice/SetcomContactHandler;)V

    iput-object v0, p0, Lcom/lge/android/atservice/SetcomContactHandler;->packageStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    .line 30
    iput-object p1, p0, Lcom/lge/android/atservice/SetcomContactHandler;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method

.method private GetContactCount()Ljava/lang/String;
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 57
    iget-object v0, p0, Lcom/lge/android/atservice/SetcomContactHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "_count"

    aput-object v3, v2, v9

    const-string/jumbo v3, "account_type <> \'com.android.contacts.sim\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 58
    .local v7, "contactCursor":Landroid/database/Cursor;
    if-nez v7, :cond_1d

    .line 59
    return-object v4

    .line 61
    :cond_1d
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 62
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 63
    .local v6, "contactCount":I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 64
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 65
    .local v8, "requestString":Ljava/lang/String;
    return-object v8
.end method

.method private GetContactSize()Ljava/lang/String;
    .registers 9

    .prologue
    .line 81
    const-wide/16 v4, 0x0

    .line 82
    .local v4, "ret":J
    iget-object v3, p0, Lcom/lge/android/atservice/SetcomContactHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 84
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/lge/android/atservice/SetcomContactHandler;->getContactStorageDataSizeSuceeded:Z

    .line 86
    new-instance v3, Ljava/lang/Thread;

    new-instance v6, Lcom/lge/android/atservice/SetcomContactHandler$2;

    invoke-direct {v6, p0, v2}, Lcom/lge/android/atservice/SetcomContactHandler$2;-><init>(Lcom/lge/android/atservice/SetcomContactHandler;Landroid/content/pm/PackageManager;)V

    invoke-direct {v3, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "cnt":I
    :goto_19
    iget-boolean v3, p0, Lcom/lge/android/atservice/SetcomContactHandler;->getContactStorageDataSizeSuceeded:Z

    if-nez v3, :cond_2a

    const/16 v3, 0x12c

    if-ge v0, v3, :cond_2a

    .line 95
    const-wide/16 v6, 0xa

    :try_start_23
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_26} :catch_29

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 96
    :catch_29
    move-exception v1

    .line 102
    :cond_2a
    iget-boolean v3, p0, Lcom/lge/android/atservice/SetcomContactHandler;->getContactStorageDataSizeSuceeded:Z

    if-eqz v3, :cond_30

    .line 103
    iget-wide v4, p0, Lcom/lge/android/atservice/SetcomContactHandler;->contactStorageDataSize:J

    .line 106
    :cond_30
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public handleCmd([Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 34
    const/4 v1, 0x0

    .line 36
    .local v1, "responseString":Ljava/lang/String;
    if-eqz p1, :cond_1a

    array-length v3, p1

    if-lez v3, :cond_1a

    .line 37
    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "NR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 38
    invoke-direct {p0}, Lcom/lge/android/atservice/SetcomContactHandler;->GetContactCount()Ljava/lang/String;

    move-result-object v1

    .line 43
    .end local v1    # "responseString":Ljava/lang/String;
    :cond_1a
    :goto_1a
    if-nez v1, :cond_21

    .line 44
    if-nez p1, :cond_36

    .line 45
    const-string/jumbo v1, "parameter is null"

    .line 53
    :cond_21
    return-object v1

    .line 39
    .restart local v1    # "responseString":Ljava/lang/String;
    :cond_22
    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "SZ"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 40
    invoke-direct {p0}, Lcom/lge/android/atservice/SetcomContactHandler;->GetContactSize()Ljava/lang/String;

    move-result-object v1

    .local v1, "responseString":Ljava/lang/String;
    goto :goto_1a

    .line 47
    .end local v1    # "responseString":Ljava/lang/String;
    :cond_36
    const-string/jumbo v1, "Invalid parameter: "

    .line 48
    .restart local v1    # "responseString":Ljava/lang/String;
    array-length v3, p1

    :goto_3a
    if-ge v2, v3, :cond_21

    aget-object v0, p1, v2

    .line 49
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

    .line 48
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a
.end method
