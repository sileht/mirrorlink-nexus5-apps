.class public Lcom/lge/nfcaddon/NfcUtility;
.super Ljava/lang/Object;
.source "NfcUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/nfcaddon/NfcUtility$NfcUtilityCallback;
    }
.end annotation


# static fields
.field private static final CHECK_LOOP_MAX_COUNT:I = 0x2

.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "NfcUtility"

.field private static nfcUtilManager:Lcom/lge/nfcaddon/NfcUtilityManager;

.field private static sService:Lcom/lge/nfcaddon/INfcUtility;

.field private static sSingleton:Lcom/lge/nfcaddon/NfcUtility;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/nfc/NfcAdapter;)Lcom/lge/nfcaddon/NfcUtility;
    .registers 5
    .param p0, "adapter"    # Landroid/nfc/NfcAdapter;

    .prologue
    .line 88
    const-string v1, "NfcUtility"

    const-string v2, "get()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 92
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_15

    .line 93
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "You must pass a context to your NfcAdapter to use the NFC Utility APIs"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    :cond_15
    const-class v2, Lcom/lge/nfcaddon/NfcUtility;

    monitor-enter v2

    .line 97
    :try_start_18
    invoke-static {p0}, Lcom/lge/nfcaddon/NfcUtility;->initServivce(Landroid/nfc/NfcAdapter;)V

    .line 98
    sget-object v1, Lcom/lge/nfcaddon/NfcUtility;->sSingleton:Lcom/lge/nfcaddon/NfcUtility;
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_41

    if-nez v1, :cond_34

    .line 100
    :try_start_1f
    new-instance v1, Lcom/lge/nfcaddon/NfcUtility;

    invoke-direct {v1}, Lcom/lge/nfcaddon/NfcUtility;-><init>()V

    sput-object v1, Lcom/lge/nfcaddon/NfcUtility;->sSingleton:Lcom/lge/nfcaddon/NfcUtility;

    .line 101
    new-instance v1, Lcom/lge/nfcaddon/NfcUtilityManager;

    invoke-direct {v1}, Lcom/lge/nfcaddon/NfcUtilityManager;-><init>()V

    sput-object v1, Lcom/lge/nfcaddon/NfcUtility;->nfcUtilManager:Lcom/lge/nfcaddon/NfcUtilityManager;
    :try_end_2d
    .catchall {:try_start_1f .. :try_end_2d} :catchall_38

    .line 103
    :try_start_2d
    sget-object v1, Lcom/lge/nfcaddon/NfcUtility;->sSingleton:Lcom/lge/nfcaddon/NfcUtility;

    if-nez v1, :cond_34

    .line 104
    const/4 v1, 0x0

    sput-object v1, Lcom/lge/nfcaddon/NfcUtility;->sService:Lcom/lge/nfcaddon/INfcUtility;

    .line 96
    :cond_34
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_2d .. :try_end_35} :catchall_41

    .line 109
    sget-object v1, Lcom/lge/nfcaddon/NfcUtility;->sSingleton:Lcom/lge/nfcaddon/NfcUtility;

    return-object v1

    .line 102
    :catchall_38
    move-exception v1

    .line 103
    :try_start_39
    sget-object v3, Lcom/lge/nfcaddon/NfcUtility;->sSingleton:Lcom/lge/nfcaddon/NfcUtility;

    if-nez v3, :cond_40

    .line 104
    const/4 v3, 0x0

    sput-object v3, Lcom/lge/nfcaddon/NfcUtility;->sService:Lcom/lge/nfcaddon/INfcUtility;

    .line 106
    :cond_40
    throw v1

    .line 96
    :catchall_41
    move-exception v1

    monitor-exit v2
    :try_end_43
    .catchall {:try_start_39 .. :try_end_43} :catchall_41

    throw v1
.end method

.method private static getNfcUtilityInterface()Lcom/lge/nfcaddon/INfcUtility;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 50
    const-string v2, "lge.nfc.vendor"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sony"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 59
    .local v0, "binder":Landroid/os/IBinder;
    :goto_f
    return-object v1

    .line 54
    .end local v0    # "binder":Landroid/os/IBinder;
    :cond_10
    const-string v2, "nfcvendor"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 55
    .restart local v0    # "binder":Landroid/os/IBinder;
    if-nez v0, :cond_20

    .line 56
    const-string v2, "NfcUtility"

    const-string v3, "nfcsony binder null!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 59
    :cond_20
    invoke-static {v0}, Lcom/lge/nfcaddon/INfcUtility$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/nfcaddon/INfcUtility;

    move-result-object v1

    goto :goto_f
.end method

.method private static initServivce(Landroid/nfc/NfcAdapter;)V
    .registers 5
    .param p0, "adapter"    # Landroid/nfc/NfcAdapter;

    .prologue
    .line 66
    const-string v2, "NfcUtility"

    const-string v3, "initServivce()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const/4 v0, 0x0

    .line 71
    .local v0, "loopCount":I
    :goto_8
    const/4 v2, 0x2

    if-lt v0, v2, :cond_c

    .line 84
    :goto_b
    return-void

    .line 73
    :cond_c
    invoke-static {}, Lcom/lge/nfcaddon/NfcUtility;->getNfcUtilityInterface()Lcom/lge/nfcaddon/INfcUtility;

    move-result-object v1

    .line 75
    .local v1, "service":Lcom/lge/nfcaddon/INfcUtility;
    if-eqz v1, :cond_1c

    .line 76
    const-string v2, "NfcUtility"

    const-string v3, "[initServivce] get INfcUtility service instance."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    sput-object v1, Lcom/lge/nfcaddon/NfcUtility;->sService:Lcom/lge/nfcaddon/INfcUtility;

    goto :goto_b

    .line 80
    :cond_1c
    const-string v2, "NfcUtility"

    const-string v3, "[initServivce] service is null..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method


# virtual methods
.method public getCashbeeState()I
    .registers 3

    .prologue
    .line 183
    :try_start_0
    sget-object v0, Lcom/lge/nfcaddon/NfcUtility;->sService:Lcom/lge/nfcaddon/INfcUtility;

    if-eqz v0, :cond_b

    .line 184
    sget-object v0, Lcom/lge/nfcaddon/NfcUtility;->sService:Lcom/lge/nfcaddon/INfcUtility;

    invoke-interface {v0}, Lcom/lge/nfcaddon/INfcUtility;->getCashbeeState()I

    move-result v0

    .line 191
    :goto_a
    return v0

    .line 186
    :cond_b
    const-string v0, "NfcUtility"

    const-string v1, "isNfcRecoveryMode sServie is null ..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    .line 191
    :goto_12
    const/4 v0, 0x0

    goto :goto_a

    .line 189
    :catch_14
    move-exception v0

    const-string v0, "NfcUtility"

    const-string v1, "isNfcRecoveryMode sServie is null ..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method public getPollingData()Z
    .registers 3

    .prologue
    .line 196
    :try_start_0
    sget-object v0, Lcom/lge/nfcaddon/NfcUtility;->sService:Lcom/lge/nfcaddon/INfcUtility;

    if-eqz v0, :cond_b

    .line 197
    sget-object v0, Lcom/lge/nfcaddon/NfcUtility;->sService:Lcom/lge/nfcaddon/INfcUtility;

    invoke-interface {v0}, Lcom/lge/nfcaddon/INfcUtility;->getPollingData()Z

    move-result v0

    .line 204
    :goto_a
    return v0

    .line 199
    :cond_b
    const-string v0, "NfcUtility"

    const-string v1, "getPollingData sServie is null ..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    .line 204
    :goto_12
    const/4 v0, 0x0

    goto :goto_a

    .line 202
    :catch_14
    move-exception v0

    const-string v0, "NfcUtility"

    const-string v1, "getPollingData sServie is null ..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method public isNfcLock()Z
    .registers 3

    .prologue
    .line 144
    :try_start_0
    sget-object v0, Lcom/lge/nfcaddon/NfcUtility;->sService:Lcom/lge/nfcaddon/INfcUtility;

    if-eqz v0, :cond_b

    .line 145
    sget-object v0, Lcom/lge/nfcaddon/NfcUtility;->sService:Lcom/lge/nfcaddon/INfcUtility;

    invoke-interface {v0}, Lcom/lge/nfcaddon/INfcUtility;->isNfcLock()Z

    move-result v0

    .line 152
    :goto_a
    return v0

    .line 147
    :cond_b
    const-string v0, "NfcUtility"

    const-string v1, "isNfcLock sServie is null ..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    .line 152
    :goto_12
    const/4 v0, 0x0

    goto :goto_a

    .line 150
    :catch_14
    move-exception v0

    const-string v0, "NfcUtility"

    const-string v1, "isNfcLock sServie is null ..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method public isNfcRecoveryMode()Z
    .registers 3

    .prologue
    .line 157
    :try_start_0
    sget-object v0, Lcom/lge/nfcaddon/NfcUtility;->sService:Lcom/lge/nfcaddon/INfcUtility;

    if-eqz v0, :cond_b

    .line 158
    sget-object v0, Lcom/lge/nfcaddon/NfcUtility;->sService:Lcom/lge/nfcaddon/INfcUtility;

    invoke-interface {v0}, Lcom/lge/nfcaddon/INfcUtility;->isNfcRecoveryMode()Z

    move-result v0

    .line 165
    :goto_a
    return v0

    .line 160
    :cond_b
    const-string v0, "NfcUtility"

    const-string v1, "isNfcRecoveryMode sServie is null ..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    .line 165
    :goto_12
    const/4 v0, 0x0

    goto :goto_a

    .line 163
    :catch_14
    move-exception v0

    const-string v0, "NfcUtility"

    const-string v1, "isNfcRecoveryMode sServie is null ..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method public setCashbeeMode(I)Z
    .registers 4
    .param p1, "cashbeeState"    # I

    .prologue
    .line 170
    :try_start_0
    sget-object v0, Lcom/lge/nfcaddon/NfcUtility;->sService:Lcom/lge/nfcaddon/INfcUtility;

    if-eqz v0, :cond_b

    .line 171
    sget-object v0, Lcom/lge/nfcaddon/NfcUtility;->sService:Lcom/lge/nfcaddon/INfcUtility;

    invoke-interface {v0, p1}, Lcom/lge/nfcaddon/INfcUtility;->setCashbeeMode(I)Z

    move-result v0

    .line 178
    :goto_a
    return v0

    .line 173
    :cond_b
    const-string v0, "NfcUtility"

    const-string v1, "enableCashbee sServie is null ..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    .line 178
    :goto_12
    const/4 v0, 0x0

    goto :goto_a

    .line 176
    :catch_14
    move-exception v0

    const-string v0, "NfcUtility"

    const-string v1, "enableCashbee sServie is null ..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method public waitSimBoot(Lcom/lge/nfcaddon/NfcUtility$NfcUtilityCallback;Z)Z
    .registers 6
    .param p1, "callback"    # Lcom/lge/nfcaddon/NfcUtility$NfcUtilityCallback;
    .param p2, "isLock"    # Z

    .prologue
    .line 114
    const-string v1, "NfcUtility"

    const-string v2, "waitSimBoot(NfcUtilityCallback)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/4 v0, 0x0

    .line 118
    .local v0, "result":Z
    sget-object v1, Lcom/lge/nfcaddon/NfcUtility;->sService:Lcom/lge/nfcaddon/INfcUtility;

    if-nez v1, :cond_15

    .line 119
    const-string v1, "NfcUtility"

    const-string v2, "waitSimBoot sServie is null ..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 138
    :goto_14
    return v1

    .line 125
    :cond_15
    :try_start_15
    const-string v1, "NfcUtility"

    const-string v2, "sService.waitSimBoot() start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    sget-object v1, Lcom/lge/nfcaddon/NfcUtility;->nfcUtilManager:Lcom/lge/nfcaddon/NfcUtilityManager;

    invoke-virtual {v1, p1}, Lcom/lge/nfcaddon/NfcUtilityManager;->setNfcUtilityCallback(Lcom/lge/nfcaddon/NfcUtility$NfcUtilityCallback;)V

    .line 129
    sget-object v1, Lcom/lge/nfcaddon/NfcUtility;->sService:Lcom/lge/nfcaddon/INfcUtility;

    sget-object v2, Lcom/lge/nfcaddon/NfcUtility;->nfcUtilManager:Lcom/lge/nfcaddon/NfcUtilityManager;

    invoke-interface {v1, v2, p2}, Lcom/lge/nfcaddon/INfcUtility;->waitSimBootCallback(Lcom/lge/nfcaddon/INfcUtilityCallback;Z)Z

    move-result v0

    .line 132
    const-string v1, "NfcUtility"

    const-string v2, "sService.waitSimBoot() end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_30} :catch_32

    move v1, v0

    .line 135
    goto :goto_14

    .line 137
    :catch_32
    move-exception v1

    const-string v1, "NfcUtility"

    const-string v2, "waitSimBoot sServie is null ..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/4 v1, 0x0

    goto :goto_14
.end method
