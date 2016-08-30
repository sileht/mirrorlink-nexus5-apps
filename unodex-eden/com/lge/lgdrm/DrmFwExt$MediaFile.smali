.class public Lcom/lge/lgdrm/DrmFwExt$MediaFile;
.super Ljava/lang/Object;
.source "DrmFwExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/lgdrm/DrmFwExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaFile"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/lgdrm/DrmFwExt$MediaFile$MediaFileType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFileTypeFromDrm(Ljava/lang/String;)Lcom/lge/lgdrm/DrmFwExt$MediaFile$MediaFileType;
    .registers 13
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 308
    sget-boolean v8, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v8, :cond_8

    .line 363
    :cond_7
    :goto_7
    return-object v7

    .line 311
    :cond_8
    # invokes: Lcom/lge/lgdrm/DrmFwExt;->isDRM(Ljava/lang/String;)Z
    invoke-static {p0}, Lcom/lge/lgdrm/DrmFwExt;->access$0(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 315
    invoke-static {p0}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v3

    .line 316
    .local v3, "mediaType":Landroid/media/MediaFile$MediaFileType;
    if-nez v3, :cond_1c

    .line 317
    const-string v8, "DrmFwExt"

    const-string v9, "getFileTypeFromDrm : mediaType is null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 321
    :cond_1c
    iget v8, v3, Landroid/media/MediaFile$MediaFileType;->fileType:I

    const/16 v9, 0x515

    if-lt v8, v9, :cond_7

    .line 322
    iget v8, v3, Landroid/media/MediaFile$MediaFileType;->fileType:I

    const/16 v9, 0x51a

    if-gt v8, v9, :cond_7

    .line 327
    const/4 v4, 0x0

    .line 330
    .local v4, "nFileType":I
    const/4 v8, 0x1

    :try_start_2a
    invoke-static {p0, v8}, Lcom/lge/lgdrm/DrmContent;->getContentInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 331
    .local v6, "orgMimetype":Ljava/lang/String;
    if-eqz v6, :cond_34

    .line 332
    invoke-static {v6}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v4

    .line 335
    :cond_34
    if-eqz v4, :cond_3d

    .line 336
    new-instance v8, Lcom/lge/lgdrm/DrmFwExt$MediaFile$MediaFileType;

    invoke-direct {v8, v4, v6}, Lcom/lge/lgdrm/DrmFwExt$MediaFile$MediaFileType;-><init>(ILjava/lang/String;)V

    move-object v7, v8

    goto :goto_7

    .line 340
    :cond_3d
    invoke-static {p0}, Lcom/lge/lgdrm/DrmContent;->getContentType(Ljava/lang/String;)I

    move-result v0

    .line 342
    .local v0, "contentType":I
    const/4 v8, 0x2

    invoke-static {p0, v8}, Lcom/lge/lgdrm/DrmContent;->getContentInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 344
    .local v2, "extension":Ljava/lang/String;
    if-eqz v2, :cond_7

    .line 345
    if-eq v0, v10, :cond_4f

    .line 346
    if-eq v0, v11, :cond_4f

    .line 347
    const/4 v8, 0x3

    if-ne v0, v8, :cond_7

    .line 352
    :cond_4f
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 354
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "."

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v5

    .line 355
    .local v5, "orgMediaType":Landroid/media/MediaFile$MediaFileType;
    if-eqz v5, :cond_7

    .line 356
    new-instance v8, Lcom/lge/lgdrm/DrmFwExt$MediaFile$MediaFileType;

    iget v9, v5, Landroid/media/MediaFile$MediaFileType;->fileType:I

    iget-object v10, v5, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Lcom/lge/lgdrm/DrmFwExt$MediaFile$MediaFileType;-><init>(ILjava/lang/String;)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_71} :catch_73

    move-object v7, v8

    goto :goto_7

    .line 358
    .end local v0    # "contentType":I
    .end local v2    # "extension":Ljava/lang/String;
    .end local v5    # "orgMediaType":Landroid/media/MediaFile$MediaFileType;
    .end local v6    # "orgMimetype":Ljava/lang/String;
    :catch_73
    move-exception v1

    .line 359
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method
