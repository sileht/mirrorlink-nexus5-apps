.class public Lcom/lge/media/RingtoneManagerEx$InterTypeDeclaration;
.super Ljava/lang/Object;
.source "RingtoneManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/media/RingtoneManagerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InterTypeDeclaration"
.end annotation

.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/media/RingtoneManagerEx$InterTypeDeclaration;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 397
    :try_start_0
    invoke-static {}, Lcom/lge/media/RingtoneManagerEx$InterTypeDeclaration;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/media/RingtoneManagerEx$InterTypeDeclaration;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_media_RingtoneManagerEx$InterTypeDeclaration$android_provider_Settings$System$DEFAULT_RINGTONE()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_media_RingtoneManagerEx$InterTypeDeclaration$android_provider_Settings$System$MAX_NUM_RINGTONES()I
    .registers 1

    sget v0, Landroid/provider/Settings$System;->MAX_NUM_RINGTONES:I

    return v0
.end method

.method public static ajc$interFieldInit$com_lge_media_RingtoneManagerEx$InterTypeDeclaration$android_provider_Settings$System$DEFAULT_RINGTONE()V
    .registers 1

    .prologue
    .line 404
    const-string v0, "ringtone_default"

    invoke-static {v0}, Lcom/lge/media/RingtoneManagerEx$InterTypeDeclaration;->ajc$interFieldSetDispatch$com_lge_media_RingtoneManagerEx$InterTypeDeclaration$android_provider_Settings$System$DEFAULT_RINGTONE(Ljava/lang/String;)V

    return-void
.end method

.method public static ajc$interFieldInit$com_lge_media_RingtoneManagerEx$InterTypeDeclaration$android_provider_Settings$System$MAX_NUM_RINGTONES()V
    .registers 1

    .prologue
    .line 413
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/lge/media/RingtoneManagerEx$InterTypeDeclaration;->ajc$interFieldSetDispatch$com_lge_media_RingtoneManagerEx$InterTypeDeclaration$android_provider_Settings$System$MAX_NUM_RINGTONES(I)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_media_RingtoneManagerEx$InterTypeDeclaration$android_provider_Settings$System$DEFAULT_RINGTONE(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE:Ljava/lang/String;

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_media_RingtoneManagerEx$InterTypeDeclaration$android_provider_Settings$System$MAX_NUM_RINGTONES(I)V
    .registers 1

    sput p0, Landroid/provider/Settings$System;->MAX_NUM_RINGTONES:I

    return-void
.end method

.method public static ajc$interMethod$com_lge_media_RingtoneManagerEx$InterTypeDeclaration$android_media_RingtoneManager$getActualRingtoneUriBySubId(Landroid/content/Context;I)Landroid/net/Uri;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    const/4 v8, 0x0

    .line 475
    if-ltz p1, :cond_7

    sget v0, Landroid/provider/Settings$System;->MAX_NUM_RINGTONES:I

    if-lt p1, v0, :cond_8

    .line 504
    :cond_7
    :goto_7
    return-object v8

    .line 479
    :cond_8
    if-nez p1, :cond_3d

    .line 480
    const-string v9, "ringtone"

    .line 485
    :goto_c
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 486
    .local v10, "uriString":Ljava/lang/String;
    if-eqz v10, :cond_7

    .line 490
    invoke-static {p0}, Lcom/lge/media/RingtoneManagerEx$InterTypeDeclaration;->getStaticDefaultRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v8

    .line 491
    .local v8, "ringToneUri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 493
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_1b
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 494
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 493
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 495
    if-eqz v6, :cond_37

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_37

    .line 496
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_36
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1b .. :try_end_36} :catch_4f
    .catchall {:try_start_1b .. :try_end_36} :catchall_6c

    move-result-object v8

    .line 501
    :cond_37
    if-eqz v6, :cond_7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_7

    .line 482
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "ringToneUri":Landroid/net/Uri;
    .end local v10    # "uriString":Ljava/lang/String;
    :cond_3d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ringtone_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .local v9, "setting":Ljava/lang/String;
    goto :goto_c

    .line 498
    .end local v9    # "setting":Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "ringToneUri":Landroid/net/Uri;
    .restart local v10    # "uriString":Ljava/lang/String;
    :catch_4f
    move-exception v7

    .line 499
    .local v7, "ex":Landroid/database/sqlite/SQLiteException;
    :try_start_50
    invoke-static {}, Landroid/media/RingtoneManager;->ajc$get$TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ex "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catchall {:try_start_50 .. :try_end_66} :catchall_6c

    .line 501
    if-eqz v6, :cond_7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_7

    .line 500
    .end local v7    # "ex":Landroid/database/sqlite/SQLiteException;
    :catchall_6c
    move-exception v0

    .line 501
    if-eqz v6, :cond_72

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 502
    :cond_72
    throw v0
.end method

.method public static ajc$interMethod$com_lge_media_RingtoneManagerEx$InterTypeDeclaration$android_media_RingtoneManager$getDefaultRingtoneSubIdByUri(Landroid/net/Uri;)I
    .registers 5
    .param p0, "defaultRingtoneUri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, -0x1

    .line 426
    if-nez p0, :cond_4

    .line 446
    :cond_3
    :goto_3
    return v2

    .line 435
    :cond_4
    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 436
    const/4 v2, 0x0

    goto :goto_3

    .line 438
    :cond_e
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 439
    .local v1, "uriString":Ljava/lang/String;
    const/4 v0, -0x1

    .line 440
    .local v0, "parsedSubId":I
    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 441
    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 442
    if-lez v0, :cond_3

    sget v3, Landroid/provider/Settings$System;->MAX_NUM_RINGTONES:I

    if-gt v0, v3, :cond_3

    .line 443
    add-int/lit8 v2, v0, -0x1

    goto :goto_3
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_media_RingtoneManagerEx$InterTypeDeclaration$android_media_RingtoneManager$getActualRingtoneUriBySubId(Landroid/content/Context;I)Landroid/net/Uri;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getActualRingtoneUriBySubId(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_media_RingtoneManagerEx$InterTypeDeclaration$android_media_RingtoneManager$getDefaultRingtoneSubIdByUri(Landroid/net/Uri;)I
    .registers 2
    .param p0, "defaultRingtoneUri"    # Landroid/net/Uri;

    .prologue
    invoke-static {p0}, Landroid/media/RingtoneManager;->getDefaultRingtoneSubIdByUri(Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/media/RingtoneManagerEx$InterTypeDeclaration;

    invoke-direct {v0}, Lcom/lge/media/RingtoneManagerEx$InterTypeDeclaration;-><init>()V

    sput-object v0, Lcom/lge/media/RingtoneManagerEx$InterTypeDeclaration;->ajc$perSingletonInstance:Lcom/lge/media/RingtoneManagerEx$InterTypeDeclaration;

    return-void
.end method

.method public static aspectOf()Lcom/lge/media/RingtoneManagerEx$InterTypeDeclaration;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/media/RingtoneManagerEx$InterTypeDeclaration;->ajc$perSingletonInstance:Lcom/lge/media/RingtoneManagerEx$InterTypeDeclaration;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_media_RingtoneManagerEx$InterTypeDeclaration"

    sget-object v2, Lcom/lge/media/RingtoneManagerEx$InterTypeDeclaration;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/media/RingtoneManagerEx$InterTypeDeclaration;->ajc$perSingletonInstance:Lcom/lge/media/RingtoneManagerEx$InterTypeDeclaration;

    return-object v0
.end method

.method public static getStaticDefaultRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 460
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_RINGTONE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 459
    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 461
    .local v0, "uriString":Ljava/lang/String;
    if-eqz v0, :cond_15

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_14
    return-object v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/media/RingtoneManagerEx$InterTypeDeclaration;->ajc$perSingletonInstance:Lcom/lge/media/RingtoneManagerEx$InterTypeDeclaration;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
