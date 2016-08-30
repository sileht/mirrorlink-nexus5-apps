.class public Lcom/lge/telephony/LGServiceStateImpl;
.super Ljava/lang/Object;
.source "LGServiceStateImpl.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "LGServiceStateImpl"


# instance fields
.field private mCheck64QAM:I

.field private mDataNetworkName:Ljava/lang/String;

.field private mDataRoaming:Z

.field private mIsDataSearching:Z

.field private mIsRATDualCarrier:I

.field private mIsVoiceSearching:Z

.field private mVoiceNetworkName:Ljava/lang/String;

.field private mVoiceRoaming:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-boolean v1, p0, Lcom/lge/telephony/LGServiceStateImpl;->mVoiceRoaming:Z

    .line 20
    iput-boolean v1, p0, Lcom/lge/telephony/LGServiceStateImpl;->mDataRoaming:Z

    .line 23
    iput-boolean v1, p0, Lcom/lge/telephony/LGServiceStateImpl;->mIsVoiceSearching:Z

    .line 24
    iput-boolean v1, p0, Lcom/lge/telephony/LGServiceStateImpl;->mIsDataSearching:Z

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/telephony/LGServiceStateImpl;->mVoiceNetworkName:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/telephony/LGServiceStateImpl;->mDataNetworkName:Ljava/lang/String;

    .line 31
    iput v1, p0, Lcom/lge/telephony/LGServiceStateImpl;->mCheck64QAM:I

    .line 34
    iput v1, p0, Lcom/lge/telephony/LGServiceStateImpl;->mIsRATDualCarrier:I

    .line 38
    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/lge/telephony/LGServiceStateImpl;)V
    .registers 3
    .param p1, "s"    # Lcom/lge/telephony/LGServiceStateImpl;

    .prologue
    .line 42
    iget-boolean v0, p1, Lcom/lge/telephony/LGServiceStateImpl;->mVoiceRoaming:Z

    iput-boolean v0, p0, Lcom/lge/telephony/LGServiceStateImpl;->mVoiceRoaming:Z

    .line 43
    iget-boolean v0, p1, Lcom/lge/telephony/LGServiceStateImpl;->mDataRoaming:Z

    iput-boolean v0, p0, Lcom/lge/telephony/LGServiceStateImpl;->mDataRoaming:Z

    .line 46
    iget-boolean v0, p1, Lcom/lge/telephony/LGServiceStateImpl;->mIsVoiceSearching:Z

    iput-boolean v0, p0, Lcom/lge/telephony/LGServiceStateImpl;->mIsVoiceSearching:Z

    .line 47
    iget-boolean v0, p1, Lcom/lge/telephony/LGServiceStateImpl;->mIsDataSearching:Z

    iput-boolean v0, p0, Lcom/lge/telephony/LGServiceStateImpl;->mIsDataSearching:Z

    .line 50
    iget-object v0, p1, Lcom/lge/telephony/LGServiceStateImpl;->mVoiceNetworkName:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/telephony/LGServiceStateImpl;->mVoiceNetworkName:Ljava/lang/String;

    .line 51
    iget-object v0, p1, Lcom/lge/telephony/LGServiceStateImpl;->mDataNetworkName:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/telephony/LGServiceStateImpl;->mDataNetworkName:Ljava/lang/String;

    .line 54
    iget v0, p1, Lcom/lge/telephony/LGServiceStateImpl;->mCheck64QAM:I

    iput v0, p0, Lcom/lge/telephony/LGServiceStateImpl;->mCheck64QAM:I

    .line 57
    iget v0, p1, Lcom/lge/telephony/LGServiceStateImpl;->mIsRATDualCarrier:I

    iput v0, p0, Lcom/lge/telephony/LGServiceStateImpl;->mIsRATDualCarrier:I

    .line 59
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 286
    :try_start_1
    move-object v0, p1

    check-cast v0, Lcom/lge/telephony/LGServiceStateImpl;

    move-object v1, v0
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_5} :catch_22

    .line 291
    .local v1, "s":Lcom/lge/telephony/LGServiceStateImpl;
    if-nez p1, :cond_8

    .line 295
    .end local v1    # "s":Lcom/lge/telephony/LGServiceStateImpl;
    :cond_7
    :goto_7
    return v2

    .line 297
    .restart local v1    # "s":Lcom/lge/telephony/LGServiceStateImpl;
    :cond_8
    iget-boolean v3, p0, Lcom/lge/telephony/LGServiceStateImpl;->mIsVoiceSearching:Z

    iget-boolean v4, v1, Lcom/lge/telephony/LGServiceStateImpl;->mIsVoiceSearching:Z

    if-ne v3, v4, :cond_7

    .line 298
    iget-boolean v3, p0, Lcom/lge/telephony/LGServiceStateImpl;->mIsDataSearching:Z

    iget-boolean v4, v1, Lcom/lge/telephony/LGServiceStateImpl;->mIsDataSearching:Z

    if-ne v3, v4, :cond_7

    .line 301
    iget v3, p0, Lcom/lge/telephony/LGServiceStateImpl;->mCheck64QAM:I

    iget v4, v1, Lcom/lge/telephony/LGServiceStateImpl;->mCheck64QAM:I

    if-ne v3, v4, :cond_7

    .line 304
    iget v3, p0, Lcom/lge/telephony/LGServiceStateImpl;->mIsRATDualCarrier:I

    iget v4, v1, Lcom/lge/telephony/LGServiceStateImpl;->mIsRATDualCarrier:I

    if-ne v3, v4, :cond_7

    .line 295
    const/4 v2, 0x1

    goto :goto_7

    .line 288
    .end local v1    # "s":Lcom/lge/telephony/LGServiceStateImpl;
    :catch_22
    move-exception v3

    goto :goto_7
.end method

.method public getCheck64QAM()I
    .registers 2

    .prologue
    .line 107
    iget v0, p0, Lcom/lge/telephony/LGServiceStateImpl;->mCheck64QAM:I

    return v0
.end method

.method public getDataNetworkName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/lge/telephony/LGServiceStateImpl;->mDataNetworkName:Ljava/lang/String;

    return-object v0
.end method

.method public getDataRoaming()Z
    .registers 4

    .prologue
    .line 198
    const-string v0, "LGServiceStateImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getDataRoaming = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/lge/telephony/LGServiceStateImpl;->mDataRoaming:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-boolean v0, p0, Lcom/lge/telephony/LGServiceStateImpl;->mDataRoaming:Z

    return v0
.end method

.method public getRATDualCarrier()I
    .registers 2

    .prologue
    .line 247
    iget v0, p0, Lcom/lge/telephony/LGServiceStateImpl;->mIsRATDualCarrier:I

    return v0
.end method

.method public getVoiceNetworkName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/lge/telephony/LGServiceStateImpl;->mVoiceNetworkName:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceRoaming()Z
    .registers 4

    .prologue
    .line 193
    const-string v0, "LGServiceStateImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getVoiceRoaming = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/lge/telephony/LGServiceStateImpl;->mVoiceRoaming:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-boolean v0, p0, Lcom/lge/telephony/LGServiceStateImpl;->mVoiceRoaming:Z

    return v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 313
    iget-boolean v0, p0, Lcom/lge/telephony/LGServiceStateImpl;->mIsVoiceSearching:Z

    if-eqz v0, :cond_17

    move v0, v1

    .line 314
    :goto_7
    iget-boolean v3, p0, Lcom/lge/telephony/LGServiceStateImpl;->mIsDataSearching:Z

    if-eqz v3, :cond_19

    .line 313
    :goto_b
    add-int/2addr v0, v1

    .line 317
    iget v1, p0, Lcom/lge/telephony/LGServiceStateImpl;->mCheck64QAM:I

    mul-int/lit8 v1, v1, 0x29

    .line 313
    add-int/2addr v0, v1

    .line 320
    iget v1, p0, Lcom/lge/telephony/LGServiceStateImpl;->mIsRATDualCarrier:I

    mul-int/lit8 v1, v1, 0x2b

    .line 311
    add-int/2addr v0, v1

    return v0

    :cond_17
    move v0, v2

    .line 313
    goto :goto_7

    :cond_19
    move v1, v2

    .line 314
    goto :goto_b
.end method

.method public isDataSearching()Z
    .registers 4

    .prologue
    .line 218
    const-string v0, "LGServiceStateImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isDataSearching = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/lge/telephony/LGServiceStateImpl;->mIsDataSearching:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-boolean v0, p0, Lcom/lge/telephony/LGServiceStateImpl;->mIsDataSearching:Z

    return v0
.end method

.method public isVoiceSearching()Z
    .registers 4

    .prologue
    .line 213
    const-string v0, "LGServiceStateImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isVoiceSearching = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/lge/telephony/LGServiceStateImpl;->mIsVoiceSearching:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-boolean v0, p0, Lcom/lge/telephony/LGServiceStateImpl;->mIsVoiceSearching:Z

    return v0
.end method

.method public readFrom(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 141
    const-string v0, "voiceRoaming"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lge/telephony/LGServiceStateImpl;->mVoiceRoaming:Z

    .line 142
    const-string v0, "dataRoaming"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lge/telephony/LGServiceStateImpl;->mDataRoaming:Z

    .line 145
    const-string v0, "voiceSearching"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lge/telephony/LGServiceStateImpl;->mIsVoiceSearching:Z

    .line 146
    const-string v0, "dataSearching"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lge/telephony/LGServiceStateImpl;->mIsDataSearching:Z

    .line 149
    const-string v0, "voiceNetworkName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/telephony/LGServiceStateImpl;->mVoiceNetworkName:Ljava/lang/String;

    .line 150
    const-string v0, "dataNetworkName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/telephony/LGServiceStateImpl;->mDataNetworkName:Ljava/lang/String;

    .line 153
    const-string v0, "Check64QAM"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lge/telephony/LGServiceStateImpl;->mCheck64QAM:I

    .line 156
    const-string v0, "RATDualCarrier"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lge/telephony/LGServiceStateImpl;->mIsRATDualCarrier:I

    .line 158
    return-void
.end method

.method public readFrom(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3e

    move v0, v1

    :goto_9
    iput-boolean v0, p0, Lcom/lge/telephony/LGServiceStateImpl;->mVoiceRoaming:Z

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_40

    move v0, v1

    :goto_12
    iput-boolean v0, p0, Lcom/lge/telephony/LGServiceStateImpl;->mDataRoaming:Z

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_42

    move v0, v1

    :goto_1b
    iput-boolean v0, p0, Lcom/lge/telephony/LGServiceStateImpl;->mIsVoiceSearching:Z

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_44

    :goto_23
    iput-boolean v1, p0, Lcom/lge/telephony/LGServiceStateImpl;->mIsDataSearching:Z

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/telephony/LGServiceStateImpl;->mVoiceNetworkName:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/telephony/LGServiceStateImpl;->mDataNetworkName:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/telephony/LGServiceStateImpl;->mCheck64QAM:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/telephony/LGServiceStateImpl;->mIsRATDualCarrier:I

    .line 79
    return-void

    :cond_3e
    move v0, v2

    .line 62
    goto :goto_9

    :cond_40
    move v0, v2

    .line 63
    goto :goto_12

    :cond_42
    move v0, v2

    .line 66
    goto :goto_1b

    :cond_44
    move v1, v2

    .line 67
    goto :goto_23
.end method

.method public setCheck64QAM(I)V
    .registers 2
    .param p1, "Check64QAM"    # I

    .prologue
    .line 136
    iput p1, p0, Lcom/lge/telephony/LGServiceStateImpl;->mCheck64QAM:I

    .line 137
    return-void
.end method

.method public setDataNetworkName(Ljava/lang/String;)V
    .registers 5
    .param p1, "dataNetworkName"    # Ljava/lang/String;

    .prologue
    .line 238
    const-string v0, "LGServiceStateImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setDataNetworkName = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iput-object p1, p0, Lcom/lge/telephony/LGServiceStateImpl;->mDataNetworkName:Ljava/lang/String;

    .line 240
    return-void
.end method

.method public setDataRoaming(Z)V
    .registers 5
    .param p1, "dataRoaming"    # Z

    .prologue
    .line 188
    const-string v0, "LGServiceStateImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setDataRoaming = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iput-boolean p1, p0, Lcom/lge/telephony/LGServiceStateImpl;->mDataRoaming:Z

    .line 190
    return-void
.end method

.method public setDataSearching(Z)V
    .registers 2
    .param p1, "isDataSearching"    # Z

    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/lge/telephony/LGServiceStateImpl;->mIsDataSearching:Z

    .line 210
    return-void
.end method

.method public setNullState(I)V
    .registers 4
    .param p1, "state"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Lcom/lge/telephony/LGServiceStateImpl;->mVoiceRoaming:Z

    .line 114
    iput-boolean v0, p0, Lcom/lge/telephony/LGServiceStateImpl;->mDataRoaming:Z

    .line 117
    iput-boolean v0, p0, Lcom/lge/telephony/LGServiceStateImpl;->mIsVoiceSearching:Z

    .line 118
    iput-boolean v0, p0, Lcom/lge/telephony/LGServiceStateImpl;->mIsDataSearching:Z

    .line 121
    iput-object v1, p0, Lcom/lge/telephony/LGServiceStateImpl;->mVoiceNetworkName:Ljava/lang/String;

    .line 122
    iput-object v1, p0, Lcom/lge/telephony/LGServiceStateImpl;->mDataNetworkName:Ljava/lang/String;

    .line 125
    iput v0, p0, Lcom/lge/telephony/LGServiceStateImpl;->mCheck64QAM:I

    .line 128
    iput v0, p0, Lcom/lge/telephony/LGServiceStateImpl;->mIsRATDualCarrier:I

    .line 130
    return-void
.end method

.method public setRATDualCarrier(I)V
    .registers 2
    .param p1, "isRATDualCarrier"    # I

    .prologue
    .line 253
    iput p1, p0, Lcom/lge/telephony/LGServiceStateImpl;->mIsRATDualCarrier:I

    .line 254
    return-void
.end method

.method public setVoiceNetworkName(Ljava/lang/String;)V
    .registers 5
    .param p1, "voiceNetworkName"    # Ljava/lang/String;

    .prologue
    .line 233
    const-string v0, "LGServiceStateImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setVoiceNetworkName = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iput-object p1, p0, Lcom/lge/telephony/LGServiceStateImpl;->mVoiceNetworkName:Ljava/lang/String;

    .line 235
    return-void
.end method

.method public setVoiceRoaming(Z)V
    .registers 5
    .param p1, "voiceRomaing"    # Z

    .prologue
    .line 183
    const-string v0, "LGServiceStateImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setVoiceRoaming = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iput-boolean p1, p0, Lcom/lge/telephony/LGServiceStateImpl;->mVoiceRoaming:Z

    .line 185
    return-void
.end method

.method public setVoiceSearching(Z)V
    .registers 2
    .param p1, "isVoiceSearching"    # Z

    .prologue
    .line 205
    iput-boolean p1, p0, Lcom/lge/telephony/LGServiceStateImpl;->mIsVoiceSearching:Z

    .line 206
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "voice roaming="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/lge/telephony/LGServiceStateImpl;->mVoiceRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 262
    const-string v1, " Data Roaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/lge/telephony/LGServiceStateImpl;->mDataRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 265
    const-string v1, " mIsVoiceSearching="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/lge/telephony/LGServiceStateImpl;->mIsVoiceSearching:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 266
    const-string v1, " mIsDataSearching="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/lge/telephony/LGServiceStateImpl;->mIsDataSearching:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 269
    const-string v1, " mVoiceNetworkName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/telephony/LGServiceStateImpl;->mVoiceNetworkName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 270
    const-string v1, " mDataNetworkName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/telephony/LGServiceStateImpl;->mDataNetworkName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 273
    const-string v1, " Check64QAM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/telephony/LGServiceStateImpl;->mCheck64QAM:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 276
    const-string v1, " Dual carrier"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/telephony/LGServiceStateImpl;->mIsRATDualCarrier:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 261
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 161
    const-string v0, "voiceRoaming"

    iget-boolean v1, p0, Lcom/lge/telephony/LGServiceStateImpl;->mVoiceRoaming:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 162
    const-string v0, "dataRoaming"

    iget-boolean v1, p0, Lcom/lge/telephony/LGServiceStateImpl;->mDataRoaming:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 165
    const-string v0, "voiceSearching"

    iget-boolean v1, p0, Lcom/lge/telephony/LGServiceStateImpl;->mIsVoiceSearching:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 166
    const-string v0, "dataSearching"

    iget-boolean v1, p0, Lcom/lge/telephony/LGServiceStateImpl;->mIsDataSearching:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 169
    const-string v0, "voiceNetworkName"

    iget-object v1, p0, Lcom/lge/telephony/LGServiceStateImpl;->mVoiceNetworkName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v0, "dataNetworkName"

    iget-object v1, p0, Lcom/lge/telephony/LGServiceStateImpl;->mDataNetworkName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v0, "Check64QAM"

    iget v1, p0, Lcom/lge/telephony/LGServiceStateImpl;->mCheck64QAM:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 176
    const-string v0, "RATDualCarrier"

    iget v1, p0, Lcom/lge/telephony/LGServiceStateImpl;->mIsRATDualCarrier:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 178
    return-void
.end method

.method public writeTo(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 83
    iget-boolean v0, p0, Lcom/lge/telephony/LGServiceStateImpl;->mVoiceRoaming:Z

    if-eqz v0, :cond_36

    move v0, v1

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget-boolean v0, p0, Lcom/lge/telephony/LGServiceStateImpl;->mDataRoaming:Z

    if-eqz v0, :cond_38

    move v0, v1

    :goto_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget-boolean v0, p0, Lcom/lge/telephony/LGServiceStateImpl;->mIsVoiceSearching:Z

    if-eqz v0, :cond_3a

    move v0, v1

    :goto_17
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget-boolean v0, p0, Lcom/lge/telephony/LGServiceStateImpl;->mIsDataSearching:Z

    if-eqz v0, :cond_3c

    :goto_1e
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget-object v0, p0, Lcom/lge/telephony/LGServiceStateImpl;->mVoiceNetworkName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/lge/telephony/LGServiceStateImpl;->mDataNetworkName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget v0, p0, Lcom/lge/telephony/LGServiceStateImpl;->mCheck64QAM:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget v0, p0, Lcom/lge/telephony/LGServiceStateImpl;->mIsRATDualCarrier:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    return-void

    :cond_36
    move v0, v2

    .line 83
    goto :goto_7

    :cond_38
    move v0, v2

    .line 84
    goto :goto_f

    :cond_3a
    move v0, v2

    .line 87
    goto :goto_17

    :cond_3c
    move v1, v2

    .line 88
    goto :goto_1e
.end method
