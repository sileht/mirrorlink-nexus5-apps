.class public Lcom/lge/divx/DivXDRM_ControlParam;
.super Ljava/lang/Object;
.source "DivXDRM_ControlParam.java"


# static fields
.field public static final DIVXDRM_LICENSE_TYPE_IS_COUNT:I = 0x2

.field public static final DIVXDRM_LICENSE_TYPE_IS_EXPIRED:I = 0x3

.field public static final DIVXDRM_LICENSE_TYPE_IS_NOTAUTHORIZED:I = 0x4

.field public static final DIVXDRM_LICENSE_TYPE_IS_PURCHASE:I = 0x1

.field private static final LGE_MEDIAPLAYER_KEYPARAM_DIVX_DIVX_DRM_FILE:I = 0x6f000003

.field private static final LGE_MEDIAPLAYER_KEYPARAM_DIVX_LGVIDEO_PLAYER:I = 0x6f000005

.field private static final LGE_MEDIAPLAYER_KEYPARAM_DIVX_LICENSE_TYPE:I = 0x6f000004

.field private static final LGE_MEDIAPLAYER_KEYPARAM_DIVX_RENTAL_COUNT:I = 0x6f000000

.field private static final LGE_MEDIAPLAYER_KEYPARAM_DIVX_RENTAL_MSG:I = 0x6f000002

.field private static final LGE_MEDIAPLAYER_KEYPARAM_DIVX_TOTAL_COUNT:I = 0x6f000001

.field private static final TAG:Ljava/lang/String; = "DivXDRM_ControlParam"


# instance fields
.field private IS_DivXDRM:Z

.field private IS_LgeVideoPlayer:Z

.field private RentalCnt:I

.field private licenseType:I

.field private mMediaPlayer:Lcom/lge/media/MediaPlayerEx;

.field private mRentalMsg:Z

.field private totalCnt:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 140
    :try_start_0
    const-string v1, "hook_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 141
    const-string v1, "DivXDRM_ControlParam"

    const-string v2, "success to load library"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    .line 145
    .local v0, "e":Ljava/lang/Exception;
    :goto_c
    return-void

    .line 142
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_d
    move-exception v0

    .line 143
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "DivXDRM_ControlParam"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fail to load library"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method public constructor <init>(Lcom/lge/media/MediaPlayerEx;)V
    .registers 3
    .param p1, "mp"    # Lcom/lge/media/MediaPlayerEx;

    .prologue
    const/4 v0, 0x0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p1, p0, Lcom/lge/divx/DivXDRM_ControlParam;->mMediaPlayer:Lcom/lge/media/MediaPlayerEx;

    .line 161
    iput v0, p0, Lcom/lge/divx/DivXDRM_ControlParam;->RentalCnt:I

    .line 162
    iput v0, p0, Lcom/lge/divx/DivXDRM_ControlParam;->totalCnt:I

    .line 163
    iput-boolean v0, p0, Lcom/lge/divx/DivXDRM_ControlParam;->mRentalMsg:Z

    .line 164
    iput-boolean v0, p0, Lcom/lge/divx/DivXDRM_ControlParam;->IS_DivXDRM:Z

    .line 165
    iput v0, p0, Lcom/lge/divx/DivXDRM_ControlParam;->licenseType:I

    .line 166
    iput-boolean v0, p0, Lcom/lge/divx/DivXDRM_ControlParam;->IS_LgeVideoPlayer:Z

    .line 167
    return-void
.end method

.method public static native getActivationStatus()I
.end method

.method public static native getDeRegCode()Ljava/lang/String;
.end method

.method public static native getRegCode()Ljava/lang/String;
.end method


# virtual methods
.method protected finalize()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 172
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 173
    const-string v0, "DivXDRM_ControlParam"

    const-string v1, "[DIVX DRM][finalize]"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    return-void
.end method

.method public getIs_DivXDRM()Z
    .registers 6

    .prologue
    .line 280
    const-string v2, "DivXDRM_ControlParam"

    const-string v3, "[DIVX DRM][getIs_DivXDRM] START"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/4 v0, 0x0

    .line 282
    .local v0, "iIsDivXDRM":I
    iget-object v2, p0, Lcom/lge/divx/DivXDRM_ControlParam;->mMediaPlayer:Lcom/lge/media/MediaPlayerEx;

    if-eqz v2, :cond_38

    .line 284
    iget-object v2, p0, Lcom/lge/divx/DivXDRM_ControlParam;->mMediaPlayer:Lcom/lge/media/MediaPlayerEx;

    const v3, 0x6f000003

    invoke-virtual {v2, v3}, Lcom/lge/media/MediaPlayerEx;->getParcelParameter(I)Landroid/os/Parcel;

    move-result-object v1

    .line 285
    .local v1, "parcel":Landroid/os/Parcel;
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 286
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 292
    .end local v1    # "parcel":Landroid/os/Parcel;
    :goto_1c
    const-string v2, "DivXDRM_ControlParam"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[DIVX DRM][getIs_DivXDRM] IS_DivXDRM :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    if-eqz v0, :cond_40

    .line 296
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lge/divx/DivXDRM_ControlParam;->IS_DivXDRM:Z

    .line 303
    :goto_35
    iget-boolean v2, p0, Lcom/lge/divx/DivXDRM_ControlParam;->IS_DivXDRM:Z

    return v2

    .line 290
    :cond_38
    const-string v2, "DivXDRM_ControlParam"

    const-string v3, "[DIVX DRM][getIs_DivXDRM] mMediaPlayer is null!!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 300
    :cond_40
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/lge/divx/DivXDRM_ControlParam;->IS_DivXDRM:Z

    goto :goto_35
.end method

.method public getLicenseType()I
    .registers 5

    .prologue
    .line 321
    const-string v1, "DivXDRM_ControlParam"

    const-string v2, "[DIVX DRM][getLicenseType] START"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v1, p0, Lcom/lge/divx/DivXDRM_ControlParam;->mMediaPlayer:Lcom/lge/media/MediaPlayerEx;

    if-eqz v1, :cond_36

    .line 324
    iget-object v1, p0, Lcom/lge/divx/DivXDRM_ControlParam;->mMediaPlayer:Lcom/lge/media/MediaPlayerEx;

    const v2, 0x6f000004

    invoke-virtual {v1, v2}, Lcom/lge/media/MediaPlayerEx;->getParcelParameter(I)Landroid/os/Parcel;

    move-result-object v0

    .line 325
    .local v0, "parcel":Landroid/os/Parcel;
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/lge/divx/DivXDRM_ControlParam;->licenseType:I

    .line 326
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 332
    .end local v0    # "parcel":Landroid/os/Parcel;
    :goto_1d
    const-string v1, "DivXDRM_ControlParam"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[DIVX DRM][getLicenseType] licenseType :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/lge/divx/DivXDRM_ControlParam;->licenseType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget v1, p0, Lcom/lge/divx/DivXDRM_ControlParam;->licenseType:I

    return v1

    .line 330
    :cond_36
    const-string v1, "DivXDRM_ControlParam"

    const-string v2, "[DIVX DRM][getLicenseType] mMediaPlayer is null!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method

.method public getRentalCount()I
    .registers 5

    .prologue
    .line 190
    const-string v1, "DivXDRM_ControlParam"

    const-string v2, "[DIVX DRM][getRentalCount] START"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v1, p0, Lcom/lge/divx/DivXDRM_ControlParam;->mMediaPlayer:Lcom/lge/media/MediaPlayerEx;

    if-eqz v1, :cond_35

    .line 193
    iget-object v1, p0, Lcom/lge/divx/DivXDRM_ControlParam;->mMediaPlayer:Lcom/lge/media/MediaPlayerEx;

    const/high16 v2, 0x6f000000

    invoke-virtual {v1, v2}, Lcom/lge/media/MediaPlayerEx;->getParcelParameter(I)Landroid/os/Parcel;

    move-result-object v0

    .line 194
    .local v0, "parcel":Landroid/os/Parcel;
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/lge/divx/DivXDRM_ControlParam;->RentalCnt:I

    .line 195
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 201
    .end local v0    # "parcel":Landroid/os/Parcel;
    :goto_1c
    const-string v1, "DivXDRM_ControlParam"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[DIVX DRM][getRentalCount] RentalCnt :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/lge/divx/DivXDRM_ControlParam;->RentalCnt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget v1, p0, Lcom/lge/divx/DivXDRM_ControlParam;->RentalCnt:I

    return v1

    .line 199
    :cond_35
    const-string v1, "DivXDRM_ControlParam"

    const-string v2, "[DIVX DRM][getRentalCount] mMediaPlayer is null!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c
.end method

.method public getRentalMsg()Z
    .registers 6

    .prologue
    .line 243
    const-string v2, "DivXDRM_ControlParam"

    const-string v3, "[DIVX DRM][getRentalMsg] START"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, "iRentalMsg":I
    iget-object v2, p0, Lcom/lge/divx/DivXDRM_ControlParam;->mMediaPlayer:Lcom/lge/media/MediaPlayerEx;

    if-eqz v2, :cond_3a

    .line 247
    iget-object v2, p0, Lcom/lge/divx/DivXDRM_ControlParam;->mMediaPlayer:Lcom/lge/media/MediaPlayerEx;

    const v3, 0x6f000002

    invoke-virtual {v2, v3}, Lcom/lge/media/MediaPlayerEx;->getParcelParameter(I)Landroid/os/Parcel;

    move-result-object v1

    .line 248
    .local v1, "parcel":Landroid/os/Parcel;
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 249
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 256
    .end local v1    # "parcel":Landroid/os/Parcel;
    :goto_1c
    const-string v2, "DivXDRM_ControlParam"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[DIVX DRM][getRentalMsg] mRentalMsgFlag :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/lge/divx/DivXDRM_ControlParam;->mRentalMsg:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    if-eqz v0, :cond_42

    .line 259
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lge/divx/DivXDRM_ControlParam;->mRentalMsg:Z

    .line 266
    :goto_37
    iget-boolean v2, p0, Lcom/lge/divx/DivXDRM_ControlParam;->mRentalMsg:Z

    return v2

    .line 253
    :cond_3a
    const-string v2, "DivXDRM_ControlParam"

    const-string v3, "[DIVX DRM][getRentalMsg] mMediaPlayer is null!!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 263
    :cond_42
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/lge/divx/DivXDRM_ControlParam;->mRentalMsg:Z

    goto :goto_37
.end method

.method public getTotalCount()I
    .registers 5

    .prologue
    .line 217
    const-string v1, "DivXDRM_ControlParam"

    const-string v2, "[DIVX DRM][getTotalCount] START"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v1, p0, Lcom/lge/divx/DivXDRM_ControlParam;->mMediaPlayer:Lcom/lge/media/MediaPlayerEx;

    if-eqz v1, :cond_36

    .line 220
    iget-object v1, p0, Lcom/lge/divx/DivXDRM_ControlParam;->mMediaPlayer:Lcom/lge/media/MediaPlayerEx;

    const v2, 0x6f000001

    invoke-virtual {v1, v2}, Lcom/lge/media/MediaPlayerEx;->getParcelParameter(I)Landroid/os/Parcel;

    move-result-object v0

    .line 221
    .local v0, "parcel":Landroid/os/Parcel;
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/lge/divx/DivXDRM_ControlParam;->totalCnt:I

    .line 222
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 228
    .end local v0    # "parcel":Landroid/os/Parcel;
    :goto_1d
    const-string v1, "DivXDRM_ControlParam"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[DIVX DRM][getTotalCount] totalCnt :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/lge/divx/DivXDRM_ControlParam;->totalCnt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget v1, p0, Lcom/lge/divx/DivXDRM_ControlParam;->totalCnt:I

    return v1

    .line 226
    :cond_36
    const-string v1, "DivXDRM_ControlParam"

    const-string v2, "[DIVX DRM][getTotalCount] mMediaPlayer is null!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method

.method public setLgeVideoPlayer(Z)V
    .registers 5
    .param p1, "is_LgeVideoPlayer"    # Z

    .prologue
    .line 349
    iput-boolean p1, p0, Lcom/lge/divx/DivXDRM_ControlParam;->IS_LgeVideoPlayer:Z

    .line 350
    const-string v0, "DivXDRM_ControlParam"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[DIVX DRM][setLgeVideoPlayer] setLgeVideoPlayer :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/lge/divx/DivXDRM_ControlParam;->IS_LgeVideoPlayer:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v0, p0, Lcom/lge/divx/DivXDRM_ControlParam;->mMediaPlayer:Lcom/lge/media/MediaPlayerEx;

    if-eqz v0, :cond_31

    .line 353
    iget-object v1, p0, Lcom/lge/divx/DivXDRM_ControlParam;->mMediaPlayer:Lcom/lge/media/MediaPlayerEx;

    const v2, 0x6f000005

    if-eqz p1, :cond_2f

    const/4 v0, 0x1

    :goto_24
    invoke-virtual {v1, v2, v0}, Lcom/lge/media/MediaPlayerEx;->setParameter(II)Z

    .line 359
    :goto_27
    const-string v0, "DivXDRM_ControlParam"

    const-string v1, "[DIVX DRM][setLgeVideoPlayer] END"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    return-void

    .line 353
    :cond_2f
    const/4 v0, 0x0

    goto :goto_24

    .line 357
    :cond_31
    const-string v0, "DivXDRM_ControlParam"

    const-string v1, "[DIVX DRM][setLgeVideoPlayer] mMediaPlayer is null!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27
.end method
