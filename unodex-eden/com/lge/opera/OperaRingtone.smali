.class public Lcom/lge/opera/OperaRingtone;
.super Ljava/lang/Object;
.source "OperaRingtone.java"

# interfaces
.implements Landroid/media/JetPlayer$OnJetEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/opera/OperaRingtone$OnPauseUpdateListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_PHONENUM:Ljava/lang/String; = "64646464"

.field private static final LOGD:Z = true

.field public static final OPERA_CALL_L0:I = 0x0

.field public static final OPERA_CALL_L1:I = 0x2

.field public static final OPERA_CONTACT_L0:I = 0x1

.field public static final OPERA_CONTACT_L1:I = 0x3

.field public static final OPERA_JET_CREATE_L0:I = 0x64

.field public static final OPERA_JET_CREATE_L1:I = 0x65

.field private static final PHONENUMBER_LENGTH:I = 0x8

.field private static final TAG:Ljava/lang/String; = "OperaRingtone"

.field private static final UserID:B = -0x80t


# instance fields
.field private JetFilePath:Ljava/lang/String;

.field private mLocalPayerState:Z

.field private mLocalPlayer:Landroid/media/JetPlayer;

.field private mMuteState:Z

.field private mOnPauseUpdateListener:Lcom/lge/opera/OperaRingtone$OnPauseUpdateListener;

.field private mPatternType:I

.field private mPhoneNumber:Ljava/lang/String;

.field private mRingtoneState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phone"    # Ljava/lang/String;
    .param p3, "OperaPattern"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput p3, p0, Lcom/lge/opera/OperaRingtone;->mPatternType:I

    .line 74
    iget v0, p0, Lcom/lge/opera/OperaRingtone;->mPatternType:I

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/lge/opera/OperaRingtone;->mPatternType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    iget v0, p0, Lcom/lge/opera/OperaRingtone;->mPatternType:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_25

    .line 75
    :cond_16
    const-string v0, "64646464"

    iput-object v0, p0, Lcom/lge/opera/OperaRingtone;->mPhoneNumber:Ljava/lang/String;

    .line 79
    :goto_1a
    iput-boolean v2, p0, Lcom/lge/opera/OperaRingtone;->mRingtoneState:Z

    .line 80
    iput-object v3, p0, Lcom/lge/opera/OperaRingtone;->mLocalPlayer:Landroid/media/JetPlayer;

    .line 81
    iput-boolean v2, p0, Lcom/lge/opera/OperaRingtone;->mLocalPayerState:Z

    .line 83
    iput-object v3, p0, Lcom/lge/opera/OperaRingtone;->JetFilePath:Ljava/lang/String;

    .line 84
    iput-boolean v2, p0, Lcom/lge/opera/OperaRingtone;->mMuteState:Z

    .line 85
    return-void

    .line 77
    :cond_25
    invoke-direct {p0, p2}, Lcom/lge/opera/OperaRingtone;->checkPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/opera/OperaRingtone;->mPhoneNumber:Ljava/lang/String;

    goto :goto_1a
.end method

.method private checkPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x8

    .line 89
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v7, :cond_2e

    .line 90
    new-array v4, v7, [C

    .line 91
    .local v4, "phoneBuf":[C
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .line 93
    .local v2, "index":I
    const/4 v1, 0x7

    .local v1, "i":I
    move v3, v2

    .end local v2    # "index":I
    .local v3, "index":I
    :goto_12
    if-gez v1, :cond_1a

    .line 100
    new-instance p1, Ljava/lang/String;

    .end local p1    # "phone":Ljava/lang/String;
    invoke-direct {p1, v4}, Ljava/lang/String;-><init>([C)V

    .line 108
    .end local v1    # "i":I
    .end local v3    # "index":I
    .end local v4    # "phoneBuf":[C
    .restart local p1    # "phone":Ljava/lang/String;
    :cond_19
    :goto_19
    return-object p1

    .line 94
    .restart local v1    # "i":I
    .restart local v3    # "index":I
    .restart local v4    # "phoneBuf":[C
    :cond_1a
    add-int/lit8 v2, v3, -0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput-char v6, v4, v1

    .line 95
    if-gez v2, :cond_2a

    .line 96
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .line 93
    :cond_2a
    add-int/lit8 v1, v1, -0x1

    move v3, v2

    .end local v2    # "index":I
    .restart local v3    # "index":I
    goto :goto_12

    .line 101
    .end local v1    # "i":I
    .end local v3    # "index":I
    .end local v4    # "phoneBuf":[C
    :cond_2e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v7, :cond_19

    .line 102
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 103
    .local v0, "end":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v5, v6, -0x8

    .line 105
    .local v5, "start":I
    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_19
.end method

.method private playJetFile(Ljava/lang/String;)Z
    .registers 14
    .param p1, "fname"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/16 v6, -0x80

    const/4 v11, 0x0

    const/4 v1, 0x0

    .line 261
    iget-object v0, p0, Lcom/lge/opera/OperaRingtone;->mLocalPlayer:Landroid/media/JetPlayer;

    if-eqz v0, :cond_10

    .line 262
    iget-object v0, p0, Lcom/lge/opera/OperaRingtone;->mLocalPlayer:Landroid/media/JetPlayer;

    invoke-virtual {v0}, Landroid/media/JetPlayer;->release()V

    .line 263
    iput-object v11, p0, Lcom/lge/opera/OperaRingtone;->mLocalPlayer:Landroid/media/JetPlayer;

    .line 266
    :cond_10
    invoke-static {}, Landroid/media/JetPlayer;->getJetPlayer()Landroid/media/JetPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/opera/OperaRingtone;->mLocalPlayer:Landroid/media/JetPlayer;

    .line 267
    iget-object v0, p0, Lcom/lge/opera/OperaRingtone;->mLocalPlayer:Landroid/media/JetPlayer;

    invoke-virtual {v0, p0}, Landroid/media/JetPlayer;->setEventListener(Landroid/media/JetPlayer$OnJetEventListener;)V

    .line 269
    iget-object v0, p0, Lcom/lge/opera/OperaRingtone;->mLocalPlayer:Landroid/media/JetPlayer;

    invoke-virtual {v0, p1}, Landroid/media/JetPlayer;->loadJetFile(Ljava/lang/String;)Z

    move-result v9

    .line 270
    .local v9, "res":Z
    if-nez v9, :cond_2c

    .line 272
    iget-object v0, p0, Lcom/lge/opera/OperaRingtone;->mLocalPlayer:Landroid/media/JetPlayer;

    invoke-virtual {v0}, Landroid/media/JetPlayer;->release()V

    .line 273
    iput-object v11, p0, Lcom/lge/opera/OperaRingtone;->mLocalPlayer:Landroid/media/JetPlayer;

    move v10, v9

    .line 300
    .end local v9    # "res":Z
    .local v10, "res":Z
    :goto_2b
    return v10

    .line 277
    .end local v10    # "res":Z
    .restart local v9    # "res":Z
    :cond_2c
    invoke-static {}, Landroid/media/JetPlayer;->getMaxTracks()I

    move-result v8

    .line 278
    .local v8, "maxTrack":I
    new-array v5, v8, [Z

    .line 279
    .local v5, "muteArray":[Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_33
    if-lt v7, v8, :cond_51

    .line 281
    iget v0, p0, Lcom/lge/opera/OperaRingtone;->mPatternType:I

    if-eq v0, v3, :cond_3e

    iget v0, p0, Lcom/lge/opera/OperaRingtone;->mPatternType:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_58

    .line 282
    :cond_3e
    iget-object v0, p0, Lcom/lge/opera/OperaRingtone;->mLocalPlayer:Landroid/media/JetPlayer;

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Landroid/media/JetPlayer;->queueJetSegmentMuteArray(IIII[ZB)Z

    move-result v9

    .line 287
    :goto_46
    if-nez v9, :cond_62

    .line 289
    iget-object v0, p0, Lcom/lge/opera/OperaRingtone;->mLocalPlayer:Landroid/media/JetPlayer;

    invoke-virtual {v0}, Landroid/media/JetPlayer;->release()V

    .line 290
    iput-object v11, p0, Lcom/lge/opera/OperaRingtone;->mLocalPlayer:Landroid/media/JetPlayer;

    move v10, v9

    .line 291
    .end local v9    # "res":Z
    .restart local v10    # "res":Z
    goto :goto_2b

    .line 279
    .end local v10    # "res":Z
    .restart local v9    # "res":Z
    :cond_51
    iget-boolean v0, p0, Lcom/lge/opera/OperaRingtone;->mMuteState:Z

    aput-boolean v0, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_33

    .line 284
    :cond_58
    iget-object v0, p0, Lcom/lge/opera/OperaRingtone;->mLocalPlayer:Landroid/media/JetPlayer;

    const/4 v3, -0x1

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Landroid/media/JetPlayer;->queueJetSegmentMuteArray(IIII[ZB)Z

    move-result v9

    goto :goto_46

    .line 294
    :cond_62
    const-string v0, "OperaRingtone"

    const-string v1, "play Jet file"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v0, p0, Lcom/lge/opera/OperaRingtone;->mLocalPlayer:Landroid/media/JetPlayer;

    invoke-virtual {v0}, Landroid/media/JetPlayer;->play()Z

    move-result v9

    .line 296
    if-nez v9, :cond_78

    .line 297
    iget-object v0, p0, Lcom/lge/opera/OperaRingtone;->mLocalPlayer:Landroid/media/JetPlayer;

    invoke-virtual {v0}, Landroid/media/JetPlayer;->release()V

    .line 298
    iput-object v11, p0, Lcom/lge/opera/OperaRingtone;->mLocalPlayer:Landroid/media/JetPlayer;

    :cond_78
    move v10, v9

    .line 300
    .end local v9    # "res":Z
    .restart local v10    # "res":Z
    goto :goto_2b
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 234
    if-ne p1, p0, :cond_5

    .line 255
    :cond_4
    :goto_4
    return v1

    .line 238
    :cond_5
    instance-of v3, p1, Lcom/lge/opera/OperaRingtone;

    if-eqz v3, :cond_2c

    move-object v0, p1

    .line 239
    check-cast v0, Lcom/lge/opera/OperaRingtone;

    .line 241
    .local v0, "or":Lcom/lge/opera/OperaRingtone;
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    if-eq v3, v4, :cond_18

    move v1, v2

    .line 242
    goto :goto_4

    .line 245
    :cond_18
    iget-object v3, p0, Lcom/lge/opera/OperaRingtone;->mPhoneNumber:Ljava/lang/String;

    iget-object v4, v0, Lcom/lge/opera/OperaRingtone;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    move v1, v2

    .line 246
    goto :goto_4

    .line 249
    :cond_24
    iget v3, p0, Lcom/lge/opera/OperaRingtone;->mPatternType:I

    iget v4, v0, Lcom/lge/opera/OperaRingtone;->mPatternType:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 250
    goto :goto_4

    .end local v0    # "or":Lcom/lge/opera/OperaRingtone;
    :cond_2c
    move v1, v2

    .line 255
    goto :goto_4
.end method

.method public isPlaying()Z
    .registers 3

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/lge/opera/OperaRingtone;->mRingtoneState:Z

    if-eqz v0, :cond_d

    .line 118
    const-string v0, "OperaRingtone"

    const-string v1, "isPlaying returns true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/4 v0, 0x1

    .line 122
    :goto_c
    return v0

    .line 121
    :cond_d
    const-string v0, "OperaRingtone"

    const-string v1, "isPlaying returns false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public onJetEvent(Landroid/media/JetPlayer;SBBBB)V
    .registers 10
    .param p1, "player"    # Landroid/media/JetPlayer;
    .param p2, "segment"    # S
    .param p3, "track"    # B
    .param p4, "channel"    # B
    .param p5, "controller"    # B
    .param p6, "value"    # B

    .prologue
    .line 336
    const-string v0, "OperaRingtone"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "jet got event "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    return-void
.end method

.method public onJetNumQueuedSegmentUpdate(Landroid/media/JetPlayer;I)V
    .registers 3
    .param p1, "player"    # Landroid/media/JetPlayer;
    .param p2, "nbSegments"    # I

    .prologue
    .line 348
    return-void
.end method

.method public onJetPauseUpdate(Landroid/media/JetPlayer;I)V
    .registers 8
    .param p1, "player"    # Landroid/media/JetPlayer;
    .param p2, "paused"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 355
    const-string v0, "OperaRingtone"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onJetPauseUpdate(): paused ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    if-eq p2, v3, :cond_4c

    .line 357
    iput-boolean v3, p0, Lcom/lge/opera/OperaRingtone;->mRingtoneState:Z

    .line 358
    iput-boolean v3, p0, Lcom/lge/opera/OperaRingtone;->mLocalPayerState:Z

    .line 364
    :goto_1c
    const-string v0, "OperaRingtone"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onJetPauseUpdate mPlayState is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/lge/opera/OperaRingtone;->mRingtoneState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v0, p0, Lcom/lge/opera/OperaRingtone;->mOnPauseUpdateListener:Lcom/lge/opera/OperaRingtone$OnPauseUpdateListener;

    if-eqz v0, :cond_3b

    .line 367
    iget-object v0, p0, Lcom/lge/opera/OperaRingtone;->mOnPauseUpdateListener:Lcom/lge/opera/OperaRingtone$OnPauseUpdateListener;

    invoke-interface {v0, p0, p2}, Lcom/lge/opera/OperaRingtone$OnPauseUpdateListener;->onPauseUpdate(Lcom/lge/opera/OperaRingtone;I)Z

    .line 370
    :cond_3b
    iget-boolean v0, p0, Lcom/lge/opera/OperaRingtone;->mRingtoneState:Z

    if-nez v0, :cond_4b

    .line 371
    iget-object v0, p0, Lcom/lge/opera/OperaRingtone;->mLocalPlayer:Landroid/media/JetPlayer;

    if-eqz v0, :cond_4b

    .line 372
    iget-object v0, p0, Lcom/lge/opera/OperaRingtone;->mLocalPlayer:Landroid/media/JetPlayer;

    invoke-virtual {v0}, Landroid/media/JetPlayer;->release()V

    .line 373
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/opera/OperaRingtone;->mLocalPlayer:Landroid/media/JetPlayer;

    .line 376
    :cond_4b
    return-void

    .line 360
    :cond_4c
    iput-boolean v4, p0, Lcom/lge/opera/OperaRingtone;->mRingtoneState:Z

    .line 361
    iput-boolean v4, p0, Lcom/lge/opera/OperaRingtone;->mLocalPayerState:Z

    goto :goto_1c
.end method

.method public onJetUserIdUpdate(Landroid/media/JetPlayer;II)V
    .registers 7
    .param p1, "player"    # Landroid/media/JetPlayer;
    .param p2, "userId"    # I
    .param p3, "repeatCount"    # I

    .prologue
    .line 383
    const-string v0, "OperaRingtone"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onJetUserIdUpdate(): userId ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " repeatCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    return-void
.end method

.method public play()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0xbe

    const/16 v3, 0x7e

    .line 162
    iget v1, p0, Lcom/lge/opera/OperaRingtone;->mPatternType:I

    if-nez v1, :cond_44

    .line 163
    new-instance v0, Lcom/lge/opera/RingtoneFile;

    const-string v1, "ACOUSTIC_GRAND_PIANO"

    iget v2, p0, Lcom/lge/opera/OperaRingtone;->mPatternType:I

    invoke-direct {v0, v1, v4, v2}, Lcom/lge/opera/RingtoneFile;-><init>(Ljava/lang/String;II)V

    .line 164
    .local v0, "ringtoneFile":Lcom/lge/opera/RingtoneFile;
    iget-object v1, p0, Lcom/lge/opera/OperaRingtone;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lge/opera/RingtoneFile;->fileGenerate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/opera/OperaRingtone;->JetFilePath:Ljava/lang/String;

    .line 176
    .end local v0    # "ringtoneFile":Lcom/lge/opera/RingtoneFile;
    :cond_1a
    :goto_1a
    iget v1, p0, Lcom/lge/opera/OperaRingtone;->mPatternType:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_88

    .line 177
    new-instance v0, Lcom/lge/opera/RingtoneFile;

    const-string v1, "ACOUSTIC_GRAND_PIANO"

    iget v2, p0, Lcom/lge/opera/OperaRingtone;->mPatternType:I

    invoke-direct {v0, v1, v4, v2}, Lcom/lge/opera/RingtoneFile;-><init>(Ljava/lang/String;II)V

    .line 178
    .restart local v0    # "ringtoneFile":Lcom/lge/opera/RingtoneFile;
    iget-object v1, p0, Lcom/lge/opera/OperaRingtone;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lge/opera/RingtoneFile;->createNewJetFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/opera/OperaRingtone;->JetFilePath:Ljava/lang/String;

    .line 184
    .end local v0    # "ringtoneFile":Lcom/lge/opera/RingtoneFile;
    :cond_31
    :goto_31
    iget-object v1, p0, Lcom/lge/opera/OperaRingtone;->JetFilePath:Ljava/lang/String;

    if-eqz v1, :cond_43

    .line 185
    const-string v1, "OperaRingtone"

    const-string v2, "fileGenerate ok"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iput-boolean v5, p0, Lcom/lge/opera/OperaRingtone;->mRingtoneState:Z

    .line 187
    iget-object v1, p0, Lcom/lge/opera/OperaRingtone;->JetFilePath:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/lge/opera/OperaRingtone;->playJetFile(Ljava/lang/String;)Z

    .line 189
    :cond_43
    return-void

    .line 165
    :cond_44
    iget v1, p0, Lcom/lge/opera/OperaRingtone;->mPatternType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5b

    .line 166
    new-instance v0, Lcom/lge/opera/RingtoneFile;

    const-string v1, "ACOUSTIC_GRAND_PIANO"

    iget v2, p0, Lcom/lge/opera/OperaRingtone;->mPatternType:I

    invoke-direct {v0, v1, v3, v2}, Lcom/lge/opera/RingtoneFile;-><init>(Ljava/lang/String;II)V

    .line 167
    .restart local v0    # "ringtoneFile":Lcom/lge/opera/RingtoneFile;
    iget-object v1, p0, Lcom/lge/opera/OperaRingtone;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lge/opera/RingtoneFile;->fileGenerate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/opera/OperaRingtone;->JetFilePath:Ljava/lang/String;

    goto :goto_1a

    .line 168
    .end local v0    # "ringtoneFile":Lcom/lge/opera/RingtoneFile;
    :cond_5b
    iget v1, p0, Lcom/lge/opera/OperaRingtone;->mPatternType:I

    if-ne v1, v5, :cond_71

    .line 169
    new-instance v0, Lcom/lge/opera/RingtoneFile;

    const-string v1, "ACOUSTIC_GRAND_PIANO"

    iget v2, p0, Lcom/lge/opera/OperaRingtone;->mPatternType:I

    invoke-direct {v0, v1, v4, v2}, Lcom/lge/opera/RingtoneFile;-><init>(Ljava/lang/String;II)V

    .line 170
    .restart local v0    # "ringtoneFile":Lcom/lge/opera/RingtoneFile;
    iget-object v1, p0, Lcom/lge/opera/OperaRingtone;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lge/opera/RingtoneFile;->fileGenerate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/opera/OperaRingtone;->JetFilePath:Ljava/lang/String;

    goto :goto_1a

    .line 171
    .end local v0    # "ringtoneFile":Lcom/lge/opera/RingtoneFile;
    :cond_71
    iget v1, p0, Lcom/lge/opera/OperaRingtone;->mPatternType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1a

    .line 172
    new-instance v0, Lcom/lge/opera/RingtoneFile;

    const-string v1, "ACOUSTIC_GRAND_PIANO"

    iget v2, p0, Lcom/lge/opera/OperaRingtone;->mPatternType:I

    invoke-direct {v0, v1, v3, v2}, Lcom/lge/opera/RingtoneFile;-><init>(Ljava/lang/String;II)V

    .line 173
    .restart local v0    # "ringtoneFile":Lcom/lge/opera/RingtoneFile;
    iget-object v1, p0, Lcom/lge/opera/OperaRingtone;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lge/opera/RingtoneFile;->fileGenerate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/opera/OperaRingtone;->JetFilePath:Ljava/lang/String;

    goto :goto_1a

    .line 179
    .end local v0    # "ringtoneFile":Lcom/lge/opera/RingtoneFile;
    :cond_88
    iget v1, p0, Lcom/lge/opera/OperaRingtone;->mPatternType:I

    const/16 v2, 0x65

    if-ne v1, v2, :cond_31

    .line 180
    new-instance v0, Lcom/lge/opera/RingtoneFile;

    const-string v1, "ACOUSTIC_GRAND_PIANO"

    iget v2, p0, Lcom/lge/opera/OperaRingtone;->mPatternType:I

    invoke-direct {v0, v1, v3, v2}, Lcom/lge/opera/RingtoneFile;-><init>(Ljava/lang/String;II)V

    .line 181
    .restart local v0    # "ringtoneFile":Lcom/lge/opera/RingtoneFile;
    iget-object v1, p0, Lcom/lge/opera/OperaRingtone;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lge/opera/RingtoneFile;->createNewJetFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/opera/OperaRingtone;->JetFilePath:Ljava/lang/String;

    goto :goto_31
.end method

.method public release()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 215
    iget-boolean v0, p0, Lcom/lge/opera/OperaRingtone;->mLocalPayerState:Z

    if-eqz v0, :cond_e

    .line 216
    iget-object v0, p0, Lcom/lge/opera/OperaRingtone;->mLocalPlayer:Landroid/media/JetPlayer;

    invoke-virtual {v0}, Landroid/media/JetPlayer;->pause()Z

    .line 217
    iput-boolean v1, p0, Lcom/lge/opera/OperaRingtone;->mLocalPayerState:Z

    .line 218
    iput-boolean v1, p0, Lcom/lge/opera/OperaRingtone;->mRingtoneState:Z

    .line 221
    :cond_e
    iget-object v0, p0, Lcom/lge/opera/OperaRingtone;->mLocalPlayer:Landroid/media/JetPlayer;

    if-eqz v0, :cond_1a

    .line 222
    iget-object v0, p0, Lcom/lge/opera/OperaRingtone;->mLocalPlayer:Landroid/media/JetPlayer;

    invoke-virtual {v0}, Landroid/media/JetPlayer;->release()V

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/opera/OperaRingtone;->mLocalPlayer:Landroid/media/JetPlayer;

    .line 225
    :cond_1a
    return-void
.end method

.method public setMute(Z)V
    .registers 6
    .param p1, "mute"    # Z

    .prologue
    .line 131
    iget-object v2, p0, Lcom/lge/opera/OperaRingtone;->mLocalPlayer:Landroid/media/JetPlayer;

    if-eqz v2, :cond_b

    .line 132
    invoke-static {}, Landroid/media/JetPlayer;->getMaxTracks()I

    move-result v1

    .line 133
    .local v1, "maxTrack":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    if-lt v0, v1, :cond_e

    .line 137
    .end local v0    # "i":I
    .end local v1    # "maxTrack":I
    :cond_b
    iput-boolean p1, p0, Lcom/lge/opera/OperaRingtone;->mMuteState:Z

    .line 138
    return-void

    .line 134
    .restart local v0    # "i":I
    .restart local v1    # "maxTrack":I
    :cond_e
    iget-object v2, p0, Lcom/lge/opera/OperaRingtone;->mLocalPlayer:Landroid/media/JetPlayer;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, p1, v3}, Landroid/media/JetPlayer;->setMuteFlag(IZZ)Z

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method public setOnPauseUpdateListener(Lcom/lge/opera/OperaRingtone$OnPauseUpdateListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/lge/opera/OperaRingtone$OnPauseUpdateListener;

    .prologue
    .line 317
    iput-object p1, p0, Lcom/lge/opera/OperaRingtone;->mOnPauseUpdateListener:Lcom/lge/opera/OperaRingtone$OnPauseUpdateListener;

    .line 318
    return-void
.end method

.method public setVolume(F)V
    .registers 4
    .param p1, "volume"    # F

    .prologue
    .line 147
    iget-object v0, p0, Lcom/lge/opera/OperaRingtone;->mLocalPlayer:Landroid/media/JetPlayer;

    if-eqz v0, :cond_a

    .line 148
    iget-object v0, p0, Lcom/lge/opera/OperaRingtone;->mLocalPlayer:Landroid/media/JetPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/JetPlayer;->setVolume(FF)Z

    .line 152
    :goto_9
    return-void

    .line 150
    :cond_a
    const-string v0, "OperaRingtone"

    const-string v1, "no local player is available"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public stop()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 196
    iget-boolean v0, p0, Lcom/lge/opera/OperaRingtone;->mLocalPayerState:Z

    if-eqz v0, :cond_12

    .line 197
    iget-object v0, p0, Lcom/lge/opera/OperaRingtone;->mLocalPlayer:Landroid/media/JetPlayer;

    if-eqz v0, :cond_e

    .line 198
    iget-object v0, p0, Lcom/lge/opera/OperaRingtone;->mLocalPlayer:Landroid/media/JetPlayer;

    invoke-virtual {v0}, Landroid/media/JetPlayer;->pause()Z

    .line 200
    :cond_e
    iput-boolean v1, p0, Lcom/lge/opera/OperaRingtone;->mLocalPayerState:Z

    .line 201
    iput-boolean v1, p0, Lcom/lge/opera/OperaRingtone;->mRingtoneState:Z

    .line 204
    :cond_12
    iget-object v0, p0, Lcom/lge/opera/OperaRingtone;->mLocalPlayer:Landroid/media/JetPlayer;

    if-eqz v0, :cond_1e

    .line 205
    iget-object v0, p0, Lcom/lge/opera/OperaRingtone;->mLocalPlayer:Landroid/media/JetPlayer;

    invoke-virtual {v0}, Landroid/media/JetPlayer;->release()V

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/opera/OperaRingtone;->mLocalPlayer:Landroid/media/JetPlayer;

    .line 208
    :cond_1e
    return-void
.end method
