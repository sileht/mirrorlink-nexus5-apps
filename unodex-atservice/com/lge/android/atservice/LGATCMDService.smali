.class public Lcom/lge/android/atservice/LGATCMDService;
.super Landroid/app/Service;
.source "LGATCMDService.java"

# interfaces
.implements Lcom/lge/android/atservice/INativeDaemonConnectorCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/android/atservice/LGATCMDService$TheLock;,
        Lcom/lge/android/atservice/LGATCMDService$AtdResponseCode;,
        Lcom/lge/android/atservice/LGATCMDService$1;,
        Lcom/lge/android/atservice/LGATCMDService$2;
    }
.end annotation


# static fields
.field private static final HANDLE_ANDROID:I = 0x1

.field private static final HANDLE_DAEMON:I = 0x0

.field private static final HANDLE_MODEM:I = 0x2

.field public static final LGATCMD_SERVICE_INTERRUPT:Ljava/lang/String; = "LGATCMD Service Interrupt"

.field public static final LGATCMD_SERVICE_RESTART:Ljava/lang/String; = "LGATCMD Service Restart"

.field public static final LGATCMD_SERVICE_START:Ljava/lang/String; = "LGATCMD Service Start"

.field public static final LGATCMD_SERVICE_STOP:Ljava/lang/String; = "LGATCMD Service Stop"

.field private static final REQUEST_TIMEOUT:J = 0xaL

.field public static mLock:Lcom/lge/android/atservice/LGATCMDService$TheLock;


# instance fields
.field private final LGATCMDServiceStub:Lcom/lge/android/atservice/client/ILGATCMDService$Stub;

.field private mCM:Lcom/lge/android/atservice/NativeConnectionManager;

.field private mConnector:Lcom/lge/android/atservice/NativeDaemonConnector;

.field private mDeviceManager:Lcom/lge/android/atservice/DeviceManager;

.field private mExternalRequest:Lcom/lge/android/atservice/LGATCMDServiceRequest;

.field private mLGCmdHandler:Lcom/lge/android/atservice/LGCmdHandler;

.field protected mPhone:Landroid/telephony/TelephonyManager;

.field public mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRequestBuilder:Ljava/lang/StringBuilder;

.field private mRequestString:Ljava/lang/StringBuilder;

.field private mResponseBuilder:Ljava/lang/StringBuilder;

.field private mResultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mResultQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mServiceState:Landroid/telephony/ServiceState;

.field public mSignalStrength:Landroid/telephony/SignalStrength;

.field shared_pref:Landroid/content/SharedPreferences;


# direct methods
.method static synthetic -get0(Lcom/lge/android/atservice/LGATCMDService;)Lcom/lge/android/atservice/NativeConnectionManager;
    .registers 2

    iget-object v0, p0, Lcom/lge/android/atservice/LGATCMDService;->mCM:Lcom/lge/android/atservice/NativeConnectionManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/lge/android/atservice/LGATCMDService;)Lcom/lge/android/atservice/NativeDaemonConnector;
    .registers 2

    iget-object v0, p0, Lcom/lge/android/atservice/LGATCMDService;->mConnector:Lcom/lge/android/atservice/NativeDaemonConnector;

    return-object v0
.end method

.method static synthetic -get2(Lcom/lge/android/atservice/LGATCMDService;)Lcom/lge/android/atservice/LGATCMDServiceRequest;
    .registers 2

    iget-object v0, p0, Lcom/lge/android/atservice/LGATCMDService;->mExternalRequest:Lcom/lge/android/atservice/LGATCMDServiceRequest;

    return-object v0
.end method

.method static synthetic -get3(Lcom/lge/android/atservice/LGATCMDService;)Ljava/lang/StringBuilder;
    .registers 2

    iget-object v0, p0, Lcom/lge/android/atservice/LGATCMDService;->mRequestString:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic -get4(Lcom/lge/android/atservice/LGATCMDService;)Ljava/lang/StringBuilder;
    .registers 2

    iget-object v0, p0, Lcom/lge/android/atservice/LGATCMDService;->mResponseBuilder:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic -get5(Lcom/lge/android/atservice/LGATCMDService;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/lge/android/atservice/LGATCMDService;->mResultList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get6(Lcom/lge/android/atservice/LGATCMDService;)Ljava/util/concurrent/BlockingQueue;
    .registers 2

    iget-object v0, p0, Lcom/lge/android/atservice/LGATCMDService;->mResultQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic -set0(Lcom/lge/android/atservice/LGATCMDService;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2

    iput-object p1, p0, Lcom/lge/android/atservice/LGATCMDService;->mResultList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/lge/android/atservice/LGATCMDService;)V
    .registers 1

    invoke-direct {p0}, Lcom/lge/android/atservice/LGATCMDService;->seticdRSSI()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    new-instance v0, Lcom/lge/android/atservice/LGATCMDService$TheLock;

    invoke-direct {v0}, Lcom/lge/android/atservice/LGATCMDService$TheLock;-><init>()V

    sput-object v0, Lcom/lge/android/atservice/LGATCMDService;->mLock:Lcom/lge/android/atservice/LGATCMDService$TheLock;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 50
    new-instance v0, Lcom/lge/android/atservice/LGATCMDService$1;

    invoke-direct {v0, p0}, Lcom/lge/android/atservice/LGATCMDService$1;-><init>(Lcom/lge/android/atservice/LGATCMDService;)V

    .line 49
    iput-object v0, p0, Lcom/lge/android/atservice/LGATCMDService;->LGATCMDServiceStub:Lcom/lge/android/atservice/client/ILGATCMDService$Stub;

    .line 371
    new-instance v0, Lcom/lge/android/atservice/LGATCMDService$2;

    invoke-direct {v0, p0}, Lcom/lge/android/atservice/LGATCMDService$2;-><init>(Lcom/lge/android/atservice/LGATCMDService;)V

    iput-object v0, p0, Lcom/lge/android/atservice/LGATCMDService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 32
    return-void
.end method

.method private doCommand(Landroid/content/Intent;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 489
    if-nez p1, :cond_6

    .line 490
    invoke-direct {p0}, Lcom/lge/android/atservice/LGATCMDService;->restartLGService()V

    .line 488
    :cond_5
    :goto_5
    return-void

    .line 492
    :cond_6
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 494
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "LGATCMD Service Start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 495
    invoke-direct {p0}, Lcom/lge/android/atservice/LGATCMDService;->startLGService()V

    goto :goto_5

    .line 496
    :cond_17
    const-string/jumbo v1, "LGATCMD Service Stop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 497
    invoke-direct {p0}, Lcom/lge/android/atservice/LGATCMDService;->stopLGService()V

    goto :goto_5

    .line 498
    :cond_24
    const-string/jumbo v1, "LGATCMD Service Restart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 499
    invoke-direct {p0}, Lcom/lge/android/atservice/LGATCMDService;->restartLGService()V

    goto :goto_5

    .line 500
    :cond_31
    const-string/jumbo v1, "LGATCMD Service Interrupt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 501
    invoke-direct {p0}, Lcom/lge/android/atservice/LGATCMDService;->interruptLGService()V

    goto :goto_5
.end method

.method private interruptLGService()V
    .registers 2

    .prologue
    .line 471
    const-string/jumbo v0, "LGATCMD Service Interrupt!"

    invoke-static {v0}, Lcom/lge/android/atservice/Debug;->LogI(Ljava/lang/String;)V

    .line 470
    return-void
.end method

.method private issueAtCommand()V
    .registers 2

    .prologue
    .line 165
    new-instance v0, Lcom/lge/android/atservice/LGATCMDService$5;

    invoke-direct {v0, p0}, Lcom/lge/android/atservice/LGATCMDService$5;-><init>(Lcom/lge/android/atservice/LGATCMDService;)V

    invoke-virtual {v0}, Lcom/lge/android/atservice/LGATCMDService$5;->start()V

    .line 164
    return-void
.end method

.method private printRawData(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 8
    .param p1, "raw"    # Ljava/lang/String;
    .param p2, "cooked"    # [Ljava/lang/String;

    .prologue
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "onEvent::"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    const-string/jumbo v2, " raw= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    if-eqz p2, :cond_30

    .line 143
    const-string/jumbo v2, " cooked = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    const/4 v2, 0x0

    array-length v3, p2

    :goto_1f
    if-ge v2, v3, :cond_30

    aget-object v1, p2, v2

    .line 145
    .local v1, "str":Ljava/lang/String;
    const-string/jumbo v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 148
    .end local v1    # "str":Ljava/lang/String;
    :cond_30
    const-string/jumbo v2, "LGATCMDService"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void
.end method

.method private processLgCommand(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 174
    new-instance v1, Lcom/lge/android/atservice/LGCmdRequest;

    invoke-direct {v1}, Lcom/lge/android/atservice/LGCmdRequest;-><init>()V

    .line 175
    .local v1, "request":Lcom/lge/android/atservice/LGCmdRequest;
    new-instance v2, Lcom/lge/android/atservice/LGCmdResponse;

    invoke-direct {v2}, Lcom/lge/android/atservice/LGCmdResponse;-><init>()V

    .line 176
    .local v2, "response":Lcom/lge/android/atservice/LGCmdResponse;
    invoke-static {p1}, Lcom/lge/android/atservice/LGATCMDNative;->base64_decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 177
    .local v0, "buffer":[B
    invoke-virtual {v1, v0}, Lcom/lge/android/atservice/LGCmdRequest;->WriteData([B)V

    .line 179
    iget-object v3, p0, Lcom/lge/android/atservice/LGATCMDService;->mLGCmdHandler:Lcom/lge/android/atservice/LGCmdHandler;

    invoke-virtual {v3, v1, v2}, Lcom/lge/android/atservice/LGCmdHandler;->request(Lcom/lge/android/atservice/LGCmdRequest;Lcom/lge/android/atservice/LGCmdResponse;)I

    .line 180
    invoke-virtual {v2}, Lcom/lge/android/atservice/LGCmdResponse;->ReadData()[B

    move-result-object v3

    invoke-static {v3}, Lcom/lge/android/atservice/LGATCMDNative;->base64_encode([B)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private restartLGService()V
    .registers 2

    .prologue
    .line 483
    const-string/jumbo v0, "LGATCMD Service Restart!"

    invoke-static {v0}, Lcom/lge/android/atservice/Debug;->LogI(Ljava/lang/String;)V

    .line 484
    invoke-direct {p0}, Lcom/lge/android/atservice/LGATCMDService;->stopLGService()V

    .line 485
    invoke-direct {p0}, Lcom/lge/android/atservice/LGATCMDService;->startLGService()V

    .line 482
    return-void
.end method

.method private sendResponse(Ljava/lang/String;)V
    .registers 4
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/lge/android/atservice/LGATCMDService;->mResponseBuilder:Ljava/lang/StringBuilder;

    .line 153
    iget-object v0, p0, Lcom/lge/android/atservice/LGATCMDService;->mResponseBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "atresponse "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    iget-object v0, p0, Lcom/lge/android/atservice/LGATCMDService;->mResponseBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    new-instance v0, Lcom/lge/android/atservice/LGATCMDService$4;

    invoke-direct {v0, p0}, Lcom/lge/android/atservice/LGATCMDService$4;-><init>(Lcom/lge/android/atservice/LGATCMDService;)V

    invoke-virtual {v0}, Lcom/lge/android/atservice/LGATCMDService$4;->start()V

    .line 151
    return-void
.end method

.method private seticdRSSI()V
    .registers 8

    .prologue
    .line 349
    const/4 v2, 0x0

    .line 350
    .local v2, "icd_rssi":I
    const/4 v0, 0x0

    .line 351
    .local v0, "icd_ecio":I
    const/4 v1, 0x0

    .line 352
    .local v1, "icd_iconLevel":I
    const/4 v3, 0x0

    .line 354
    .local v3, "isNoSvc":I
    iget-object v5, p0, Lcom/lge/android/atservice/LGATCMDService;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-nez v5, :cond_74

    .line 355
    const/4 v2, 0x0

    .line 356
    const/4 v0, 0x0

    .line 357
    const/4 v1, 0x0

    .line 358
    const/4 v3, 0x1

    .line 365
    :goto_c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "broadcastRssiInfo() - Start RSSI : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ECIO : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/android/atservice/Debug;->LogI(Ljava/lang/String;)V

    .line 366
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 367
    .local v4, "mRssiResult":Ljava/lang/String;
    iget-object v5, p0, Lcom/lge/android/atservice/LGATCMDService;->shared_pref:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string/jumbo v6, "SLATETEST_GET_RSSI_DATA"

    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 348
    return-void

    .line 360
    .end local v4    # "mRssiResult":Ljava/lang/String;
    :cond_74
    iget-object v5, p0, Lcom/lge/android/atservice/LGATCMDService;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v1

    .line 361
    iget-object v5, p0, Lcom/lge/android/atservice/LGATCMDService;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v2

    .line 362
    iget-object v5, p0, Lcom/lge/android/atservice/LGATCMDService;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v0

    goto :goto_c
.end method

.method private startLGService()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 411
    const-string/jumbo v0, "LGATCMD Service Start!"

    invoke-static {v0}, Lcom/lge/android/atservice/Debug;->LogI(Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcom/lge/android/atservice/LGATCMDService;->mCM:Lcom/lge/android/atservice/NativeConnectionManager;

    if-nez v0, :cond_1a

    .line 415
    new-instance v0, Lcom/lge/android/atservice/NativeConnectionManager;

    const-string/jumbo v1, "atd"

    const-string/jumbo v2, "AtdConnector"

    const/16 v3, 0xa

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/lge/android/atservice/NativeConnectionManager;-><init>(Lcom/lge/android/atservice/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/lge/android/atservice/LGATCMDService;->mCM:Lcom/lge/android/atservice/NativeConnectionManager;

    .line 418
    :cond_1a
    iget-object v0, p0, Lcom/lge/android/atservice/LGATCMDService;->mCM:Lcom/lge/android/atservice/NativeConnectionManager;

    invoke-virtual {v0}, Lcom/lge/android/atservice/NativeConnectionManager;->isStarted()Z

    move-result v0

    if-nez v0, :cond_27

    .line 419
    iget-object v0, p0, Lcom/lge/android/atservice/LGATCMDService;->mCM:Lcom/lge/android/atservice/NativeConnectionManager;

    invoke-virtual {v0}, Lcom/lge/android/atservice/NativeConnectionManager;->Start()V

    .line 430
    :cond_27
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v4}, Lcom/lge/android/atservice/LGATCMDService;->startForeground(ILandroid/app/Notification;)V

    .line 431
    iget-object v0, p0, Lcom/lge/android/atservice/LGATCMDService;->mExternalRequest:Lcom/lge/android/atservice/LGATCMDServiceRequest;

    if-nez v0, :cond_36

    .line 432
    new-instance v0, Lcom/lge/android/atservice/LGATCMDServiceRequest;

    invoke-direct {v0, p0}, Lcom/lge/android/atservice/LGATCMDServiceRequest;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/android/atservice/LGATCMDService;->mExternalRequest:Lcom/lge/android/atservice/LGATCMDServiceRequest;

    .line 410
    :cond_36
    return-void
.end method

.method private stopLGService()V
    .registers 3

    .prologue
    .line 438
    sget-object v1, Lcom/lge/android/atservice/LGATCMDService;->mLock:Lcom/lge/android/atservice/LGATCMDService$TheLock;

    monitor-enter v1

    .line 439
    :try_start_3
    const-string/jumbo v0, "LGATCMD Service Stop!"

    invoke-static {v0}, Lcom/lge/android/atservice/Debug;->LogI(Ljava/lang/String;)V

    .line 442
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/android/atservice/LGATCMDService;->stopForeground(Z)V

    .line 445
    iget-object v0, p0, Lcom/lge/android/atservice/LGATCMDService;->mCM:Lcom/lge/android/atservice/NativeConnectionManager;

    if-eqz v0, :cond_21

    .line 446
    iget-object v0, p0, Lcom/lge/android/atservice/LGATCMDService;->mCM:Lcom/lge/android/atservice/NativeConnectionManager;

    invoke-virtual {v0}, Lcom/lge/android/atservice/NativeConnectionManager;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 447
    iget-object v0, p0, Lcom/lge/android/atservice/LGATCMDService;->mCM:Lcom/lge/android/atservice/NativeConnectionManager;

    invoke-virtual {v0}, Lcom/lge/android/atservice/NativeConnectionManager;->Stop()V

    .line 449
    :cond_1e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/android/atservice/LGATCMDService;->mCM:Lcom/lge/android/atservice/NativeConnectionManager;

    .line 461
    :cond_21
    iget-object v0, p0, Lcom/lge/android/atservice/LGATCMDService;->mExternalRequest:Lcom/lge/android/atservice/LGATCMDServiceRequest;

    if-eqz v0, :cond_28

    .line 462
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/android/atservice/LGATCMDService;->mExternalRequest:Lcom/lge/android/atservice/LGATCMDServiceRequest;

    .line 465
    :cond_28
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_2d

    monitor-exit v1

    .line 436
    return-void

    .line 438
    :catchall_2d
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public SendRequestToDaemon(Lcom/lge/android/atservice/LGCmdRequest;)Lcom/lge/android/atservice/LGCmdResponse;
    .registers 16
    .param p1, "request"    # Lcom/lge/android/atservice/LGCmdRequest;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x1

    .line 216
    invoke-virtual {p0, p1}, Lcom/lge/android/atservice/LGATCMDService;->checkOpcodeType(Lcom/lge/android/atservice/LGCmdRequest;)I

    move-result v7

    if-ne v7, v9, :cond_14

    .line 217
    const-string/jumbo v7, "opcode type = HANDLE_ANDROID"

    invoke-static {v7}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0, p1}, Lcom/lge/android/atservice/LGATCMDService;->SendRequestToLGCmdHandler(Lcom/lge/android/atservice/LGCmdRequest;)Lcom/lge/android/atservice/LGCmdResponse;

    move-result-object v7

    return-object v7

    .line 221
    :cond_14
    const/4 v4, 0x0

    .line 223
    .local v4, "response":Lcom/lge/android/atservice/LGCmdResponse;
    iget-object v7, p0, Lcom/lge/android/atservice/LGATCMDService;->mCM:Lcom/lge/android/atservice/NativeConnectionManager;

    invoke-virtual {v7}, Lcom/lge/android/atservice/NativeConnectionManager;->clearExternalResponseQueue()V

    .line 228
    invoke-virtual {p1}, Lcom/lge/android/atservice/LGCmdRequest;->ReadData()[B

    move-result-object v0

    .line 229
    .local v0, "buffer":[B
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v7, p0, Lcom/lge/android/atservice/LGATCMDService;->mRequestString:Ljava/lang/StringBuilder;

    .line 230
    iget-object v7, p0, Lcom/lge/android/atservice/LGATCMDService;->mRequestString:Ljava/lang/StringBuilder;

    const-string/jumbo v8, "atsrequest "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    iget-object v7, p0, Lcom/lge/android/atservice/LGATCMDService;->mRequestString:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/lge/android/atservice/LGATCMDNative;->base64_encode([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7, v9}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v7, p0, Lcom/lge/android/atservice/LGATCMDService;->mResultQueue:Ljava/util/concurrent/BlockingQueue;

    .line 234
    new-instance v3, Lcom/lge/android/atservice/LGATCMDService$6;

    invoke-direct {v3, p0}, Lcom/lge/android/atservice/LGATCMDService$6;-><init>(Lcom/lge/android/atservice/LGATCMDService;)V

    .line 251
    .local v3, "mRequestThread":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 254
    :try_start_45
    const-string/jumbo v7, "Waiting result..."

    invoke-static {v7}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 255
    iget-object v7, p0, Lcom/lge/android/atservice/LGATCMDService;->mResultQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v10, 0xa

    invoke-interface {v7, v10, v11, v8}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 256
    .local v6, "temp":Ljava/lang/String;
    if-eqz v6, :cond_94

    .line 257
    const-string/jumbo v7, "Got result..."

    invoke-static {v7}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V
    :try_end_5f
    .catch Ljava/lang/InterruptedException; {:try_start_45 .. :try_end_5f} :catch_a3
    .catchall {:try_start_45 .. :try_end_5f} :catchall_ee

    .line 266
    const-string/jumbo v7, "Process result..."

    invoke-static {v7}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 267
    iget-object v7, p0, Lcom/lge/android/atservice/LGATCMDService;->mResultList:Ljava/util/ArrayList;

    if-eqz v7, :cond_93

    .line 268
    iget-object v7, p0, Lcom/lge/android/atservice/LGATCMDService;->mResultList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_93

    .line 269
    iget-object v7, p0, Lcom/lge/android/atservice/LGATCMDService;->mResultList:Ljava/util/ArrayList;

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 270
    .local v5, "result":Ljava/lang/String;
    const-string/jumbo v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, "data":[Ljava/lang/String;
    array-length v7, v1

    if-le v7, v9, :cond_91

    .line 272
    aget-object v7, v1, v9

    invoke-static {v7}, Lcom/lge/android/atservice/LGATCMDNative;->base64_decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 273
    new-instance v4, Lcom/lge/android/atservice/LGCmdResponse;

    .end local v4    # "response":Lcom/lge/android/atservice/LGCmdResponse;
    invoke-direct {v4}, Lcom/lge/android/atservice/LGCmdResponse;-><init>()V

    .line 274
    .local v4, "response":Lcom/lge/android/atservice/LGCmdResponse;
    invoke-virtual {v4, v0}, Lcom/lge/android/atservice/LGCmdResponse;->WriteData([B)V

    .line 276
    .end local v4    # "response":Lcom/lge/android/atservice/LGCmdResponse;
    .end local v6    # "temp":Ljava/lang/String;
    :cond_91
    :goto_91
    iput-object v12, p0, Lcom/lge/android/atservice/LGATCMDService;->mResultList:Ljava/util/ArrayList;

    .line 285
    .end local v1    # "data":[Ljava/lang/String;
    .end local v5    # "result":Ljava/lang/String;
    :cond_93
    return-object v4

    .line 259
    .local v4, "response":Lcom/lge/android/atservice/LGCmdResponse;
    .restart local v6    # "temp":Ljava/lang/String;
    :cond_94
    :try_start_94
    const-string/jumbo v7, "TimeOut for got result..!"

    invoke-static {v7}, Lcom/lge/android/atservice/Debug;->LogE(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 261
    new-instance v7, Ljava/lang/InterruptedException;

    invoke-direct {v7}, Ljava/lang/InterruptedException;-><init>()V

    throw v7
    :try_end_a3
    .catch Ljava/lang/InterruptedException; {:try_start_94 .. :try_end_a3} :catch_a3
    .catchall {:try_start_94 .. :try_end_a3} :catchall_ee

    .line 263
    .end local v6    # "temp":Ljava/lang/String;
    :catch_a3
    move-exception v2

    .line 264
    .local v2, "ex":Ljava/lang/InterruptedException;
    :try_start_a4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to take response: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/lge/android/atservice/Debug;->LogE(Ljava/lang/String;)V
    :try_end_bb
    .catchall {:try_start_a4 .. :try_end_bb} :catchall_ee

    .line 266
    const-string/jumbo v7, "Process result..."

    invoke-static {v7}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 267
    iget-object v7, p0, Lcom/lge/android/atservice/LGATCMDService;->mResultList:Ljava/util/ArrayList;

    if-eqz v7, :cond_93

    .line 268
    iget-object v7, p0, Lcom/lge/android/atservice/LGATCMDService;->mResultList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_93

    .line 269
    iget-object v7, p0, Lcom/lge/android/atservice/LGATCMDService;->mResultList:Ljava/util/ArrayList;

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 270
    .restart local v5    # "result":Ljava/lang/String;
    const-string/jumbo v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 271
    .restart local v1    # "data":[Ljava/lang/String;
    array-length v7, v1

    if-le v7, v9, :cond_91

    .line 272
    aget-object v7, v1, v9

    invoke-static {v7}, Lcom/lge/android/atservice/LGATCMDNative;->base64_decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 273
    new-instance v4, Lcom/lge/android/atservice/LGCmdResponse;

    .end local v4    # "response":Lcom/lge/android/atservice/LGCmdResponse;
    invoke-direct {v4}, Lcom/lge/android/atservice/LGCmdResponse;-><init>()V

    .line 274
    .local v4, "response":Lcom/lge/android/atservice/LGCmdResponse;
    invoke-virtual {v4, v0}, Lcom/lge/android/atservice/LGCmdResponse;->WriteData([B)V

    goto :goto_91

    .line 265
    .end local v1    # "data":[Ljava/lang/String;
    .end local v2    # "ex":Ljava/lang/InterruptedException;
    .end local v5    # "result":Ljava/lang/String;
    .local v4, "response":Lcom/lge/android/atservice/LGCmdResponse;
    :catchall_ee
    move-exception v7

    .line 266
    const-string/jumbo v8, "Process result..."

    invoke-static {v8}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 267
    iget-object v8, p0, Lcom/lge/android/atservice/LGATCMDService;->mResultList:Ljava/util/ArrayList;

    if-eqz v8, :cond_123

    .line 268
    iget-object v8, p0, Lcom/lge/android/atservice/LGATCMDService;->mResultList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_123

    .line 269
    iget-object v8, p0, Lcom/lge/android/atservice/LGATCMDService;->mResultList:Ljava/util/ArrayList;

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 270
    .restart local v5    # "result":Ljava/lang/String;
    const-string/jumbo v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 271
    .restart local v1    # "data":[Ljava/lang/String;
    array-length v8, v1

    if-le v8, v9, :cond_121

    .line 272
    aget-object v8, v1, v9

    invoke-static {v8}, Lcom/lge/android/atservice/LGATCMDNative;->base64_decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 273
    new-instance v4, Lcom/lge/android/atservice/LGCmdResponse;

    .end local v4    # "response":Lcom/lge/android/atservice/LGCmdResponse;
    invoke-direct {v4}, Lcom/lge/android/atservice/LGCmdResponse;-><init>()V

    .line 274
    .local v4, "response":Lcom/lge/android/atservice/LGCmdResponse;
    invoke-virtual {v4, v0}, Lcom/lge/android/atservice/LGCmdResponse;->WriteData([B)V

    .line 276
    .end local v4    # "response":Lcom/lge/android/atservice/LGCmdResponse;
    :cond_121
    iput-object v12, p0, Lcom/lge/android/atservice/LGATCMDService;->mResultList:Ljava/util/ArrayList;

    .line 265
    .end local v1    # "data":[Ljava/lang/String;
    .end local v5    # "result":Ljava/lang/String;
    :cond_123
    throw v7
.end method

.method public SendRequestToLGCmdHandler(Lcom/lge/android/atservice/LGCmdRequest;)Lcom/lge/android/atservice/LGCmdResponse;
    .registers 4
    .param p1, "request"    # Lcom/lge/android/atservice/LGCmdRequest;

    .prologue
    .line 208
    new-instance v0, Lcom/lge/android/atservice/LGCmdResponse;

    invoke-direct {v0}, Lcom/lge/android/atservice/LGCmdResponse;-><init>()V

    .line 209
    .local v0, "response":Lcom/lge/android/atservice/LGCmdResponse;
    iget-object v1, p0, Lcom/lge/android/atservice/LGATCMDService;->mLGCmdHandler:Lcom/lge/android/atservice/LGCmdHandler;

    invoke-virtual {v1, p1, v0}, Lcom/lge/android/atservice/LGCmdHandler;->request(Lcom/lge/android/atservice/LGCmdRequest;Lcom/lge/android/atservice/LGCmdResponse;)I

    .line 210
    return-object v0
.end method

.method public checkOpcodeType(Lcom/lge/android/atservice/LGCmdRequest;)I
    .registers 3
    .param p1, "request"    # Lcom/lge/android/atservice/LGCmdRequest;

    .prologue
    .line 195
    iget v0, p1, Lcom/lge/android/atservice/LGCmdRequest;->opcode:I

    packed-switch v0, :pswitch_data_a

    .line 203
    :pswitch_5
    const/4 v0, 0x0

    return v0

    .line 201
    :pswitch_7
    const/4 v0, 0x1

    return v0

    .line 195
    nop

    :pswitch_data_a
    .packed-switch 0x3e8
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public getDeviceManager()Lcom/lge/android/atservice/DeviceManager;
    .registers 2

    .prologue
    .line 550
    iget-object v0, p0, Lcom/lge/android/atservice/LGATCMDService;->mDeviceManager:Lcom/lge/android/atservice/DeviceManager;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 67
    const-string/jumbo v0, "onBind"

    invoke-static {v0}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/lge/android/atservice/LGATCMDService;->LGATCMDServiceStub:Lcom/lge/android/atservice/client/ILGATCMDService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Service onCreate Context: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/android/atservice/Debug;->LogI(Ljava/lang/String;)V

    .line 400
    new-instance v0, Lcom/lge/android/atservice/LGCmdHandler;

    invoke-direct {v0, p0}, Lcom/lge/android/atservice/LGCmdHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/android/atservice/LGATCMDService;->mLGCmdHandler:Lcom/lge/android/atservice/LGCmdHandler;

    .line 401
    new-instance v0, Lcom/lge/android/atservice/DeviceManager;

    invoke-direct {v0, p0}, Lcom/lge/android/atservice/DeviceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/android/atservice/LGATCMDService;->mDeviceManager:Lcom/lge/android/atservice/DeviceManager;

    .line 402
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 403
    const-string/jumbo v0, "slate_rssi_data"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/android/atservice/LGATCMDService;->shared_pref:Landroid/content/SharedPreferences;

    .line 405
    const-string/jumbo v0, "SPR"

    const-string/jumbo v1, "ro.build.target_operator"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 406
    invoke-virtual {p0, p0}, Lcom/lge/android/atservice/LGATCMDService;->registerPhoneStateListener(Landroid/content/Context;)V

    .line 398
    :cond_45
    return-void
.end method

.method public onDaemonConnected()V
    .registers 2

    .prologue
    .line 122
    const-string/jumbo v0, "onDaemonConnected"

    invoke-static {v0}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 123
    new-instance v0, Lcom/lge/android/atservice/LGATCMDService$3;

    invoke-direct {v0, p0}, Lcom/lge/android/atservice/LGATCMDService$3;-><init>(Lcom/lge/android/atservice/LGATCMDService;)V

    invoke-virtual {v0}, Lcom/lge/android/atservice/LGATCMDService$3;->start()V

    .line 121
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 508
    const-string/jumbo v0, "LGATCMD Service Stopped"

    invoke-static {v0}, Lcom/lge/android/atservice/Debug;->LogI(Ljava/lang/String;)V

    .line 510
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 512
    iget-object v0, p0, Lcom/lge/android/atservice/LGATCMDService;->mLGCmdHandler:Lcom/lge/android/atservice/LGCmdHandler;

    if-eqz v0, :cond_10

    .line 513
    iput-object v1, p0, Lcom/lge/android/atservice/LGATCMDService;->mLGCmdHandler:Lcom/lge/android/atservice/LGCmdHandler;

    .line 516
    :cond_10
    iget-object v0, p0, Lcom/lge/android/atservice/LGATCMDService;->mDeviceManager:Lcom/lge/android/atservice/DeviceManager;

    if-eqz v0, :cond_16

    .line 517
    iput-object v1, p0, Lcom/lge/android/atservice/LGATCMDService;->mDeviceManager:Lcom/lge/android/atservice/DeviceManager;

    .line 520
    :cond_16
    iget-object v0, p0, Lcom/lge/android/atservice/LGATCMDService;->mResponseBuilder:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1c

    .line 521
    iput-object v1, p0, Lcom/lge/android/atservice/LGATCMDService;->mResponseBuilder:Ljava/lang/StringBuilder;

    .line 524
    :cond_1c
    iget-object v0, p0, Lcom/lge/android/atservice/LGATCMDService;->mRequestBuilder:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_22

    .line 525
    iput-object v1, p0, Lcom/lge/android/atservice/LGATCMDService;->mRequestBuilder:Ljava/lang/StringBuilder;

    .line 528
    :cond_22
    invoke-direct {p0}, Lcom/lge/android/atservice/LGATCMDService;->stopLGService()V

    .line 507
    return-void
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "raw"    # Ljava/lang/String;
    .param p3, "cooked"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 292
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 293
    .local v1, "response":Ljava/lang/String;
    const/4 v2, 0x1

    .line 295
    .local v2, "result":Z
    const-string/jumbo v3, "onEvent START"

    invoke-static {v3}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 297
    sget-boolean v3, Lcom/lge/android/atservice/Debug;->mDebug:Z

    if-eqz v3, :cond_11

    .line 301
    :cond_11
    const/16 v3, 0x259

    if-ne p1, v3, :cond_22

    .line 302
    const-string/jumbo v3, "AT Command Start"

    invoke-static {v3}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 344
    :cond_1b
    :goto_1b
    const-string/jumbo v3, "onEvent END"

    invoke-static {v3}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 345
    return v2

    .line 303
    :cond_22
    const/16 v3, 0x25a

    if-ne p1, v3, :cond_2d

    .line 304
    const-string/jumbo v3, "AT Command End"

    invoke-static {v3}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    goto :goto_1b

    .line 305
    :cond_2d
    const/16 v3, 0x25d

    if-ne p1, v3, :cond_78

    .line 306
    const-string/jumbo v3, "AT Command Request"

    invoke-static {v3}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 307
    const-string/jumbo v3, " "

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, "data":[Ljava/lang/String;
    array-length v3, v0

    if-le v3, v4, :cond_1b

    .line 309
    aget-object v3, v0, v4

    invoke-direct {p0, v3}, Lcom/lge/android/atservice/LGATCMDService;->processLgCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 310
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "USE processLgCommand() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 311
    iget-object v3, p0, Lcom/lge/android/atservice/LGATCMDService;->mCM:Lcom/lge/android/atservice/NativeConnectionManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "atresponse "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/android/atservice/NativeConnectionManager;->SendToSocket(Ljava/lang/String;)V

    goto :goto_1b

    .line 313
    .end local v0    # "data":[Ljava/lang/String;
    :cond_78
    const/16 v3, 0x262

    if-ne p1, v3, :cond_83

    .line 314
    const-string/jumbo v3, "AT Command Response"

    invoke-static {v3}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    goto :goto_1b

    .line 315
    :cond_83
    const/16 v3, 0xd2

    if-ne p1, v3, :cond_8e

    .line 316
    const-string/jumbo v3, "AT Command Service Request"

    invoke-static {v3}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    goto :goto_1b

    .line 318
    :cond_8e
    const/4 v2, 0x0

    goto :goto_1b
.end method

.method public onRebind(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 79
    const-string/jumbo v0, "onRebind"

    invoke-static {v0}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 80
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 78
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startid"    # I

    .prologue
    .line 533
    invoke-direct {p0, p1}, Lcom/lge/android/atservice/LGATCMDService;->doCommand(Landroid/content/Intent;)V

    .line 532
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Received onStartCommand id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 539
    const-string/jumbo v1, ", flags: "

    .line 538
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 539
    const-string/jumbo v1, ", Intent: "

    .line 538
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/android/atservice/Debug;->LogI(Ljava/lang/String;)V

    .line 544
    invoke-direct {p0, p1}, Lcom/lge/android/atservice/LGATCMDService;->doCommand(Landroid/content/Intent;)V

    .line 546
    const/4 v0, 0x1

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 73
    const-string/jumbo v0, "onUnbind"

    invoke-static {v0}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 74
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method protected registerPhoneStateListener(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 389
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/lge/android/atservice/LGATCMDService;->mPhone:Landroid/telephony/TelephonyManager;

    .line 391
    iget-object v0, p0, Lcom/lge/android/atservice/LGATCMDService;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/lge/android/atservice/LGATCMDService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x101

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 388
    return-void
.end method
