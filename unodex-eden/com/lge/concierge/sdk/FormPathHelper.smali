.class public Lcom/lge/concierge/sdk/FormPathHelper;
.super Ljava/lang/Object;
.source "FormPathHelper.java"


# static fields
.field private static final COL_HIERARCHY:Ljava/lang/String; = "hierarchy"

.field private static final COL_ID:Ljava/lang/String; = "_id"

.field private static final COL_LOCAL_URI:Ljava/lang/String; = "uri"

.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static final STEP_IDLE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "[Concierge][FormPathHelper]"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 16
    const-string v0, "content://com.lge.formmanager"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "forms_info"

    .line 15
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/concierge/sdk/FormPathHelper;->CONTENT_URI:Landroid/net/Uri;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static requestFormUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 26
    .local v7, "devUrl":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 27
    const-string v1, "[Concierge][FormPathHelper]"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v11, "Card for dev found in SDcard. Don\'t query formmanager. Path : "

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .end local v7    # "devUrl":Ljava/lang/String;
    :goto_3a
    return-object v7

    .line 32
    .restart local v7    # "devUrl":Ljava/lang/String;
    :cond_3b
    const-string v10, ""

    .line 33
    .local v10, "resultUrl":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 34
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 36
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x2

    :try_start_43
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v1

    const/4 v1, 0x1

    const-string v5, "uri"

    aput-object v5, v2, v1

    .line 37
    .local v2, "projection":[Ljava/lang/String;
    const-string v3, "hierarchy=? AND step=?"

    .line 38
    .local v3, "sel":Ljava/lang/String;
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 39
    aput-object p1, v4, v1

    const/4 v1, 0x1

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 41
    .local v4, "selArgs":[Ljava/lang/String;
    sget-object v1, Lcom/lge/concierge/sdk/FormPathHelper;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 42
    if-eqz v6, :cond_96

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_96

    .line 43
    const-string v1, "uri"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 44
    .local v9, "index":I
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_77
    .catch Ljava/lang/SecurityException; {:try_start_43 .. :try_end_77} :catch_9e
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_77} :catch_ac
    .catchall {:try_start_43 .. :try_end_77} :catchall_ba

    move-result-object v10

    .line 54
    .end local v9    # "index":I
    :goto_78
    if-eqz v6, :cond_7d

    .line 55
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 58
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v3    # "sel":Ljava/lang/String;
    .end local v4    # "selArgs":[Ljava/lang/String;
    :cond_7d
    :goto_7d
    const-string v1, "/"

    invoke-virtual {v10, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_94

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_94
    move-object v7, v10

    .line 61
    goto :goto_3a

    .line 46
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v3    # "sel":Ljava/lang/String;
    .restart local v4    # "selArgs":[Ljava/lang/String;
    :cond_96
    :try_start_96
    const-string v1, "[Concierge][FormPathHelper]"

    const-string v5, "Cursor move error. Failed to query URL to FormManager."

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9d
    .catch Ljava/lang/SecurityException; {:try_start_96 .. :try_end_9d} :catch_9e
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_9d} :catch_ac
    .catchall {:try_start_96 .. :try_end_9d} :catchall_ba

    goto :goto_78

    .line 48
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v3    # "sel":Ljava/lang/String;
    .end local v4    # "selArgs":[Ljava/lang/String;
    :catch_9e
    move-exception v8

    .line 49
    .local v8, "e":Ljava/lang/SecurityException;
    :try_start_9f
    const-string v1, "[Concierge][FormPathHelper]"

    const-string v5, "Failed to query URL. Check the given context is Concierge Application context."

    invoke-static {v1, v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a6
    .catchall {:try_start_9f .. :try_end_a6} :catchall_ba

    .line 54
    if-eqz v6, :cond_7d

    .line 55
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_7d

    .line 51
    .end local v8    # "e":Ljava/lang/SecurityException;
    :catch_ac
    move-exception v8

    .line 52
    .local v8, "e":Ljava/lang/Exception;
    :try_start_ad
    const-string v1, "[Concierge][FormPathHelper]"

    const-string v5, "Failed to query URL. "

    invoke-static {v1, v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b4
    .catchall {:try_start_ad .. :try_end_b4} :catchall_ba

    .line 54
    if-eqz v6, :cond_7d

    .line 55
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_7d

    .line 53
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_ba
    move-exception v1

    .line 54
    if-eqz v6, :cond_c0

    .line 55
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 57
    :cond_c0
    throw v1
.end method
