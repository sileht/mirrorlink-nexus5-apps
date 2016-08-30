.class public Lcom/lge/media/MediaPlayerEx;
.super Landroid/media/MediaPlayer;
.source "MediaPlayerEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/media/MediaPlayerEx$MethodOverride;,
        Lcom/lge/media/MediaPlayerEx$TrackInfoAO;,
        Lcom/lge/media/MediaPlayerEx$TrackInfoEx;
    }
.end annotation


# static fields
.field private static final IMEDIA_PLAYER:Ljava/lang/String; = "android.media.IMediaPlayer"

.field private static final LGE_INVOKE_GET_PARAM:I = 0x7e000002

.field private static final LGE_INVOKE_SET_PARAM:I = 0x7e000001

.field public static final LGE_MEDIAPLAYER_KEYPARAM_AUDIO_ZOOM_INFO:I = 0x23f0

.field public static final LGE_MEDIAPLAYER_KEYPARAM_AUDIO_ZOOM_INIT:I = 0x23f1

.field public static final LGE_MEDIAPLAYER_KEYPARAM_AUDIO_ZOOM_START:I = 0x23f2

.field public static final LGE_MEDIAPLAYER_KEYPARAM_HTTP_ADD_HEADER:I = 0x2329

.field public static final LGE_MEDIAPLAYER_KEYPARAM_HTTP_DLNAPLAYBACK:I = 0x2392

.field public static final LGE_MEDIAPLAYER_KEYPARAM_HTTP_FB_SCAN_MODE_START:I = 0x2334

.field public static final LGE_MEDIAPLAYER_KEYPARAM_HTTP_FF_SCAN_MODE_START:I = 0x2332

.field public static final LGE_MEDIAPLAYER_KEYPARAM_HTTP_GET_RESPONSE:I = 0x232b

.field public static final LGE_MEDIAPLAYER_KEYPARAM_HTTP_REMOVE_HEADER:I = 0x232a

.field public static final LGE_MEDIAPLAYER_KEYPARAM_HTTP_REQUEST_OPTION_CONNECTION_TIMEOUT:I = 0x238c

.field public static final LGE_MEDIAPLAYER_KEYPARAM_HTTP_REQUEST_OPTION_ENABLE_HTTPRANGE:I = 0x2390

.field public static final LGE_MEDIAPLAYER_KEYPARAM_HTTP_REQUEST_OPTION_ENABLE_TIMESEEK:I = 0x2391

.field public static final LGE_MEDIAPLAYER_KEYPARAM_HTTP_REQUEST_OPTION_KEEPCONNECTION_ON_PAUSE:I = 0x238f

.field public static final LGE_MEDIAPLAYER_KEYPARAM_HTTP_REQUEST_OPTION_KEEPCONNECTION_ON_PLAY:I = 0x238e

.field public static final LGE_MEDIAPLAYER_KEYPARAM_HTTP_REQUEST_OPTION_READ_TIMEOUT:I = 0x238d

.field public static final LGE_MEDIAPLAYER_KEYPARAM_HTTP_SB_SCAN_MODE_START:I = 0x2335

.field public static final LGE_MEDIAPLAYER_KEYPARAM_HTTP_SCAN_MODE_END:I = 0x2336

.field public static final LGE_MEDIAPLAYER_KEYPARAM_HTTP_SF_SCAN_MODE_START:I = 0x2333

.field private static final LGE_MEDIAPLAYER_KEYPARAM_LGEAUDIO_3DMUSIC:I = 0x6f001002

.field private static final LGE_MEDIAPLAYER_KEYPARAM_LGEAUDIO_CUSTOMEQ:I = 0x6f001001

.field private static final LGE_MEDIAPLAYER_KEYPARAM_LGEAUDIO_EFFECT:I = 0x6f001000

.field public static final LGE_MEDIAPLAYER_KEYPARAM_LGE_HIFI_ENABLED:I = 0x1770

.field public static final LGE_MEDIAPLAYER_KEYPARAM_PLAYBACK_FRAMERATE:I = 0x1390

.field public static final LGE_MEDIAPLAYER_KEYPARAM_PLAY_ON_LOCKSCREEN:I = 0x251c

.field private static final LGE_MEDIAPLAYER_KEYPARAM_SCREENCAPTURE:I = 0x2455

.field private static final LGE_MEDIAPLAYER_KEYPARAM_SET_NORMALIZER:I = 0x6f001010

.field public static final LGE_MEDIAPLAYER_KEYPARAM_SYSTEM_INFO_DIVXSUPPORT:I = 0x24b9

.field public static final LGE_MEDIAPLAYER_KEYPARAM_SYSTEM_INFO_HIFISUPPORT:I = 0x24ba

.field public static final MEDIA_IMPLEMENT_ERROR_DRM_NOT_AUTHORIZED:I = 0x24b8

.field public static final MEDIA_IMPLEMENT_ERROR_NOT_AVAILABLE_NETWORK:I = 0x2454

.field public static final MEDIA_IMPLEMENT_ERROR_NOT_EXIST_AUDIO:I = 0x2396

.field public static final MEDIA_IMPLEMENT_ERROR_NOT_EXIST_VIDEO:I = 0x23a0

.field public static final MEDIA_IMPLEMENT_ERROR_NOT_SUPPORT_AUDIO:I = 0x23f0

.field public static final MEDIA_IMPLEMENT_ERROR_NOT_SUPPORT_BITRATE:I = 0x23aa

.field public static final MEDIA_IMPLEMENT_ERROR_NOT_SUPPORT_MEDIA:I = 0x2404

.field public static final MEDIA_IMPLEMENT_ERROR_NOT_SUPPORT_RESOLUTIONS:I = 0x238c

.field public static final MEDIA_IMPLEMENT_ERROR_NOT_SUPPORT_VIDEO:I = 0x23fa

.field public static final MEDIA_MIMETYPE_CONTAINER_MPEG2TS:Ljava/lang/String; = "video/mp2ts"

.field public static final MEDIA_MIMETYPE_TEXT_ASS:Ljava/lang/String; = "text/ass"

.field public static final MEDIA_MIMETYPE_TEXT_CLOSEDCAPTION:Ljava/lang/String; = "text/closedcaption"

.field public static final MEDIA_MIMETYPE_TEXT_EX:Ljava/lang/String; = "text/ex"

.field public static final MEDIA_MIMETYPE_TEXT_SSA:Ljava/lang/String; = "text/ssa"

.field public static final MEDIA_MIMETYPE_TEXT_XSUB:Ljava/lang/String; = "text/xsub"

.field private static final MEDIA_TIMED_TEXT_EX:I = 0x258

.field private static final TAG:Ljava/lang/String; = "MediaPlayerEX"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 46
    const-string v0, "hook_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 488
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 496
    invoke-direct {p0}, Landroid/media/MediaPlayer;-><init>()V

    .line 497
    return-void
.end method

.method private native _screenCapture()Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method


# virtual methods
.method public getIntParameter(I)I
    .registers 4
    .param p1, "key"    # I

    .prologue
    .line 650
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 651
    .local v0, "p":Landroid/os/Parcel;
    invoke-virtual {p0, p1, v0}, Lcom/lge/media/MediaPlayerEx;->getParameter(ILandroid/os/Parcel;)V

    .line 652
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 653
    .local v1, "ret":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 654
    return v1
.end method

.method public getParameter(ILandroid/os/Parcel;)V
    .registers 5
    .param p1, "key"    # I
    .param p2, "reply"    # Landroid/os/Parcel;

    .prologue
    .line 585
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 589
    .local v0, "request":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.media.IMediaPlayer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 590
    const v1, 0x7e000002

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 591
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 592
    invoke-virtual {p0, v0, p2}, Lcom/lge/media/MediaPlayerEx;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_15} :catch_19
    .catchall {:try_start_4 .. :try_end_15} :catchall_1e

    .line 602
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 604
    :goto_18
    return-void

    :catch_19
    move-exception v1

    .line 602
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_18

    .line 601
    :catchall_1e
    move-exception v1

    .line 602
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 603
    throw v1
.end method

.method public getParcelParameter(I)Landroid/os/Parcel;
    .registers 3
    .param p1, "key"    # I

    .prologue
    .line 618
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 619
    .local v0, "p":Landroid/os/Parcel;
    invoke-virtual {p0, p1, v0}, Lcom/lge/media/MediaPlayerEx;->getParameter(ILandroid/os/Parcel;)V

    .line 620
    return-object v0
.end method

.method public getStringParameter(I)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # I

    .prologue
    .line 633
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 634
    .local v0, "p":Landroid/os/Parcel;
    invoke-virtual {p0, p1, v0}, Lcom/lge/media/MediaPlayerEx;->getParameter(ILandroid/os/Parcel;)V

    .line 635
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 636
    .local v1, "ret":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 637
    return-object v1
.end method

.method public screenCapture()Landroid/graphics/Bitmap;
    .registers 4

    .prologue
    .line 775
    const-string v1, "MediaPlayerEX"

    const-string v2, "[screenCapture] screenCapture start"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    invoke-direct {p0}, Lcom/lge/media/MediaPlayerEx;->_screenCapture()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 778
    .local v0, "vFrame":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method public setLGAudioEffect(IIII)I
    .registers 9
    .param p1, "iEnable"    # I
    .param p2, "iType"    # I
    .param p3, "iPath"    # I
    .param p4, "iMedia"    # I

    .prologue
    .line 700
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 701
    .local v1, "parcel":Landroid/os/Parcel;
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 702
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 703
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 704
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 706
    const v2, 0x6f001000

    invoke-virtual {p0, v2, v1}, Lcom/lge/media/MediaPlayerEx;->setParameter(ILandroid/os/Parcel;)Z

    move-result v0

    .line 707
    .local v0, "isAudioEffect":Z
    if-nez v0, :cond_22

    .line 709
    const-string v2, "MediaPlayerEX"

    const-string v3, "[setLGAudioEffect] setParameter fail"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    const/4 v2, 0x1

    .line 712
    :goto_21
    return v2

    :cond_22
    const/4 v2, 0x0

    goto :goto_21
.end method

.method public setLGSoleCustomEQ(II)I
    .registers 7
    .param p1, "iNumBand"    # I
    .param p2, "iNumGain"    # I

    .prologue
    .line 731
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 732
    .local v1, "parcel":Landroid/os/Parcel;
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 733
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 735
    const v2, 0x6f001001

    invoke-virtual {p0, v2, v1}, Lcom/lge/media/MediaPlayerEx;->setParameter(ILandroid/os/Parcel;)Z

    move-result v0

    .line 736
    .local v0, "isCustomEQ":Z
    if-nez v0, :cond_1c

    .line 738
    const-string v2, "MediaPlayerEX"

    const-string v3, "[setLGSoleCustomEQ] setParameter fail"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    const/4 v2, 0x1

    .line 741
    :goto_1b
    return v2

    :cond_1c
    const/4 v2, 0x0

    goto :goto_1b
.end method

.method public setLGSoundNormalizerOnOff(I)V
    .registers 6
    .param p1, "normalizerOnOff"    # I

    .prologue
    .line 754
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 755
    .local v0, "parcel":Landroid/os/Parcel;
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 757
    const v2, 0x6f001010

    invoke-virtual {p0, v2, v0}, Lcom/lge/media/MediaPlayerEx;->setParameter(ILandroid/os/Parcel;)Z

    move-result v1

    .line 758
    .local v1, "ret":Z
    if-nez v1, :cond_17

    .line 760
    const-string v2, "MediaPlayerEX"

    const-string v3, "[setLGSoundNormalizerOnOff] setParameter fail"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    :cond_17
    return-void
.end method

.method public setParameter(II)Z
    .registers 5
    .param p1, "key"    # I
    .param p2, "value"    # I

    .prologue
    .line 568
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 569
    .local v0, "p":Landroid/os/Parcel;
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 570
    invoke-virtual {p0, p1, v0}, Lcom/lge/media/MediaPlayerEx;->setParameter(ILandroid/os/Parcel;)Z

    move-result v1

    .line 571
    .local v1, "ret":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 572
    return v1
.end method

.method public setParameter(ILandroid/os/Parcel;)Z
    .registers 10
    .param p1, "key"    # I
    .param p2, "value"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x0

    .line 510
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 511
    .local v1, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 512
    .local v0, "reply":Landroid/os/Parcel;
    const/4 v2, 0x0

    .line 516
    .local v2, "ret":Z
    :try_start_a
    const-string v5, "android.media.IMediaPlayer"

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 517
    const v5, 0x7e000001

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 518
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 519
    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/os/Parcel;->dataSize()I

    move-result v6

    invoke-virtual {v1, p2, v5, v6}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 521
    invoke-virtual {p0, v1, v0}, Lcom/lge/media/MediaPlayerEx;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V

    .line 522
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I
    :try_end_26
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_26} :catch_34
    .catchall {:try_start_a .. :try_end_26} :catchall_3d

    move-result v5

    if-nez v5, :cond_32

    const/4 v2, 0x1

    .line 532
    :goto_2a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 533
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    move v3, v2

    .line 536
    .end local v2    # "ret":Z
    .local v3, "ret":I
    :goto_31
    return v3

    .end local v3    # "ret":I
    .restart local v2    # "ret":Z
    :cond_32
    move v2, v4

    .line 522
    goto :goto_2a

    .line 527
    :catch_34
    move-exception v4

    .line 532
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 533
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    move v3, v2

    .line 527
    .restart local v3    # "ret":I
    goto :goto_31

    .line 531
    .end local v3    # "ret":I
    :catchall_3d
    move-exception v4

    .line 532
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 533
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 534
    throw v4
.end method

.method public setParameter(ILjava/lang/String;)Z
    .registers 5
    .param p1, "key"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 550
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 551
    .local v0, "p":Landroid/os/Parcel;
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 552
    invoke-virtual {p0, p1, v0}, Lcom/lge/media/MediaPlayerEx;->setParameter(ILandroid/os/Parcel;)Z

    move-result v1

    .line 553
    .local v1, "ret":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 554
    return v1
.end method
