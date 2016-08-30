.class public Lcom/lge/systemservice/core/LEDManager;
.super Ljava/lang/Object;
.source "LEDManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/systemservice/core/LEDManager$ErrorNums;
    }
.end annotation


# static fields
.field public static final FEATURE_NAME:Ljava/lang/String; = "com.lge.software.led"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mService:Lcom/lge/systemservice/core/ILEDManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const-class v0, Lcom/lge/systemservice/core/LEDManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/systemservice/core/LEDManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/systemservice/core/LEDManager;->mService:Lcom/lge/systemservice/core/ILEDManager;

    .line 22
    return-void
.end method

.method static synthetic access$0(Lcom/lge/systemservice/core/LEDManager;Lcom/lge/systemservice/core/ILEDManager;)V
    .registers 2

    .prologue
    .line 18
    iput-object p1, p0, Lcom/lge/systemservice/core/LEDManager;->mService:Lcom/lge/systemservice/core/ILEDManager;

    return-void
.end method

.method private final getService()Lcom/lge/systemservice/core/ILEDManager;
    .registers 4

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lge/systemservice/core/LEDManager;->mService:Lcom/lge/systemservice/core/ILEDManager;

    if-nez v0, :cond_23

    .line 26
    const-string v0, "emotionled"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/systemservice/core/ILEDManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/ILEDManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemservice/core/LEDManager;->mService:Lcom/lge/systemservice/core/ILEDManager;

    .line 27
    iget-object v0, p0, Lcom/lge/systemservice/core/LEDManager;->mService:Lcom/lge/systemservice/core/ILEDManager;

    if-eqz v0, :cond_23

    .line 29
    :try_start_14
    iget-object v0, p0, Lcom/lge/systemservice/core/LEDManager;->mService:Lcom/lge/systemservice/core/ILEDManager;

    invoke-interface {v0}, Lcom/lge/systemservice/core/ILEDManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/lge/systemservice/core/LEDManager$1;

    invoke-direct {v1, p0}, Lcom/lge/systemservice/core/LEDManager$1;-><init>(Lcom/lge/systemservice/core/LEDManager;)V

    .line 33
    const/4 v2, 0x0

    .line 29
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_23} :catch_26

    .line 41
    :cond_23
    :goto_23
    iget-object v0, p0, Lcom/lge/systemservice/core/LEDManager;->mService:Lcom/lge/systemservice/core/ILEDManager;

    return-object v0

    .line 36
    :catch_26
    move-exception v0

    sget-object v0, Lcom/lge/systemservice/core/LEDManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getService() could not link to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/systemservice/core/LEDManager;->mService:Lcom/lge/systemservice/core/ILEDManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " binder death"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/systemservice/core/LEDManager;->mService:Lcom/lge/systemservice/core/ILEDManager;

    goto :goto_23
.end method


# virtual methods
.method public clearAllPatterns()I
    .registers 5

    .prologue
    .line 135
    const/4 v1, -0x1

    .line 136
    .local v1, "result":I
    invoke-direct {p0}, Lcom/lge/systemservice/core/LEDManager;->getService()Lcom/lge/systemservice/core/ILEDManager;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/systemservice/core/LEDManager;->mService:Lcom/lge/systemservice/core/ILEDManager;

    .line 138
    :try_start_7
    iget-object v2, p0, Lcom/lge/systemservice/core/LEDManager;->mService:Lcom/lge/systemservice/core/ILEDManager;

    if-eqz v2, :cond_12

    .line 139
    iget-object v2, p0, Lcom/lge/systemservice/core/LEDManager;->mService:Lcom/lge/systemservice/core/ILEDManager;

    invoke-interface {v2}, Lcom/lge/systemservice/core/ILEDManager;->clearAllLeds()I

    move-result v1

    .line 147
    :goto_11
    return v1

    .line 141
    :cond_12
    sget-object v2, Lcom/lge/systemservice/core/LEDManager;->TAG:Ljava/lang/String;

    const-string v3, "cannot get service!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_19} :catch_1a

    goto :goto_11

    .line 143
    :catch_1a
    move-exception v0

    .line 144
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, -0x1

    .line 145
    sget-object v2, Lcom/lge/systemservice/core/LEDManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method public getEmotionalLedType()I
    .registers 5

    .prologue
    .line 248
    const/4 v1, -0x1

    .line 249
    .local v1, "ledType":I
    invoke-direct {p0}, Lcom/lge/systemservice/core/LEDManager;->getService()Lcom/lge/systemservice/core/ILEDManager;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/systemservice/core/LEDManager;->mService:Lcom/lge/systemservice/core/ILEDManager;

    .line 251
    :try_start_7
    iget-object v2, p0, Lcom/lge/systemservice/core/LEDManager;->mService:Lcom/lge/systemservice/core/ILEDManager;

    if-eqz v2, :cond_12

    .line 252
    iget-object v2, p0, Lcom/lge/systemservice/core/LEDManager;->mService:Lcom/lge/systemservice/core/ILEDManager;

    invoke-interface {v2}, Lcom/lge/systemservice/core/ILEDManager;->getEmotionalLedType()I

    move-result v1

    .line 259
    :goto_11
    return v1

    .line 254
    :cond_12
    sget-object v2, Lcom/lge/systemservice/core/LEDManager;->TAG:Ljava/lang/String;

    const-string v3, "cannot get service!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_19} :catch_1a

    goto :goto_11

    .line 256
    :catch_1a
    move-exception v0

    .line 257
    .local v0, "ex":Landroid/os/RemoteException;
    sget-object v2, Lcom/lge/systemservice/core/LEDManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method public restartPatterns()I
    .registers 5

    .prologue
    .line 159
    const/4 v1, -0x1

    .line 160
    .local v1, "result":I
    invoke-direct {p0}, Lcom/lge/systemservice/core/LEDManager;->getService()Lcom/lge/systemservice/core/ILEDManager;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/systemservice/core/LEDManager;->mService:Lcom/lge/systemservice/core/ILEDManager;

    .line 162
    :try_start_7
    iget-object v2, p0, Lcom/lge/systemservice/core/LEDManager;->mService:Lcom/lge/systemservice/core/ILEDManager;

    if-eqz v2, :cond_12

    .line 163
    iget-object v2, p0, Lcom/lge/systemservice/core/LEDManager;->mService:Lcom/lge/systemservice/core/ILEDManager;

    invoke-interface {v2}, Lcom/lge/systemservice/core/ILEDManager;->restart()I

    move-result v1

    .line 171
    :goto_11
    return v1

    .line 165
    :cond_12
    sget-object v2, Lcom/lge/systemservice/core/LEDManager;->TAG:Ljava/lang/String;

    const-string v3, "cannot get service!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_19} :catch_1a

    goto :goto_11

    .line 167
    :catch_1a
    move-exception v0

    .line 168
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, -0x1

    .line 169
    sget-object v2, Lcom/lge/systemservice/core/LEDManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method public setBrightnessLed(II)I
    .registers 7
    .param p1, "brightness"    # I
    .param p2, "lednum"    # I

    .prologue
    .line 219
    const/4 v1, -0x1

    .line 220
    .local v1, "result":I
    invoke-direct {p0}, Lcom/lge/systemservice/core/LEDManager;->getService()Lcom/lge/systemservice/core/ILEDManager;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/systemservice/core/LEDManager;->mService:Lcom/lge/systemservice/core/ILEDManager;

    .line 222
    :try_start_7
    iget-object v2, p0, Lcom/lge/systemservice/core/LEDManager;->mService:Lcom/lge/systemservice/core/ILEDManager;

    if-eqz v2, :cond_12

    .line 223
    iget-object v2, p0, Lcom/lge/systemservice/core/LEDManager;->mService:Lcom/lge/systemservice/core/ILEDManager;

    invoke-interface {v2, p1}, Lcom/lge/systemservice/core/ILEDManager;->setBrightness(I)I

    move-result v1

    .line 231
    :goto_11
    return v1

    .line 225
    :cond_12
    sget-object v2, Lcom/lge/systemservice/core/LEDManager;->TAG:Ljava/lang/String;

    const-string v3, "cannot get service!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_19} :catch_1a

    goto :goto_11

    .line 227
    :catch_1a
    move-exception v0

    .line 228
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, -0x1

    .line 229
    sget-object v2, Lcom/lge/systemservice/core/LEDManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method public startPattern(Ljava/lang/String;ILcom/lge/systemservice/core/LGLedRecord;)I
    .registers 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "record"    # Lcom/lge/systemservice/core/LGLedRecord;

    .prologue
    .line 63
    const/4 v1, -0x1

    .line 64
    .local v1, "result":I
    invoke-direct {p0}, Lcom/lge/systemservice/core/LEDManager;->getService()Lcom/lge/systemservice/core/ILEDManager;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/systemservice/core/LEDManager;->mService:Lcom/lge/systemservice/core/ILEDManager;

    .line 66
    :try_start_7
    iget-object v2, p0, Lcom/lge/systemservice/core/LEDManager;->mService:Lcom/lge/systemservice/core/ILEDManager;

    if-eqz v2, :cond_12

    .line 67
    iget-object v2, p0, Lcom/lge/systemservice/core/LEDManager;->mService:Lcom/lge/systemservice/core/ILEDManager;

    invoke-interface {v2, p1, p2, p3}, Lcom/lge/systemservice/core/ILEDManager;->start(Ljava/lang/String;ILcom/lge/systemservice/core/LGLedRecord;)I

    move-result v1

    .line 75
    :goto_11
    return v1

    .line 69
    :cond_12
    sget-object v2, Lcom/lge/systemservice/core/LEDManager;->TAG:Ljava/lang/String;

    const-string v3, "cannot get service!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_19} :catch_1a

    goto :goto_11

    .line 71
    :catch_1a
    move-exception v0

    .line 72
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, -0x1

    .line 73
    sget-object v2, Lcom/lge/systemservice/core/LEDManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method public stopPattern(Ljava/lang/String;I)I
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 88
    const/4 v1, -0x1

    .line 89
    .local v1, "result":I
    invoke-direct {p0}, Lcom/lge/systemservice/core/LEDManager;->getService()Lcom/lge/systemservice/core/ILEDManager;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/systemservice/core/LEDManager;->mService:Lcom/lge/systemservice/core/ILEDManager;

    .line 91
    :try_start_7
    iget-object v2, p0, Lcom/lge/systemservice/core/LEDManager;->mService:Lcom/lge/systemservice/core/ILEDManager;

    if-eqz v2, :cond_12

    .line 92
    iget-object v2, p0, Lcom/lge/systemservice/core/LEDManager;->mService:Lcom/lge/systemservice/core/ILEDManager;

    invoke-interface {v2, p1, p2}, Lcom/lge/systemservice/core/ILEDManager;->stop(Ljava/lang/String;I)I

    move-result v1

    .line 100
    :goto_11
    return v1

    .line 94
    :cond_12
    sget-object v2, Lcom/lge/systemservice/core/LEDManager;->TAG:Ljava/lang/String;

    const-string v3, "cannot get service!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_19} :catch_1a

    goto :goto_11

    .line 96
    :catch_1a
    move-exception v0

    .line 97
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, -0x1

    .line 98
    sget-object v2, Lcom/lge/systemservice/core/LEDManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method public updatePattern(Ljava/lang/String;ILcom/lge/systemservice/core/LGLedRecord;)I
    .registers 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "record"    # Lcom/lge/systemservice/core/LGLedRecord;

    .prologue
    .line 113
    const/4 v1, -0x1

    .line 114
    .local v1, "result":I
    invoke-direct {p0}, Lcom/lge/systemservice/core/LEDManager;->getService()Lcom/lge/systemservice/core/ILEDManager;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/systemservice/core/LEDManager;->mService:Lcom/lge/systemservice/core/ILEDManager;

    .line 116
    :try_start_7
    iget-object v2, p0, Lcom/lge/systemservice/core/LEDManager;->mService:Lcom/lge/systemservice/core/ILEDManager;

    if-eqz v2, :cond_12

    .line 117
    iget-object v2, p0, Lcom/lge/systemservice/core/LEDManager;->mService:Lcom/lge/systemservice/core/ILEDManager;

    invoke-interface {v2, p1, p2, p3}, Lcom/lge/systemservice/core/ILEDManager;->update(Ljava/lang/String;ILcom/lge/systemservice/core/LGLedRecord;)I

    move-result v1

    .line 125
    :goto_11
    return v1

    .line 119
    :cond_12
    sget-object v2, Lcom/lge/systemservice/core/LEDManager;->TAG:Ljava/lang/String;

    const-string v3, "cannot get service!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_19} :catch_1a

    goto :goto_11

    .line 121
    :catch_1a
    move-exception v0

    .line 122
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, -0x1

    .line 123
    sget-object v2, Lcom/lge/systemservice/core/LEDManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method public updatePatternList(IIIIIILjava/lang/String;)I
    .registers 18
    .param p1, "action"    # I
    .param p2, "recordId"    # I
    .param p3, "exceptional"    # I
    .param p4, "ledARGB"    # I
    .param p5, "ledOnMS"    # I
    .param p6, "ledOffMS"    # I
    .param p7, "pkg"    # Ljava/lang/String;

    .prologue
    .line 194
    const/4 v9, -0x1

    .line 195
    .local v9, "result":I
    invoke-direct {p0}, Lcom/lge/systemservice/core/LEDManager;->getService()Lcom/lge/systemservice/core/ILEDManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemservice/core/LEDManager;->mService:Lcom/lge/systemservice/core/ILEDManager;

    .line 197
    :try_start_7
    iget-object v0, p0, Lcom/lge/systemservice/core/LEDManager;->mService:Lcom/lge/systemservice/core/ILEDManager;

    if-eqz v0, :cond_1b

    .line 198
    iget-object v0, p0, Lcom/lge/systemservice/core/LEDManager;->mService:Lcom/lge/systemservice/core/ILEDManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/lge/systemservice/core/ILEDManager;->updateLightList(IIIIIILjava/lang/String;)I

    move-result v9

    .line 206
    :goto_1a
    return v9

    .line 200
    :cond_1b
    sget-object v0, Lcom/lge/systemservice/core/LEDManager;->TAG:Ljava/lang/String;

    const-string v1, "cannot get service!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_22} :catch_23

    goto :goto_1a

    .line 202
    :catch_23
    move-exception v8

    .line 203
    .local v8, "ex":Landroid/os/RemoteException;
    const/4 v9, -0x1

    .line 204
    sget-object v0, Lcom/lge/systemservice/core/LEDManager;->TAG:Ljava/lang/String;

    invoke-virtual {v8}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method
