.class public Lcom/lge/android/atservice/SetcomReminderHandler;
.super Lcom/lge/android/atservice/ATCmdHandler;
.source "SetcomReminderHandler.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "content://com.android.calendar/"

.field public static final CONTENT_URI:Landroid/net/Uri;


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-string/jumbo v0, "content://com.android.calendar/reminders"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/android/atservice/SetcomReminderHandler;->CONTENT_URI:Landroid/net/Uri;

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/lge/android/atservice/ATCmdHandler;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/lge/android/atservice/SetcomReminderHandler;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method public GetStoredReminderCount(Landroid/content/Context;)Ljava/lang/String;
    .registers 12
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 54
    const/4 v6, 0x0

    .line 55
    .local v6, "cursor":Landroid/database/Cursor;
    const-string/jumbo v8, ""

    .line 56
    .local v8, "responseString":Ljava/lang/String;
    const/4 v1, 0x0

    .line 57
    .local v1, "uri":Landroid/net/Uri;
    const/4 v9, 0x0

    .line 59
    .local v9, "storedReminderCount":I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 60
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v2, Lcom/lge/android/atservice/SetcomReminderHandler;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 63
    .local v1, "uri":Landroid/net/Uri;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_18
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 64
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_22

    .line 65
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 67
    :cond_22
    const-string/jumbo v2, "%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_32} :catch_39
    .catchall {:try_start_18 .. :try_end_32} :catchall_58

    move-result-object v8

    .line 71
    if-eqz v6, :cond_38

    .line 72
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 75
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_38
    :goto_38
    return-object v8

    .line 68
    :catch_39
    move-exception v7

    .line 69
    .local v7, "e":Ljava/lang/Exception;
    :try_start_3a
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
    :try_end_51
    .catchall {:try_start_3a .. :try_end_51} :catchall_58

    move-result-object v8

    .line 71
    if-eqz v6, :cond_38

    .line 72
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_38

    .line 70
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_58
    move-exception v2

    .line 71
    if-eqz v6, :cond_5e

    .line 72
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 70
    :cond_5e
    throw v2
.end method

.method public handleCmd([Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 32
    const/4 v1, 0x0

    .line 34
    .local v1, "responseString":Ljava/lang/String;
    if-eqz p1, :cond_1c

    array-length v3, p1

    if-lez v3, :cond_1c

    .line 35
    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "NR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 36
    iget-object v3, p0, Lcom/lge/android/atservice/SetcomReminderHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/lge/android/atservice/SetcomReminderHandler;->GetStoredReminderCount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 40
    .end local v1    # "responseString":Ljava/lang/String;
    :cond_1c
    :goto_1c
    if-nez v1, :cond_23

    .line 41
    if-nez p1, :cond_34

    .line 42
    const-string/jumbo v1, "parameter is null"

    .line 50
    :cond_23
    return-object v1

    .line 37
    .restart local v1    # "responseString":Ljava/lang/String;
    :cond_24
    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "SZ"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    goto :goto_1c

    .line 44
    .end local v1    # "responseString":Ljava/lang/String;
    :cond_34
    const-string/jumbo v1, "Invalid parameter: "

    .line 45
    .local v1, "responseString":Ljava/lang/String;
    array-length v3, p1

    :goto_38
    if-ge v2, v3, :cond_23

    aget-object v0, p1, v2

    .line 46
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

    .line 45
    add-int/lit8 v2, v2, 0x1

    goto :goto_38
.end method
