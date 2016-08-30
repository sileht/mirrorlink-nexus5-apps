.class public Landroid/media/AudioManagerEx;
.super Landroid/media/AudioManager;
.source "AudioManagerEx.java"


# static fields
.field public static final ACTION_AUDIO_STOP_NOTIFICATION:Ljava/lang/String; = "com.lge.media.STOP_NOTIFICATION"

.field public static final ACTION_HEADSET_PLUG_IN:Ljava/lang/String; = "com.lge.media.HEADSET_PLUG_IN"

.field public static final AUX_GENDER_STATE_CHANGE:Ljava/lang/String; = "com.lge.media.AUX_GENDER_STATE_CHANGED"

.field public static final FLAG_DEAD_OBJECT:I = -0x64

.field public static final FLAG_EXPAND_VOLUME_PANEL:I = 0x2000

.field public static final FLAG_IGNORE_QUIET_MODE_WARNING:I = 0x800

.field public static final FLAG_KEEP_RINGER_MODES:I = 0x1000

.field public static final FLAG_TURNOFF_ALL_SOUNDS:I = 0x4000

.field public static final FX_Back:I = 0xc

.field public static final FX_Call:I = 0x14

.field public static final FX_Clear:I = 0x15

.field public static final FX_End:I = 0x16

.field public static final FX_Home:I = 0xd

.field public static final FX_IM:I = 0x11

.field public static final FX_Keypad:I = 0x17

.field public static final FX_Menu:I = 0xe

.field public static final FX_Message:I = 0xf

.field public static final FX_Navi:I = 0x13

.field public static final FX_Phonebook:I = 0x10

.field public static final FX_SWITCH_OFF:I = 0xb

.field public static final FX_SWITCH_ON:I = 0xa

.field public static final FX_Shift:I = 0x12

.field public static final SPEAKER_PHONE_CHANGED_ACTION:Ljava/lang/String; = "com.lge.media.SPEAKER_PHONE_CHANGED_ACTION"

.field public static final STREAM_INCALL_MUSIC:I = 0xa

.field private static final TAG:Ljava/lang/String; = "AudioManagerEx"

.field private static sService:Landroid/media/IAudioServiceEx;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 201
    invoke-direct {p0, p1}, Landroid/media/AudioManager;-><init>(Landroid/content/Context;)V

    .line 202
    iput-object p1, p0, Landroid/media/AudioManagerEx;->mContext:Landroid/content/Context;

    .line 203
    const-string v0, "AudioManagerEx"

    const-string v1, "AudioManagerEx created"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return-void
.end method

.method protected static getServiceEx()Landroid/media/IAudioServiceEx;
    .registers 3

    .prologue
    .line 211
    sget-object v1, Landroid/media/AudioManagerEx;->sService:Landroid/media/IAudioServiceEx;

    if-eqz v1, :cond_7

    .line 212
    sget-object v1, Landroid/media/AudioManagerEx;->sService:Landroid/media/IAudioServiceEx;

    .line 220
    .local v0, "e":Ljava/lang/NullPointerException;
    :goto_6
    return-object v1

    .line 215
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_7
    :try_start_7
    const-string v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioServiceEx$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioServiceEx;

    move-result-object v1

    sput-object v1, Landroid/media/AudioManagerEx;->sService:Landroid/media/IAudioServiceEx;
    :try_end_13
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_13} :catch_16

    .line 220
    sget-object v1, Landroid/media/AudioManagerEx;->sService:Landroid/media/IAudioServiceEx;

    goto :goto_6

    .line 216
    :catch_16
    move-exception v0

    .line 217
    .restart local v0    # "e":Ljava/lang/NullPointerException;
    const-string v1, "AudioManagerEx"

    const-string v2, "AudioServiceEx is null"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 218
    const/4 v1, 0x0

    goto :goto_6
.end method


# virtual methods
.method public closeRecordHooking(Ljava/io/FileDescriptor;)V
    .registers 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    const/4 v0, 0x0

    .line 637
    if-eqz p1, :cond_6

    .line 638
    invoke-static {v0, v0, v0}, Lcom/lge/media/LGAudioSystem;->setRecordHookingEnabled(III)Ljava/io/FileDescriptor;

    .line 640
    :cond_6
    return-void
.end method

.method public getActiveStreamType(I)I
    .registers 7
    .param p1, "suggestedStreamType"    # I

    .prologue
    const/16 v2, -0x64

    .line 760
    invoke-static {}, Landroid/media/AudioManagerEx;->getServiceEx()Landroid/media/IAudioServiceEx;

    move-result-object v1

    .line 761
    .local v1, "service":Landroid/media/IAudioServiceEx;
    if-eqz v1, :cond_16

    .line 763
    :try_start_8
    invoke-interface {v1, p1}, Landroid/media/IAudioServiceEx;->getActiveStreamType(I)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_d

    move-result v2

    .line 770
    :goto_c
    return v2

    .line 764
    :catch_d
    move-exception v0

    .line 765
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "AudioManagerEx"

    const-string v4, "Dead object in getActiveStreamType"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 769
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    const-string v3, "AudioManagerEx"

    const-string v4, "AudioService is null in getActiveStreamType"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method public getAuxGenderState()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 300
    invoke-static {}, Landroid/media/AudioManagerEx;->getServiceEx()Landroid/media/IAudioServiceEx;

    move-result-object v1

    .line 301
    .local v1, "service":Landroid/media/IAudioServiceEx;
    if-eqz v1, :cond_15

    .line 303
    :try_start_7
    invoke-interface {v1}, Landroid/media/IAudioServiceEx;->getAuxGenderState()Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_c

    move-result v2

    .line 310
    :goto_b
    return v2

    .line 304
    :catch_c
    move-exception v0

    .line 305
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "AudioManagerEx"

    const-string v4, "Dead object in getAuxGenderState"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .line 309
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    const-string v3, "AudioManagerEx"

    const-string v4, "AudioService is null in getAuxGenderState"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public getAvrcpAbsVolSupported()Z
    .registers 7

    .prologue
    .line 490
    const/4 v1, 0x0

    .line 491
    .local v1, "result":Z
    invoke-static {}, Landroid/media/AudioManagerEx;->getServiceEx()Landroid/media/IAudioServiceEx;

    move-result-object v2

    .line 492
    .local v2, "service":Landroid/media/IAudioServiceEx;
    if-eqz v2, :cond_2a

    .line 494
    :try_start_7
    invoke-interface {v2}, Landroid/media/IAudioServiceEx;->getAvrcpAbsVolSupported()Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_21

    move-result v1

    .line 502
    :goto_b
    const-string v3, "AudioManagerEx"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getAvrcpAbsVolSupported "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v1

    .line 503
    :goto_20
    return v3

    .line 495
    :catch_21
    move-exception v0

    .line 496
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "AudioManagerEx"

    const-string v4, "Dead object in getAvrcpAbsVolSupported"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .line 499
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2a
    const-string v3, "AudioManagerEx"

    const-string v4, "AudioService is null in getAvrcpAbsVolSupported"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const/4 v3, 0x0

    goto :goto_20
.end method

.method public getDevicesForStream(I)I
    .registers 3
    .param p1, "streamType"    # I

    .prologue
    .line 704
    .line 709
    invoke-super {p0, p1}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v0

    return v0
.end method

.method public getPlayerList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 739
    invoke-static {}, Landroid/media/AudioManagerEx;->getServiceEx()Landroid/media/IAudioServiceEx;

    move-result-object v1

    .line 740
    .local v1, "service":Landroid/media/IAudioServiceEx;
    if-eqz v1, :cond_15

    .line 742
    :try_start_7
    invoke-interface {v1}, Landroid/media/IAudioServiceEx;->getPlayerList()Ljava/util/List;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_c

    move-result-object v2

    .line 749
    :goto_b
    return-object v2

    .line 743
    :catch_c
    move-exception v0

    .line 744
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "AudioManagerEx"

    const-string v4, "Dead object in getPlayerList"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .line 748
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    const-string v3, "AudioManagerEx"

    const-string v4, "AudioService is null in getPlayerList"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public getPlayerPlayBackState()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 719
    invoke-static {}, Landroid/media/AudioManagerEx;->getServiceEx()Landroid/media/IAudioServiceEx;

    move-result-object v1

    .line 720
    .local v1, "service":Landroid/media/IAudioServiceEx;
    if-eqz v1, :cond_15

    .line 722
    :try_start_7
    invoke-interface {v1}, Landroid/media/IAudioServiceEx;->getPlayerPlayBackState()Ljava/util/List;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_c

    move-result-object v2

    .line 729
    :goto_b
    return-object v2

    .line 723
    :catch_c
    move-exception v0

    .line 724
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "AudioManagerEx"

    const-string v4, "Dead object in getPlayerPlayBackState"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .line 728
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    const-string v3, "AudioManagerEx"

    const-string v4, "AudioService is null in getPlayerPlayBackState"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public getSafeMediaVolumeState()I
    .registers 7

    .prologue
    .line 569
    invoke-static {}, Landroid/media/AudioManagerEx;->getServiceEx()Landroid/media/IAudioServiceEx;

    move-result-object v1

    .line 570
    .local v1, "service":Landroid/media/IAudioServiceEx;
    const/4 v2, 0x0

    .line 572
    .local v2, "state":I
    :try_start_5
    invoke-interface {v1}, Landroid/media/IAudioServiceEx;->getSafeMediaVolumeState()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_1e

    move-result v2

    .line 576
    :goto_9
    const-string v3, "AudioManagerEx"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[twin_headset] getSafeMediaVolumeState "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    return v2

    .line 573
    :catch_1e
    move-exception v0

    .line 574
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "AudioManagerEx"

    const-string v4, "Dead object in getSafeMediaVolumeState"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public getStreamDeviceVolume(II)I
    .registers 8
    .param p1, "stream"    # I
    .param p2, "device"    # I

    .prologue
    .line 364
    const/4 v1, 0x0

    .line 365
    .local v1, "index":I
    invoke-static {}, Landroid/media/AudioManagerEx;->getServiceEx()Landroid/media/IAudioServiceEx;

    move-result-object v2

    .line 367
    .local v2, "service":Landroid/media/IAudioServiceEx;
    if-nez v2, :cond_10

    .line 368
    const-string v3, "AudioManagerEx"

    const-string v4, "AudioService is null in getStreamDeviceVolume"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const/4 v3, -0x1

    .line 379
    :goto_f
    return v3

    .line 373
    :cond_10
    :try_start_10
    invoke-interface {v2, p1, p2}, Landroid/media/IAudioServiceEx;->getStreamDeviceVolume(II)I
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_16

    move-result v1

    :goto_14
    move v3, v1

    .line 379
    goto :goto_f

    .line 375
    :catch_16
    move-exception v0

    .line 376
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "AudioManagerEx"

    const-string v4, "Dead object in getStreamDeviceVolume"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14
.end method

.method public getTwinHeadsetAvrcpAbsVolSupported()Z
    .registers 7

    .prologue
    .line 513
    const/4 v1, 0x0

    .line 514
    .local v1, "result":Z
    invoke-static {}, Landroid/media/AudioManagerEx;->getServiceEx()Landroid/media/IAudioServiceEx;

    move-result-object v2

    .line 516
    .local v2, "service":Landroid/media/IAudioServiceEx;
    :try_start_5
    invoke-interface {v2}, Landroid/media/IAudioServiceEx;->getTwinHeadsetAvrcpAbsVolSupported()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_1e

    move-result v1

    .line 520
    :goto_9
    const-string v3, "AudioManagerEx"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getTwinHeadsetAvrcpAbsVolSupported "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    return v1

    .line 517
    :catch_1e
    move-exception v0

    .line 518
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "AudioManagerEx"

    const-string v4, "Dead object in getTwinHeadsetAvrcpAbsVolSupported"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public getTwinHeadsetOn()Z
    .registers 4

    .prologue
    .line 532
    const-string v0, "AudioManagerEx"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getTwinHeadsetOn() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/lge/media/LGAudioSystem;->getTwinHeadsetOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    invoke-static {}, Lcom/lge/media/LGAudioSystem;->getTwinHeadsetOn()Z

    move-result v0

    return v0
.end method

.method public getTwinHeadsetPopupOn()Z
    .registers 4

    .prologue
    .line 557
    const-string v0, "AudioManagerEx"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getTwinHeadsetPopupOn() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/lge/media/LGAudioSystem;->getTwinHeadsetPopupOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    invoke-static {}, Lcom/lge/media/LGAudioSystem;->getTwinHeadsetPopupOn()Z

    move-result v0

    return v0
.end method

.method public isBluetoothA2dpInputOn()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 809
    sget-boolean v3, Lcom/lge/config/ConfigBuildFlags;->CAPP_AUDIO_A2DP_SINK:Z

    if-eqz v3, :cond_21

    .line 810
    invoke-static {}, Landroid/media/AudioManagerEx;->getServiceEx()Landroid/media/IAudioServiceEx;

    move-result-object v1

    .line 811
    .local v1, "service":Landroid/media/IAudioServiceEx;
    if-eqz v1, :cond_19

    .line 813
    :try_start_b
    invoke-interface {v1}, Landroid/media/IAudioServiceEx;->isBluetoothA2dpInputOn()Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_10

    move-result v2

    .line 824
    .end local v1    # "service":Landroid/media/IAudioServiceEx;
    :goto_f
    return v2

    .line 814
    .restart local v1    # "service":Landroid/media/IAudioServiceEx;
    :catch_10
    move-exception v0

    .line 815
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "AudioManagerEx"

    const-string v4, "Dead object in isBluetoothScoOn"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 819
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_19
    const-string v3, "AudioManagerEx"

    const-string v4, "AudioServiceEx is null in isBluetoothA2dpInputOn"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 823
    .end local v1    # "service":Landroid/media/IAudioServiceEx;
    :cond_21
    const-string v3, "AudioManagerEx"

    const-string v4, "Don\'t support this API. Disable A2dp Sink."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public isRecording()Z
    .registers 3

    .prologue
    .line 230
    const-string v1, "audiorecording_state"

    invoke-static {v1}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "isRecording":Ljava/lang/String;
    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 232
    const/4 v1, 0x0

    .line 234
    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x1

    goto :goto_f
.end method

.method public isSpeakerOnForMedia()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 262
    invoke-static {}, Landroid/media/AudioManagerEx;->getServiceEx()Landroid/media/IAudioServiceEx;

    move-result-object v1

    .line 263
    .local v1, "service":Landroid/media/IAudioServiceEx;
    if-eqz v1, :cond_15

    .line 265
    :try_start_7
    invoke-interface {v1}, Landroid/media/IAudioServiceEx;->isSpeakerOnForMedia()Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_c

    move-result v2

    .line 272
    :goto_b
    return v2

    .line 266
    :catch_c
    move-exception v0

    .line 267
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "AudioManagerEx"

    const-string v4, "Dead object in isSpeakerOnForMedia"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .line 271
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    const-string v3, "AudioManagerEx"

    const-string v4, "AudioService is null in isSpeakerOnForMedia"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public openRecordHooking(II)Ljava/io/FileDescriptor;
    .registers 4
    .param p1, "sampleRate"    # I
    .param p2, "flag"    # I

    .prologue
    .line 627
    const/4 v0, 0x1

    invoke-static {v0, p1, p2}, Lcom/lge/media/LGAudioSystem;->setRecordHookingEnabled(III)Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public setAbsoluteRecoverVolume(I)V
    .registers 7
    .param p1, "volume"    # I

    .prologue
    .line 468
    const-string v2, "AudioManagerEx"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setAbsoluteRecoverVolume volume "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-static {}, Landroid/media/AudioManagerEx;->getServiceEx()Landroid/media/IAudioServiceEx;

    move-result-object v1

    .line 470
    .local v1, "service":Landroid/media/IAudioServiceEx;
    if-eqz v1, :cond_27

    .line 472
    :try_start_1a
    invoke-interface {v1, p1}, Landroid/media/IAudioServiceEx;->setAbsoluteRecoverVolume(I)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1d} :catch_1e

    .line 480
    :goto_1d
    return-void

    .line 473
    :catch_1e
    move-exception v0

    .line 474
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AudioManagerEx"

    const-string v3, "Dead object in setAbsoluteRecoverVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d

    .line 477
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_27
    const-string v2, "AudioManagerEx"

    const-string v3, "AudioService is null in setAbsoluteRecoverVolume"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method

.method public setAuxGenderState(Z)V
    .registers 6
    .param p1, "on"    # Z

    .prologue
    .line 282
    invoke-static {}, Landroid/media/AudioManagerEx;->getServiceEx()Landroid/media/IAudioServiceEx;

    move-result-object v1

    .line 283
    .local v1, "service":Landroid/media/IAudioServiceEx;
    if-eqz v1, :cond_13

    .line 285
    :try_start_6
    invoke-interface {v1, p1}, Landroid/media/IAudioServiceEx;->setAuxGenderState(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 292
    :goto_9
    return-void

    .line 286
    :catch_a
    move-exception v0

    .line 287
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AudioManagerEx"

    const-string v3, "Dead object in setAuxGenderaState"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 290
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    const-string v2, "AudioManagerEx"

    const-string v3, "AudioService is null in setAuxGenderaState"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public setBluetoothA2dpInputOn(Z)Z
    .registers 6
    .param p1, "on"    # Z

    .prologue
    .line 784
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_AUDIO_A2DP_SINK:Z

    if-eqz v2, :cond_21

    .line 785
    invoke-static {}, Landroid/media/AudioManagerEx;->getServiceEx()Landroid/media/IAudioServiceEx;

    move-result-object v1

    .line 786
    .local v1, "service":Landroid/media/IAudioServiceEx;
    if-eqz v1, :cond_19

    .line 788
    :try_start_a
    invoke-interface {v1, p1}, Landroid/media/IAudioServiceEx;->setBluetoothA2dpInputOn(Z)Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_f

    move-result v2

    .line 798
    .end local v1    # "service":Landroid/media/IAudioServiceEx;
    :goto_e
    return v2

    .line 789
    .restart local v1    # "service":Landroid/media/IAudioServiceEx;
    :catch_f
    move-exception v0

    .line 790
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AudioManagerEx"

    const-string v3, "Dead object in setBluetoothA2dpInputOn"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 798
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "service":Landroid/media/IAudioServiceEx;
    :goto_17
    const/4 v2, 0x0

    goto :goto_e

    .line 793
    .restart local v1    # "service":Landroid/media/IAudioServiceEx;
    :cond_19
    const-string v2, "AudioManagerEx"

    const-string v3, "AudioServiceEx is null in setBluetoothA2dpInputOn"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 796
    .end local v1    # "service":Landroid/media/IAudioServiceEx;
    :cond_21
    const-string v2, "AudioManagerEx"

    const-string v3, "Don\'t support this API. Disable A2dp Sink."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method public setBluetoothDualMode(Z)Z
    .registers 5
    .param p1, "isDualMode"    # Z

    .prologue
    .line 836
    const-string v0, "AudioManagerEx"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setMusicShareDualMode() isDualMode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    invoke-static {p1}, Lcom/lge/media/LGAudioSystem;->setMusicShareDualPath(Z)I

    .line 838
    return p1
.end method

.method public setDSDPDualAudioControl(I)I
    .registers 8
    .param p1, "on"    # I

    .prologue
    const v5, 0x8000

    const/4 v4, 0x3

    .line 605
    const/4 v0, 0x0

    .line 606
    .local v0, "ret":I
    const-string v1, "AudioManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setDSDPDualAudioControl On "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    invoke-static {p1}, Lcom/lge/media/LGAudioSystem;->setDSDPDualAudioControl(I)I

    move-result v0

    .line 609
    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 610
    const/4 v1, 0x1

    const-string v2, ""

    invoke-static {v5, v2}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_32

    .line 611
    invoke-virtual {p0, v4}, Landroid/media/AudioManagerEx;->getStreamMaxVolume(I)I

    move-result v1

    invoke-static {v4, v1, v5}, Landroid/media/AudioSystem;->setStreamVolumeIndex(III)I

    .line 614
    :cond_32
    const-string v1, "AudioManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setDSDPDualAudioControl On "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    return v0
.end method

.method public setMABLControl(II)V
    .registers 4
    .param p1, "currentLevel"    # I
    .param p2, "levelMax"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 333
    const/16 v0, 0x3e

    invoke-static {p1, v0}, Lcom/lge/media/LGAudioSystem;->setMABLControl(II)I

    .line 334
    return-void
.end method

.method public setMABLEnable(I)V
    .registers 2
    .param p1, "enable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 321
    invoke-static {p1}, Lcom/lge/media/LGAudioSystem;->setMABLEnable(I)I

    .line 322
    return-void
.end method

.method public setSpeakerOnForMedia(Z)V
    .registers 6
    .param p1, "on"    # Z

    .prologue
    .line 244
    invoke-static {}, Landroid/media/AudioManagerEx;->getServiceEx()Landroid/media/IAudioServiceEx;

    move-result-object v1

    .line 245
    .local v1, "service":Landroid/media/IAudioServiceEx;
    if-eqz v1, :cond_13

    .line 247
    :try_start_6
    invoke-interface {v1, p1}, Landroid/media/IAudioServiceEx;->setSpeakerOnForMedia(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 254
    :goto_9
    return-void

    .line 248
    :catch_a
    move-exception v0

    .line 249
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AudioManagerEx"

    const-string v3, "Dead object in setSpeakerOnForMedia"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 252
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    const-string v2, "AudioManagerEx"

    const-string v3, "AudioService is null in setSpeakerOnForMedia"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public setStreamVolume(III)V
    .registers 7
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I

    .prologue
    .line 346
    invoke-virtual {p0}, Landroid/media/AudioManagerEx;->getTwinHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 347
    and-int/lit8 v0, p3, 0x40

    if-eqz v0, :cond_32

    .line 348
    const/4 v0, 0x3

    if-ne p1, v0, :cond_32

    .line 349
    const-string v0, "AudioManagerEx"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "absolute volume case skip () AudioManager.setStreamVolume(stream: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / index"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :goto_31
    return-void

    .line 352
    :cond_32
    invoke-super {p0, p1, p2, p3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_31
.end method

.method public setStreamVolumeAll(III)V
    .registers 8
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I

    .prologue
    .line 651
    invoke-static {}, Landroid/media/AudioManagerEx;->getServiceEx()Landroid/media/IAudioServiceEx;

    move-result-object v1

    .line 652
    .local v1, "service":Landroid/media/IAudioServiceEx;
    if-eqz v1, :cond_13

    .line 654
    :try_start_6
    invoke-interface {v1, p1, p2, p3}, Landroid/media/IAudioServiceEx;->setStreamVolumeAll(III)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 662
    :goto_9
    return-void

    .line 655
    :catch_a
    move-exception v0

    .line 656
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AudioManagerEx"

    const-string v3, "Dead object in setStreamVolumeAll"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 659
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    const-string v2, "AudioManagerEx"

    const-string v3, "AudioService is null in getVoiceActivationState"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public setTwinHeadsetOn(Z)I
    .registers 15
    .param p1, "on"    # Z

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 390
    const/4 v4, 0x0

    .line 392
    .local v4, "ret":I
    if-eqz p1, :cond_3e

    const-string v3, "true"

    .line 394
    .local v3, "param":Ljava/lang/String;
    :goto_7
    const/4 v7, 0x0

    .line 395
    .local v7, "twinHeadsetAvrcpSupported":Z
    const/4 v0, 0x0

    .line 396
    .local v0, "avrcpSupported":Z
    invoke-static {}, Landroid/media/AudioManagerEx;->getServiceEx()Landroid/media/IAudioServiceEx;

    move-result-object v6

    .line 398
    .local v6, "service":Landroid/media/IAudioServiceEx;
    const-string v8, "AudioManagerEx"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "setTwinHeadsetOn() On  "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    if-nez p1, :cond_8d

    .line 401
    invoke-static {p1}, Lcom/lge/media/LGAudioSystem;->setTwinHeadsetOn(Z)I

    move-result v4

    .line 402
    const-string v8, "AudioManagerEx"

    const-string v9, "setTwinHeadsetOn off setForceUse FOR_TWIN_HEADSET, FORCE_NONE"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    sget v8, Landroid/media/AudioSystem;->FOR_TWIN_HEADSET:I

    invoke-static {v8, v11}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 406
    if-nez v6, :cond_41

    .line 407
    :try_start_35
    const-string v8, "AudioManagerEx"

    const-string v9, "AudioService is null in setTwinHeadsetOn Off Case"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_3c} :catch_84

    move v5, v4

    .line 458
    .end local v4    # "ret":I
    .local v5, "ret":I
    :goto_3d
    return v5

    .line 392
    .end local v0    # "avrcpSupported":Z
    .end local v3    # "param":Ljava/lang/String;
    .end local v5    # "ret":I
    .end local v6    # "service":Landroid/media/IAudioServiceEx;
    .end local v7    # "twinHeadsetAvrcpSupported":Z
    .restart local v4    # "ret":I
    :cond_3e
    const-string v3, "false"

    goto :goto_7

    .line 411
    .restart local v0    # "avrcpSupported":Z
    .restart local v3    # "param":Ljava/lang/String;
    .restart local v6    # "service":Landroid/media/IAudioServiceEx;
    .restart local v7    # "twinHeadsetAvrcpSupported":Z
    :cond_41
    const/4 v8, 0x0

    :try_start_42
    invoke-interface {v6, v8}, Landroid/media/IAudioServiceEx;->setTwinHeadsetOn(Z)V

    .line 412
    invoke-interface {v6}, Landroid/media/IAudioServiceEx;->getTwinHeadsetAvrcpAbsVolSupported()Z

    move-result v7

    .line 413
    if-eqz v7, :cond_62

    .line 414
    invoke-virtual {p0}, Landroid/media/AudioManagerEx;->isBluetoothA2dpOn()Z

    move-result v8

    if-eqz v8, :cond_78

    .line 415
    const-string v8, "AudioManagerEx"

    const-string v9, "avrcpSupportsAbsoluteVolume(true), setTwinHeadsetAvrcpAbsVolSupported(false)"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const-string v8, " "

    const/4 v9, 0x1

    invoke-virtual {p0, v8, v9}, Landroid/media/AudioManagerEx;->avrcpSupportsAbsoluteVolume(Ljava/lang/String;Z)V

    .line 421
    :goto_5e
    const/4 v8, 0x0

    invoke-interface {v6, v8}, Landroid/media/IAudioServiceEx;->setTwinHeadsetAvrcpAbsVolSupported(Z)V
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_62} :catch_84

    .line 453
    :cond_62
    :goto_62
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 454
    .local v2, "intent":Landroid/content/Intent;
    const-string v8, "android.media.TWIN_HEADSET_STATE"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 455
    const-string v8, "android.media.extra.TWIN_HEADSET_STATE"

    invoke-virtual {v2, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 456
    iget-object v8, p0, Landroid/media/AudioManagerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v5, v4

    .line 458
    .end local v4    # "ret":I
    .restart local v5    # "ret":I
    goto :goto_3d

    .line 418
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v5    # "ret":I
    .restart local v4    # "ret":I
    :cond_78
    :try_start_78
    const-string v8, "AudioManagerEx"

    const-string v9, "service.setAvrcpAbsVolSupported(false), setTwinHeadsetAvrcpAbsVolSupported(false)"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const/4 v8, 0x0

    invoke-interface {v6, v8}, Landroid/media/IAudioServiceEx;->setAvrcpAbsVolSupported(Z)V
    :try_end_83
    .catch Landroid/os/RemoteException; {:try_start_78 .. :try_end_83} :catch_84

    goto :goto_5e

    .line 423
    :catch_84
    move-exception v1

    .line 424
    .local v1, "e":Landroid/os/RemoteException;
    const-string v8, "AudioManagerEx"

    const-string v9, "Dead object in Off Case"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_62

    .line 429
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_8d
    invoke-static {p1}, Lcom/lge/media/LGAudioSystem;->setTwinHeadsetOn(Z)I

    move-result v4

    .line 430
    const-string v8, "AudioManagerEx"

    const-string v9, "setTwinHeadsetOn setForceUse FOR_MEDIA, FORCE_NONE"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-static {v12, v11}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 434
    if-nez v6, :cond_a6

    .line 435
    :try_start_9d
    const-string v8, "AudioManagerEx"

    const-string v9, "AudioService is null in setTwinHeadsetOn On Case"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    .line 436
    .end local v4    # "ret":I
    .restart local v5    # "ret":I
    goto :goto_3d

    .line 438
    .end local v5    # "ret":I
    .restart local v4    # "ret":I
    :cond_a6
    invoke-interface {v6}, Landroid/media/IAudioServiceEx;->getAvrcpAbsVolSupported()Z

    move-result v0

    .line 439
    if-eqz v0, :cond_bd

    .line 440
    const-string v8, "AudioManagerEx"

    const-string v9, "setTwinHeadsetAvrcpAbsVolSupported(true), avrcpSupportsAbsoluteVolume(false)"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    const/4 v8, 0x1

    invoke-interface {v6, v8}, Landroid/media/IAudioServiceEx;->setTwinHeadsetAvrcpAbsVolSupported(Z)V

    .line 443
    const-string v8, "  "

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Landroid/media/AudioManagerEx;->avrcpSupportsAbsoluteVolume(Ljava/lang/String;Z)V

    .line 447
    :cond_bd
    const/4 v8, 0x1

    invoke-interface {v6, v8}, Landroid/media/IAudioServiceEx;->setTwinHeadsetOn(Z)V
    :try_end_c1
    .catch Landroid/os/RemoteException; {:try_start_9d .. :try_end_c1} :catch_c2

    goto :goto_62

    .line 448
    :catch_c2
    move-exception v1

    .line 449
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string v8, "AudioManagerEx"

    const-string v9, "Dead object in Off Case"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_62
.end method

.method public setTwinHeadsetPopupOn(Z)I
    .registers 5
    .param p1, "on"    # Z

    .prologue
    .line 545
    const-string v0, "AudioManagerEx"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setTwinHeadsetPopupOn() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    invoke-static {p1}, Lcom/lge/media/LGAudioSystem;->setTwinHeadsetPopupOn(Z)I

    move-result v0

    return v0
.end method

.method public setTwinHeadsetSafeMediaVolumeDevices(Z)V
    .registers 7
    .param p1, "on"    # Z

    .prologue
    .line 587
    invoke-static {}, Landroid/media/AudioManagerEx;->getServiceEx()Landroid/media/IAudioServiceEx;

    move-result-object v1

    .line 588
    .local v1, "service":Landroid/media/IAudioServiceEx;
    const-string v2, "AudioManagerEx"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[twin_headset] setTwinHeadsetSafeMediaVolumeDevices "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :try_start_18
    invoke-interface {v1, p1}, Landroid/media/IAudioServiceEx;->setTwinHeadsetSafeMediaVolumeDevices(Z)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_1c

    .line 595
    :goto_1b
    return-void

    .line 592
    :catch_1c
    move-exception v0

    .line 593
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AudioManagerEx"

    const-string v3, "Dead object in setTwinHeadsetSafeMediaVolumeDevices"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b
.end method
