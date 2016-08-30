.class public Lcom/lge/nfcaddon/GsmaNfcController;
.super Ljava/lang/Object;
.source "GsmaNfcController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/nfcaddon/GsmaNfcController$NfcAddonRecovery;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GsmaNfcController"

.field private static sService:Lcom/lge/nfcaddon/IGsmaNfcController;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRecovery:Lcom/lge/nfcaddon/GsmaNfcController$NfcAddonRecovery;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lge/nfcaddon/IGsmaNfcController;Lcom/lge/nfcaddon/GsmaNfcController$NfcAddonRecovery;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/lge/nfcaddon/IGsmaNfcController;
    .param p3, "recovery"    # Lcom/lge/nfcaddon/GsmaNfcController$NfcAddonRecovery;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    if-eqz p1, :cond_7

    if-nez p2, :cond_d

    .line 29
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 31
    :cond_d
    iput-object p1, p0, Lcom/lge/nfcaddon/GsmaNfcController;->mContext:Landroid/content/Context;

    .line 32
    sput-object p2, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    .line 33
    iput-object p3, p0, Lcom/lge/nfcaddon/GsmaNfcController;->mRecovery:Lcom/lge/nfcaddon/GsmaNfcController$NfcAddonRecovery;

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/lge/nfcaddon/IGsmaNfcController;)V
    .registers 3
    .param p1, "service"    # Lcom/lge/nfcaddon/IGsmaNfcController;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    if-nez p1, :cond_b

    .line 38
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 40
    :cond_b
    sput-object p1, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    .line 41
    return-void
.end method

.method private attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/lge/nfcaddon/GsmaNfcController;->mRecovery:Lcom/lge/nfcaddon/GsmaNfcController$NfcAddonRecovery;

    if-nez v0, :cond_5

    .line 224
    :goto_4
    return-void

    .line 222
    :cond_5
    iget-object v0, p0, Lcom/lge/nfcaddon/GsmaNfcController;->mRecovery:Lcom/lge/nfcaddon/GsmaNfcController$NfcAddonRecovery;

    invoke-interface {v0, p1}, Lcom/lge/nfcaddon/GsmaNfcController$NfcAddonRecovery;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    .line 223
    iget-object v0, p0, Lcom/lge/nfcaddon/GsmaNfcController;->mRecovery:Lcom/lge/nfcaddon/GsmaNfcController$NfcAddonRecovery;

    invoke-interface {v0}, Lcom/lge/nfcaddon/GsmaNfcController$NfcAddonRecovery;->getGsmaNfcControllerServiceInterface()Lcom/lge/nfcaddon/IGsmaNfcController;

    move-result-object v0

    sput-object v0, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    goto :goto_4
.end method

.method private getService()Lcom/lge/nfcaddon/IGsmaNfcController;
    .registers 2

    .prologue
    .line 249
    sget-object v0, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    return-object v0
.end method


# virtual methods
.method public commitGsmaOffHostService(Landroid/nfc/cardemulation/ApduServiceInfo;)V
    .registers 4
    .param p1, "serviceInfo"    # Landroid/nfc/cardemulation/ApduServiceInfo;

    .prologue
    .line 160
    :try_start_0
    sget-object v1, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    if-eqz v1, :cond_9

    .line 161
    sget-object v1, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    invoke-interface {v1, p1}, Lcom/lge/nfcaddon/IGsmaNfcController;->commitGsmaOffHostService(Landroid/nfc/cardemulation/ApduServiceInfo;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 167
    :cond_9
    :goto_9
    return-void

    .line 164
    :catch_a
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/lge/nfcaddon/GsmaNfcController;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    goto :goto_9
.end method

.method public disableNfcCard(Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;)Z
    .registers 5
    .param p1, "cb"    # Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;

    .prologue
    const/4 v1, 0x0

    .line 87
    iget-object v2, p0, Lcom/lge/nfcaddon/GsmaNfcController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lge/nfcaddon/GsmaNfcController;->isGSMACertificateAllowed(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 88
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1}, Ljava/lang/SecurityException;-><init>()V

    throw v1

    .line 91
    :cond_13
    :try_start_13
    sget-object v2, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    if-eqz v2, :cond_1d

    .line 92
    sget-object v2, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    invoke-interface {v2, p1}, Lcom/lge/nfcaddon/IGsmaNfcController;->disableNfcCardCallback(Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;)Z
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1c} :catch_1e

    move-result v1

    .line 98
    :cond_1d
    :goto_1d
    return v1

    .line 96
    :catch_1e
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/lge/nfcaddon/GsmaNfcController;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    goto :goto_1d
.end method

.method public enableMultiEvt_transactionReception(Ljava/lang/String;)V
    .registers 4
    .param p1, "seName"    # Ljava/lang/String;

    .prologue
    .line 126
    :try_start_0
    sget-object v1, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    if-eqz v1, :cond_9

    .line 127
    sget-object v1, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    invoke-interface {v1, p1}, Lcom/lge/nfcaddon/IGsmaNfcController;->enableMultiEvt_transactionReception(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 133
    :cond_9
    :goto_9
    return-void

    .line 130
    :catch_a
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/lge/nfcaddon/GsmaNfcController;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    goto :goto_9
.end method

.method public enableNfcCard(Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;)Z
    .registers 5
    .param p1, "cb"    # Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;

    .prologue
    const/4 v1, 0x0

    .line 71
    iget-object v2, p0, Lcom/lge/nfcaddon/GsmaNfcController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lge/nfcaddon/GsmaNfcController;->isGSMACertificateAllowed(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 72
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1}, Ljava/lang/SecurityException;-><init>()V

    throw v1

    .line 75
    :cond_13
    :try_start_13
    sget-object v2, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/lge/nfcaddon/GsmaNfcController;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_21

    .line 76
    sget-object v2, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    invoke-interface {v2, p1}, Lcom/lge/nfcaddon/IGsmaNfcController;->enableNfcCardCallback(Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;)Z
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_20} :catch_22

    move-result v1

    .line 82
    :cond_21
    :goto_21
    return v1

    .line 80
    :catch_22
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/lge/nfcaddon/GsmaNfcController;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    goto :goto_21
.end method

.method public enableNfcController(Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;)Z
    .registers 5
    .param p1, "cb"    # Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;

    .prologue
    const/4 v1, 0x0

    .line 46
    :try_start_1
    sget-object v2, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/lge/nfcaddon/GsmaNfcController;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_f

    .line 47
    sget-object v2, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    invoke-interface {v2, p1}, Lcom/lge/nfcaddon/IGsmaNfcController;->enableNfcControllerCallback(Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_10

    move-result v1

    .line 53
    :cond_f
    :goto_f
    return v1

    .line 51
    :catch_10
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/lge/nfcaddon/GsmaNfcController;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    goto :goto_f
.end method

.method public enableNfcControllerConfirmPopup(Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;)Z
    .registers 5
    .param p1, "cb"    # Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;

    .prologue
    const/4 v1, 0x0

    .line 59
    :try_start_1
    sget-object v2, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/lge/nfcaddon/GsmaNfcController;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_f

    .line 60
    sget-object v2, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    invoke-interface {v2, p1}, Lcom/lge/nfcaddon/IGsmaNfcController;->enableNfcControllerPopupCallback(Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_10

    move-result v1

    .line 66
    :cond_f
    :goto_f
    return v1

    .line 64
    :catch_10
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/lge/nfcaddon/GsmaNfcController;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    goto :goto_f
.end method

.method public getActiveSecureElement()Ljava/lang/String;
    .registers 3

    .prologue
    .line 115
    :try_start_0
    sget-object v1, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    if-eqz v1, :cond_f

    .line 116
    sget-object v1, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    invoke-interface {v1}, Lcom/lge/nfcaddon/IGsmaNfcController;->getActiveSecureElement()Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v1

    .line 121
    :goto_a
    return-object v1

    .line 118
    :catch_b
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/lge/nfcaddon/GsmaNfcController;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    .line 121
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_f
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getGsmaOffHostService()Ljava/util/List;
    .registers 4

    .prologue
    .line 205
    const/4 v0, 0x0

    .line 207
    .local v0, "apduServiceInfos":Ljava/util/List;
    :try_start_1
    sget-object v2, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    if-eqz v2, :cond_11

    .line 208
    sget-object v2, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    invoke-interface {v2}, Lcom/lge/nfcaddon/IGsmaNfcController;->getGsmaOffHostService()Ljava/util/List;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_d

    move-result-object v0

    move-object v2, v0

    .line 214
    :goto_c
    return-object v2

    .line 211
    :catch_d
    move-exception v1

    .line 212
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/lge/nfcaddon/GsmaNfcController;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    .line 214
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_11
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public getProperty(I)Z
    .registers 4
    .param p1, "feature"    # I

    .prologue
    .line 195
    :try_start_0
    sget-object v1, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    if-eqz v1, :cond_f

    .line 196
    sget-object v1, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    invoke-interface {v1, p1}, Lcom/lge/nfcaddon/IGsmaNfcController;->getProperty(I)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 201
    :goto_a
    return v1

    .line 198
    :catch_b
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/lge/nfcaddon/GsmaNfcController;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    .line 201
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_f
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isAvailableToAddService(Landroid/nfc/cardemulation/ApduServiceInfo;)Z
    .registers 4
    .param p1, "serviceInfo"    # Landroid/nfc/cardemulation/ApduServiceInfo;

    .prologue
    .line 184
    :try_start_0
    sget-object v1, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    if-eqz v1, :cond_f

    .line 185
    sget-object v1, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    invoke-interface {v1, p1}, Lcom/lge/nfcaddon/IGsmaNfcController;->isAvailableToAddService(Landroid/nfc/cardemulation/ApduServiceInfo;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 190
    :goto_a
    return v1

    .line 187
    :catch_b
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/lge/nfcaddon/GsmaNfcController;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    .line 190
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_f
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isGSMACertificateAllowed(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 138
    :try_start_0
    sget-object v1, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    if-eqz v1, :cond_f

    .line 139
    sget-object v1, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    invoke-interface {v1, p1}, Lcom/lge/nfcaddon/IGsmaNfcController;->isGSMACertificateAllowed(Ljava/lang/String;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 144
    :goto_a
    return v1

    .line 141
    :catch_b
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/lge/nfcaddon/GsmaNfcController;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    .line 144
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_f
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isGSMACertificateAllowed([Ljava/lang/String;)[Z
    .registers 4
    .param p1, "packageNames"    # [Ljava/lang/String;

    .prologue
    .line 149
    :try_start_0
    sget-object v1, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    if-eqz v1, :cond_f

    .line 150
    sget-object v1, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    invoke-interface {v1, p1}, Lcom/lge/nfcaddon/IGsmaNfcController;->isGSMACertificateAllowedArray([Ljava/lang/String;)[Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v1

    .line 155
    :goto_a
    return-object v1

    .line 152
    :catch_b
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/lge/nfcaddon/GsmaNfcController;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    .line 155
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_f
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public releaseGsmaOffHostService(Landroid/nfc/cardemulation/ApduServiceInfo;)V
    .registers 4
    .param p1, "serviceInfo"    # Landroid/nfc/cardemulation/ApduServiceInfo;

    .prologue
    .line 172
    :try_start_0
    sget-object v1, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    if-eqz v1, :cond_9

    .line 173
    sget-object v1, Lcom/lge/nfcaddon/GsmaNfcController;->sService:Lcom/lge/nfcaddon/IGsmaNfcController;

    invoke-interface {v1, p1}, Lcom/lge/nfcaddon/IGsmaNfcController;->releaseGsmaOffHostService(Landroid/nfc/cardemulation/ApduServiceInfo;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 179
    :cond_9
    :goto_9
    return-void

    .line 176
    :catch_a
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/lge/nfcaddon/GsmaNfcController;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    goto :goto_9
.end method

.method public setEvt_TransactionFgDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;)V
    .registers 3
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "intentfilter"    # [Landroid/content/IntentFilter;

    .prologue
    .line 110
    return-void
.end method
