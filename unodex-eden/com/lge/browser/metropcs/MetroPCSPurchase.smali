.class public Lcom/lge/browser/metropcs/MetroPCSPurchase;
.super Ljava/lang/Object;
.source "MetroPCSPurchase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/browser/metropcs/MetroPCSPurchase$MMCReq;,
        Lcom/lge/browser/metropcs/MetroPCSPurchase$Purchase;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.lge.browser.metropcs"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPageUrl(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 70
    const/4 v6, 0x0

    .line 71
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "page_url"

    aput-object v0, v2, v1

    .line 72
    .local v2, "projection":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 73
    .local v3, "selection":Ljava/lang/String;
    const/4 v7, 0x0

    .line 77
    .local v7, "url":Ljava/lang/String;
    :try_start_c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cid=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-static {p1, v1}, Lcom/lge/lgdrm/DrmContent;->getContentInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 80
    sget-object v1, Lcom/lge/browser/metropcs/MetroPCSPurchase$Purchase;->CONTENT_URI:Landroid/net/Uri;

    .line 83
    const/4 v4, 0x0

    .line 84
    const/4 v5, 0x0

    move-object v0, p0

    .line 79
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 87
    if-nez v6, :cond_3f

    .line 88
    const-string v0, "BROWSER"

    const-string v1, "<MetroPCSPurchase> cursor is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_38} :catch_51
    .catchall {:try_start_c .. :try_end_38} :catchall_58

    .line 99
    if-eqz v6, :cond_3d

    .line 100
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3d
    move-object v0, v8

    .line 104
    :goto_3e
    return-object v0

    .line 92
    :cond_3f
    :try_start_3f
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 94
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_49} :catch_51
    .catchall {:try_start_3f .. :try_end_49} :catchall_58

    move-result-object v7

    .line 99
    :cond_4a
    if-eqz v6, :cond_4f

    .line 100
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4f
    :goto_4f
    move-object v0, v7

    .line 104
    goto :goto_3e

    :catch_51
    move-exception v0

    .line 99
    if-eqz v6, :cond_4f

    .line 100
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_4f

    .line 98
    :catchall_58
    move-exception v0

    .line 99
    if-eqz v6, :cond_5e

    .line 100
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 102
    :cond_5e
    throw v0
.end method
