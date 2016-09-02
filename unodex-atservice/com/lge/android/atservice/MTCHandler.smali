.class public Lcom/lge/android/atservice/MTCHandler;
.super Ljava/lang/Object;
.source "MTCHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/android/atservice/MTCHandler$Status;,
        Lcom/lge/android/atservice/MTCHandler$MTCCmd;,
        Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenInfo;,
        Lcom/lge/android/atservice/MTCHandler$MTCCmdPhoneReport;,
        Lcom/lge/android/atservice/MTCHandler$MTCCmdKey;,
        Lcom/lge/android/atservice/MTCHandler$MTCCmdFastKey;,
        Lcom/lge/android/atservice/MTCHandler$MTCCmdTouch;,
        Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;,
        Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureResponse;,
        Lcom/lge/android/atservice/MTCHandler$MTCCmdAgentSetup;,
        Lcom/lge/android/atservice/MTCHandler$MTCCmdPriData;
    }
.end annotation


# static fields
.field private static final ACTION_TOUCH_TAB:I = 0xffff

.field static final COMMAND:Ljava/lang/String; = "MTC"

.field private static final ENABLED_FUNCTIONS:I = 0xc04b

.field private static final ENABLED_FUNCTION_BACKLIGHT:I = 0x400

.field private static final ENABLED_FUNCTION_BATTERY:I = 0x200

.field private static final ENABLED_FUNCTION_KEY_PRESS:I = 0x10

.field private static final ENABLED_FUNCTION_KEY_PRESS_NOTI:I = 0x20

.field private static final ENABLED_FUNCTION_KEY_PRESS_UNIV:I = 0x4000

.field private static final ENABLED_FUNCTION_MEMORY:I = 0x100

.field private static final ENABLED_FUNCTION_NETMONITOR:I = 0x1000

.field private static final ENABLED_FUNCTION_PHONE_FACTORY_RESET:I = 0x80

.field private static final ENABLED_FUNCTION_PHONE_REQUEST:I = 0x1

.field private static final ENABLED_FUNCTION_PHONE_RESTART:I = 0x40

.field private static final ENABLED_FUNCTION_PHONE_STATE:I = 0x2000

.field private static final ENABLED_FUNCTION_SCREEN_CAPTURE_ETA:I = 0x8

.field private static final ENABLED_FUNCTION_SCREEN_CAPTURE_MTC:I = 0x4

.field private static final ENABLED_FUNCTION_SCREEN_REQUEST:I = 0x2

.field private static final ENABLED_FUNCTION_TOUCH_EVENT:I = 0x8000

.field public static final MTC_AGENT_SETUP_REQ_CMD:I = 0x22

.field public static final MTC_BACKLIGHT_INFO:I = 0x42

.field public static final MTC_BATTERY_POWER:I = 0x41

.field public static final MTC_CAPTURE_REQ_CMD:I = 0x1

.field public static final MTC_CELL_INFORMATION:I = 0x80

.field public static final MTC_CMD_CODE:I = 0xf0

.field public static final MTC_CUR_PROC_NAME_REQ_CMD:I = 0x32

.field public static final MTC_ERROR_CMD:I = 0x7f

.field public static final MTC_FACTORY_RESET:I = 0x11

.field public static final MTC_FAST_KEYS_PRESS_REQ_CMD:I = 0x35

.field public static final MTC_FLASH_MODE:I = 0x60

.field public static final MTC_HANDOVER:I = 0x81

.field public static final MTC_INFO_REQ_CMD:I = 0x0

.field public static final MTC_KEY_EVENT_REQ_CMD:I = 0x3

.field public static final MTC_KEY_EVENT_UNIV_REQ_CMD:I = 0x33

.field public static final MTC_LOGGING_MASK_REQ_CMD:I = 0x7

.field public static final MTC_LOG_REQ_CMD:I = 0x8

.field public static final MTC_MAX_CMD:I = 0xff

.field public static final MTC_MEMORY_DUMP:I = 0x40

.field public static final MTC_MODEM_MODE:I = 0x61

.field public static final MTC_NOTIFICATION_REQUEST:I = 0x30

.field public static final MTC_PHONE_REPORT:I = 0x20

.field public static final MTC_PHONE_RESTART_REQ_CMD:I = 0x10

.field public static final MTC_PHONE_STATE:I = 0x21

.field public static final MTC_PRI_DATA_REQ_CMD:I = 0x50

.field public static final MTC_TOUCH_REQ_CMD:I = 0x4

.field static final SCREEN_CAPTURE_HEADER_SIZE:I = 0x10


# instance fields
.field private mBitsPixel:B

.field private mContext:Landroid/content/Context;

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mKeymap:Lcom/lge/android/atservice/MTCKeymap;

.field private mNativeProcess:I

.field private mRequest:Lcom/lge/android/atservice/ETAPacket;

.field private mResponse:Lcom/lge/android/atservice/ETAPacket;

.field private mScreenCapture:Lcom/lge/android/atservice/ScreenCapture;

.field private mStatus:Lcom/lge/android/atservice/MTCHandler$Status;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/lge/android/atservice/MTCHandler;->mContext:Landroid/content/Context;

    .line 95
    new-instance v0, Lcom/lge/android/atservice/ETAPacket;

    invoke-direct {v0}, Lcom/lge/android/atservice/ETAPacket;-><init>()V

    iput-object v0, p0, Lcom/lge/android/atservice/MTCHandler;->mRequest:Lcom/lge/android/atservice/ETAPacket;

    .line 96
    new-instance v0, Lcom/lge/android/atservice/ETAPacket;

    invoke-direct {v0}, Lcom/lge/android/atservice/ETAPacket;-><init>()V

    iput-object v0, p0, Lcom/lge/android/atservice/MTCHandler;->mResponse:Lcom/lge/android/atservice/ETAPacket;

    .line 97
    new-instance v0, Lcom/lge/android/atservice/ScreenCapture;

    invoke-direct {v0}, Lcom/lge/android/atservice/ScreenCapture;-><init>()V

    iput-object v0, p0, Lcom/lge/android/atservice/MTCHandler;->mScreenCapture:Lcom/lge/android/atservice/ScreenCapture;

    .line 98
    new-instance v0, Lcom/lge/android/atservice/MTCKeymap;

    invoke-direct {v0}, Lcom/lge/android/atservice/MTCKeymap;-><init>()V

    iput-object v0, p0, Lcom/lge/android/atservice/MTCHandler;->mKeymap:Lcom/lge/android/atservice/MTCKeymap;

    .line 93
    return-void
.end method

.method private handleAgentSetup([B)Lcom/lge/android/atservice/MTCHandler$Status;
    .registers 5
    .param p1, "cmd"    # [B

    .prologue
    .line 464
    const/4 v2, 0x6

    new-array v1, v2, [B

    .line 465
    .local v1, "response":[B
    new-instance v0, Lcom/lge/android/atservice/MTCHandler$MTCCmdAgentSetup;

    invoke-direct {v0, p0, p1}, Lcom/lge/android/atservice/MTCHandler$MTCCmdAgentSetup;-><init>(Lcom/lge/android/atservice/MTCHandler;[B)V

    .line 467
    .local v0, "agentSetupCmd":Lcom/lge/android/atservice/MTCHandler$MTCCmdAgentSetup;
    const/16 v2, 0x1000

    iput v2, v0, Lcom/lge/android/atservice/MTCHandler$MTCCmdAgentSetup;->packetSize:I

    .line 468
    const/4 v2, 0x1

    iput v2, v0, Lcom/lge/android/atservice/MTCHandler$MTCCmdAgentSetup;->transferDelay:I

    .line 470
    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/MTCHandler$MTCCmdAgentSetup;->toBytes([B)V

    .line 471
    iget-object v2, p0, Lcom/lge/android/atservice/MTCHandler;->mResponse:Lcom/lge/android/atservice/ETAPacket;

    invoke-virtual {v2, v1}, Lcom/lge/android/atservice/ETAPacket;->encode([B)V

    .line 473
    sget-object v2, Lcom/lge/android/atservice/MTCHandler$Status;->OK:Lcom/lge/android/atservice/MTCHandler$Status;

    return-object v2
.end method

.method private handleFastKeyPress([B)Lcom/lge/android/atservice/MTCHandler$Status;
    .registers 8
    .param p1, "cmd"    # [B

    .prologue
    .line 401
    const/4 v4, 0x5

    new-array v3, v4, [B

    .line 402
    .local v3, "response":[B
    new-instance v1, Lcom/lge/android/atservice/MTCHandler$MTCCmdFastKey;

    invoke-direct {v1, p0, p1}, Lcom/lge/android/atservice/MTCHandler$MTCCmdFastKey;-><init>(Lcom/lge/android/atservice/MTCHandler;[B)V

    .line 403
    .local v1, "keycmd":Lcom/lge/android/atservice/MTCHandler$MTCCmdFastKey;
    iget-object v4, p0, Lcom/lge/android/atservice/MTCHandler;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/lge/android/atservice/LGATCMDService;

    invoke-virtual {v4}, Lcom/lge/android/atservice/LGATCMDService;->getDeviceManager()Lcom/lge/android/atservice/DeviceManager;

    move-result-object v0

    .line 406
    .local v0, "dm":Lcom/lge/android/atservice/DeviceManager;
    iget-object v4, p0, Lcom/lge/android/atservice/MTCHandler;->mKeymap:Lcom/lge/android/atservice/MTCKeymap;

    iget-byte v5, v1, Lcom/lge/android/atservice/MTCHandler$MTCCmdFastKey;->keycode:B

    invoke-virtual {v4, v5}, Lcom/lge/android/atservice/MTCKeymap;->findAndroidKey(B)I

    move-result v2

    .line 407
    .local v2, "keycode":I
    if-nez v2, :cond_1d

    .line 408
    sget-object v4, Lcom/lge/android/atservice/MTCHandler$Status;->ERROR:Lcom/lge/android/atservice/MTCHandler$Status;

    return-object v4

    .line 411
    :cond_1d
    invoke-virtual {v0, v2}, Lcom/lge/android/atservice/DeviceManager;->injectKeyDownUp(I)V

    .line 413
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleFastKeyPress: Keycode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 415
    invoke-virtual {v1, v3}, Lcom/lge/android/atservice/MTCHandler$MTCCmdFastKey;->toBytes([B)V

    .line 416
    iget-object v4, p0, Lcom/lge/android/atservice/MTCHandler;->mResponse:Lcom/lge/android/atservice/ETAPacket;

    invoke-virtual {v4, v3}, Lcom/lge/android/atservice/ETAPacket;->encode([B)V

    .line 418
    sget-object v4, Lcom/lge/android/atservice/MTCHandler$Status;->OK:Lcom/lge/android/atservice/MTCHandler$Status;

    return-object v4
.end method

.method private handleKeyEvent([B)Lcom/lge/android/atservice/MTCHandler$Status;
    .registers 9
    .param p1, "cmd"    # [B

    .prologue
    .line 373
    const/16 v5, 0x8

    new-array v4, v5, [B

    .line 374
    .local v4, "response":[B
    new-instance v2, Lcom/lge/android/atservice/MTCHandler$MTCCmdKey;

    invoke-direct {v2, p0, p1}, Lcom/lge/android/atservice/MTCHandler$MTCCmdKey;-><init>(Lcom/lge/android/atservice/MTCHandler;[B)V

    .line 375
    .local v2, "keycmd":Lcom/lge/android/atservice/MTCHandler$MTCCmdKey;
    iget-object v5, p0, Lcom/lge/android/atservice/MTCHandler;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/lge/android/atservice/LGATCMDService;

    invoke-virtual {v5}, Lcom/lge/android/atservice/LGATCMDService;->getDeviceManager()Lcom/lge/android/atservice/DeviceManager;

    move-result-object v1

    .line 379
    .local v1, "dm":Lcom/lge/android/atservice/DeviceManager;
    iget-object v5, p0, Lcom/lge/android/atservice/MTCHandler;->mKeymap:Lcom/lge/android/atservice/MTCKeymap;

    iget-byte v6, v2, Lcom/lge/android/atservice/MTCHandler$MTCCmdKey;->keycode:B

    invoke-virtual {v5, v6}, Lcom/lge/android/atservice/MTCKeymap;->findAndroidKey(B)I

    move-result v3

    .line 380
    .local v3, "keycode":I
    if-nez v3, :cond_1e

    .line 381
    sget-object v5, Lcom/lge/android/atservice/MTCHandler$Status;->ERROR:Lcom/lge/android/atservice/MTCHandler$Status;

    return-object v5

    .line 384
    :cond_1e
    iget-byte v5, v2, Lcom/lge/android/atservice/MTCHandler$MTCCmdKey;->type:B

    const/4 v6, 0x1

    if-ne v5, v6, :cond_54

    .line 385
    const/4 v0, 0x0

    .line 390
    .local v0, "action":I
    :goto_24
    invoke-virtual {v1, v0, v3}, Lcom/lge/android/atservice/DeviceManager;->injectKey(II)V

    .line 392
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleKeyEvent: Action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " Keycode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 394
    invoke-virtual {v2, v4}, Lcom/lge/android/atservice/MTCHandler$MTCCmdKey;->toBytes([B)V

    .line 395
    iget-object v5, p0, Lcom/lge/android/atservice/MTCHandler;->mResponse:Lcom/lge/android/atservice/ETAPacket;

    invoke-virtual {v5, v4}, Lcom/lge/android/atservice/ETAPacket;->encode([B)V

    .line 397
    sget-object v5, Lcom/lge/android/atservice/MTCHandler$Status;->OK:Lcom/lge/android/atservice/MTCHandler$Status;

    return-object v5

    .line 387
    .end local v0    # "action":I
    :cond_54
    const/4 v0, 0x1

    .restart local v0    # "action":I
    goto :goto_24
.end method

.method private handleNativeScreenCapture([B)Lcom/lge/android/atservice/MTCHandler$Status;
    .registers 11
    .param p1, "cmd"    # [B

    .prologue
    const v6, 0xff00

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 315
    const-string/jumbo v4, "handleNativeScreenCapture--"

    invoke-static {v4}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 316
    iput v7, p0, Lcom/lge/android/atservice/MTCHandler;->mNativeProcess:I

    .line 317
    new-instance v3, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;

    invoke-direct {v3, p0, p1}, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;-><init>(Lcom/lge/android/atservice/MTCHandler;[B)V

    .line 319
    .local v3, "screenCaptureRequest":Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;
    iget-object v4, p0, Lcom/lge/android/atservice/MTCHandler;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/lge/android/atservice/LGATCMDService;

    invoke-virtual {v4}, Lcom/lge/android/atservice/LGATCMDService;->getDeviceManager()Lcom/lge/android/atservice/DeviceManager;

    move-result-object v2

    .line 321
    .local v2, "dm":Lcom/lge/android/atservice/DeviceManager;
    iget-short v4, v3, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;->width:S

    if-eqz v4, :cond_22

    iget-short v4, v3, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;->height:S

    if-nez v4, :cond_5d

    .line 322
    :cond_22
    const-string/jumbo v4, "Capture whole screen!"

    invoke-static {v4}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v2}, Lcom/lge/android/atservice/DeviceManager;->getDisplayWidth()I

    move-result v4

    int-to-short v1, v4

    .line 324
    .local v1, "dev_width":S
    invoke-virtual {v2}, Lcom/lge/android/atservice/DeviceManager;->getDisplayHeight()I

    move-result v4

    int-to-short v0, v4

    .line 325
    .local v0, "dev_height":S
    const/4 v4, 0x3

    aput-byte v5, p1, v4

    .line 326
    const/4 v4, 0x4

    aput-byte v5, p1, v4

    .line 327
    const/4 v4, 0x5

    aput-byte v5, p1, v4

    .line 328
    const/4 v4, 0x6

    aput-byte v5, p1, v4

    .line 329
    and-int/lit16 v4, v1, 0xff

    int-to-byte v4, v4

    const/4 v5, 0x7

    aput-byte v4, p1, v5

    .line 330
    and-int v4, v1, v6

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    const/16 v5, 0x8

    aput-byte v4, p1, v5

    .line 331
    and-int/lit16 v4, v0, 0xff

    int-to-byte v4, v4

    const/16 v5, 0x9

    aput-byte v4, p1, v5

    .line 332
    and-int v4, v0, v6

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    const/16 v5, 0xa

    aput-byte v4, p1, v5

    .line 335
    .end local v0    # "dev_height":S
    .end local v1    # "dev_width":S
    :cond_5d
    invoke-virtual {v2}, Lcom/lge/android/atservice/DeviceManager;->getDisplayWidth()I

    move-result v4

    iget-short v5, v3, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;->left:S

    iget-short v6, v3, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;->width:S

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_71

    .line 336
    const-string/jumbo v4, "Invalid width of screenshot area!"

    invoke-static {v4}, Lcom/lge/android/atservice/Debug;->LogE(Ljava/lang/String;)V

    .line 337
    sget-object v4, Lcom/lge/android/atservice/MTCHandler$Status;->ERROR:Lcom/lge/android/atservice/MTCHandler$Status;

    return-object v4

    .line 340
    :cond_71
    invoke-virtual {v2}, Lcom/lge/android/atservice/DeviceManager;->getDisplayHeight()I

    move-result v4

    iget-short v5, v3, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;->top:S

    iget-short v6, v3, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;->height:S

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_85

    .line 341
    const-string/jumbo v4, "Invalid height of screenshot area!"

    invoke-static {v4}, Lcom/lge/android/atservice/Debug;->LogE(Ljava/lang/String;)V

    .line 342
    sget-object v4, Lcom/lge/android/atservice/MTCHandler$Status;->ERROR:Lcom/lge/android/atservice/MTCHandler$Status;

    return-object v4

    .line 345
    :cond_85
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "left = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-short v5, v3, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;->left:S

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 346
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "top = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-short v5, v3, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;->top:S

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 347
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "width = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-short v5, v3, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;->width:S

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 348
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "height = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-short v5, v3, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;->height:S

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 350
    iget-short v4, v3, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;->width:S

    rem-int/lit8 v4, v4, 0x2

    if-ne v4, v7, :cond_103

    .line 351
    iget-short v4, v3, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;->left:S

    rem-int/lit8 v4, v4, 0x2

    if-ne v4, v7, :cond_fc

    .line 352
    iget-short v4, v3, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;->left:S

    add-int/lit8 v4, v4, -0x1

    int-to-short v4, v4

    iput-short v4, v3, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;->left:S

    .line 355
    :cond_fc
    iget-short v4, v3, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;->width:S

    add-int/lit8 v4, v4, 0x1

    int-to-short v4, v4

    iput-short v4, v3, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;->width:S

    .line 359
    :cond_103
    iget-object v4, p0, Lcom/lge/android/atservice/MTCHandler;->mScreenCapture:Lcom/lge/android/atservice/ScreenCapture;

    iget-short v5, v3, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;->left:S

    .line 360
    iget-short v6, v3, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;->top:S

    .line 361
    iget-short v7, v3, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;->width:S

    .line 362
    iget-short v8, v3, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;->height:S

    .line 359
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/lge/android/atservice/ScreenCapture;->SetCaptureRange(IIII)V

    .line 364
    iget-object v4, p0, Lcom/lge/android/atservice/MTCHandler;->mScreenCapture:Lcom/lge/android/atservice/ScreenCapture;

    invoke-virtual {v4, p1}, Lcom/lge/android/atservice/ScreenCapture;->NativeCaptureScreen([B)I

    move-result v4

    if-nez v4, :cond_121

    .line 365
    const-string/jumbo v4, "Can not capture screen!"

    invoke-static {v4}, Lcom/lge/android/atservice/Debug;->LogE(Ljava/lang/String;)V

    .line 366
    sget-object v4, Lcom/lge/android/atservice/MTCHandler$Status;->ERROR:Lcom/lge/android/atservice/MTCHandler$Status;

    return-object v4

    .line 369
    :cond_121
    sget-object v4, Lcom/lge/android/atservice/MTCHandler$Status;->OK:Lcom/lge/android/atservice/MTCHandler$Status;

    return-object v4
.end method

.method private handlePhoneReport([B)Lcom/lge/android/atservice/MTCHandler$Status;
    .registers 8
    .param p1, "cmd"    # [B

    .prologue
    .line 212
    const/16 v4, 0x58

    new-array v3, v4, [B

    .line 213
    .local v3, "response":[B
    new-instance v2, Lcom/lge/android/atservice/MTCHandler$MTCCmdPhoneReport;

    invoke-direct {v2, p0, p1}, Lcom/lge/android/atservice/MTCHandler$MTCCmdPhoneReport;-><init>(Lcom/lge/android/atservice/MTCHandler;[B)V

    .line 214
    .local v2, "phoneReport":Lcom/lge/android/atservice/MTCHandler$MTCCmdPhoneReport;
    iget-object v4, p0, Lcom/lge/android/atservice/MTCHandler;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/lge/android/atservice/LGATCMDService;

    invoke-virtual {v4}, Lcom/lge/android/atservice/LGATCMDService;->getDeviceManager()Lcom/lge/android/atservice/DeviceManager;

    move-result-object v0

    .line 216
    .local v0, "dm":Lcom/lge/android/atservice/DeviceManager;
    :try_start_11
    invoke-virtual {v0}, Lcom/lge/android/atservice/DeviceManager;->getModelName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/lge/android/atservice/MTCHandler$MTCCmdPhoneReport;->modelName:Ljava/lang/String;

    .line 217
    invoke-virtual {v0}, Lcom/lge/android/atservice/DeviceManager;->getReleaseDate()Ljava/util/Date;

    move-result-object v4

    iput-object v4, v2, Lcom/lge/android/atservice/MTCHandler$MTCCmdPhoneReport;->releaseDate:Ljava/util/Date;

    .line 218
    invoke-virtual {v0}, Lcom/lge/android/atservice/DeviceManager;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/lge/android/atservice/MTCHandler$MTCCmdPhoneReport;->softwareVersion:Ljava/lang/String;

    .line 219
    invoke-virtual {v0}, Lcom/lge/android/atservice/DeviceManager;->getImei()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/lge/android/atservice/MTCHandler$MTCCmdPhoneReport;->imei:Ljava/lang/String;

    .line 220
    invoke-virtual {v0}, Lcom/lge/android/atservice/DeviceManager;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/lge/android/atservice/MTCHandler$MTCCmdPhoneReport;->phoneNumber:Ljava/lang/String;

    .line 221
    iget-object v4, v2, Lcom/lge/android/atservice/MTCHandler$MTCCmdPhoneReport;->phoneNumber:Ljava/lang/String;

    if-nez v4, :cond_38

    .line 222
    const-string/jumbo v4, "000-0000-0000"

    iput-object v4, v2, Lcom/lge/android/atservice/MTCHandler$MTCCmdPhoneReport;->phoneNumber:Ljava/lang/String;

    .line 224
    :cond_38
    const v4, 0xc04b

    iput v4, v2, Lcom/lge/android/atservice/MTCHandler$MTCCmdPhoneReport;->enabledFunctions:I

    .line 226
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "enabled Functions: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/lge/android/atservice/MTCHandler$MTCCmdPhoneReport;->enabledFunctions:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v2, v3}, Lcom/lge/android/atservice/MTCHandler$MTCCmdPhoneReport;->toBytes([B)V

    .line 228
    iget-object v4, p0, Lcom/lge/android/atservice/MTCHandler;->mResponse:Lcom/lge/android/atservice/ETAPacket;

    invoke-virtual {v4, v3}, Lcom/lge/android/atservice/ETAPacket;->encode([B)V
    :try_end_5e
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_5e} :catch_61

    .line 232
    :goto_5e
    sget-object v4, Lcom/lge/android/atservice/MTCHandler$Status;->OK:Lcom/lge/android/atservice/MTCHandler$Status;

    return-object v4

    .line 229
    :catch_61
    move-exception v1

    .line 230
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v4, "Null Pointer Exception!!!"

    invoke-static {v4}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    goto :goto_5e
.end method

.method private handlePhoneRestart([B)Lcom/lge/android/atservice/MTCHandler$Status;
    .registers 4
    .param p1, "cmd"    # [B

    .prologue
    .line 505
    iget-object v1, p0, Lcom/lge/android/atservice/MTCHandler;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/lge/android/atservice/LGATCMDService;

    invoke-virtual {v1}, Lcom/lge/android/atservice/LGATCMDService;->getDeviceManager()Lcom/lge/android/atservice/DeviceManager;

    move-result-object v0

    .line 506
    .local v0, "dm":Lcom/lge/android/atservice/DeviceManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/DeviceManager;->reboot(Ljava/lang/String;)V

    .line 507
    sget-object v1, Lcom/lge/android/atservice/MTCHandler$Status;->OK:Lcom/lge/android/atservice/MTCHandler$Status;

    return-object v1
.end method

.method private handlePriData([B)Lcom/lge/android/atservice/MTCHandler$Status;
    .registers 9
    .param p1, "cmd"    # [B

    .prologue
    .line 477
    new-instance v4, Lcom/lge/android/atservice/MTCHandler$MTCCmdPriData;

    invoke-direct {v4, p0, p1}, Lcom/lge/android/atservice/MTCHandler$MTCCmdPriData;-><init>(Lcom/lge/android/atservice/MTCHandler;[B)V

    .line 478
    .local v4, "priCmd":Lcom/lge/android/atservice/MTCHandler$MTCCmdPriData;
    iget-object v5, p0, Lcom/lge/android/atservice/MTCHandler;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/lge/android/atservice/LGATCMDService;

    invoke-virtual {v5}, Lcom/lge/android/atservice/LGATCMDService;->getDeviceManager()Lcom/lge/android/atservice/DeviceManager;

    move-result-object v0

    .line 480
    .local v0, "dm":Lcom/lge/android/atservice/DeviceManager;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handlePriData: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/lge/android/atservice/MTCHandler$MTCCmdPriData;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 482
    iget-object v5, v4, Lcom/lge/android/atservice/MTCHandler$MTCCmdPriData;->name:Ljava/lang/String;

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a3

    .line 483
    iget-object v5, v4, Lcom/lge/android/atservice/MTCHandler$MTCCmdPriData;->name:Ljava/lang/String;

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 484
    .local v3, "params":[Ljava/lang/String;
    array-length v5, v3

    const/4 v6, 0x3

    if-ge v5, v6, :cond_41

    .line 485
    sget-object v5, Lcom/lge/android/atservice/MTCHandler$Status;->ERROR:Lcom/lge/android/atservice/MTCHandler$Status;

    return-object v5

    .line 488
    :cond_41
    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 489
    .local v1, "index":I
    const/4 v5, 0x2

    aget-object v2, v3, v5

    .line 490
    .local v2, "name":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handlePriData: index="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 491
    invoke-virtual {v0, v1, v2}, Lcom/lge/android/atservice/DeviceManager;->getPriString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/lge/android/atservice/MTCHandler$MTCCmdPriData;->strValue:Ljava/lang/String;

    .line 496
    .end local v1    # "index":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "params":[Ljava/lang/String;
    :goto_73
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handlePriData: name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/lge/android/atservice/MTCHandler$MTCCmdPriData;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " strValue="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/lge/android/atservice/MTCHandler$MTCCmdPriData;->strValue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 499
    iget-object v5, p0, Lcom/lge/android/atservice/MTCHandler;->mResponse:Lcom/lge/android/atservice/ETAPacket;

    iget-object v6, v4, Lcom/lge/android/atservice/MTCHandler$MTCCmdPriData;->strValue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/lge/android/atservice/ETAPacket;->setEncoded(Ljava/lang/String;)V

    .line 501
    sget-object v5, Lcom/lge/android/atservice/MTCHandler$Status;->OK:Lcom/lge/android/atservice/MTCHandler$Status;

    return-object v5

    .line 493
    :cond_a3
    iget-object v5, v4, Lcom/lge/android/atservice/MTCHandler$MTCCmdPriData;->name:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/lge/android/atservice/DeviceManager;->getFlexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/lge/android/atservice/MTCHandler$MTCCmdPriData;->strValue:Ljava/lang/String;

    goto :goto_73
.end method

.method private handleScreenCapture([B)Lcom/lge/android/atservice/MTCHandler$Status;
    .registers 12
    .param p1, "cmd"    # [B

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 237
    new-instance v2, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;

    invoke-direct {v2, p0, p1}, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;-><init>(Lcom/lge/android/atservice/MTCHandler;[B)V

    .line 238
    .local v2, "screenCaptureRequest":Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;
    new-instance v3, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureResponse;

    invoke-direct {v3, p0, p1}, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureResponse;-><init>(Lcom/lge/android/atservice/MTCHandler;[B)V

    .line 240
    .local v3, "screenCaptureResponse":Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureResponse;
    iget-object v4, p0, Lcom/lge/android/atservice/MTCHandler;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/lge/android/atservice/LGATCMDService;

    invoke-virtual {v4}, Lcom/lge/android/atservice/LGATCMDService;->getDeviceManager()Lcom/lge/android/atservice/DeviceManager;

    move-result-object v0

    .line 242
    .local v0, "dm":Lcom/lge/android/atservice/DeviceManager;
    iget-short v4, v2, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;->width:S

    if-eqz v4, :cond_1c

    iget-short v4, v2, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;->height:S

    if-nez v4, :cond_34

    .line 243
    :cond_1c
    const-string/jumbo v4, "Capture whole screen!"

    invoke-static {v4}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 244
    iput-short v5, v2, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;->left:S

    .line 245
    iput-short v5, v2, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;->top:S

    .line 246
    invoke-virtual {v0}, Lcom/lge/android/atservice/DeviceManager;->getDisplayWidth()I

    move-result v4

    int-to-short v4, v4

    iput-short v4, v2, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;->width:S

    .line 247
    invoke-virtual {v0}, Lcom/lge/android/atservice/DeviceManager;->getDisplayHeight()I

    move-result v4

    int-to-short v4, v4

    iput-short v4, v2, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;->height:S

    .line 250
    :cond_34
    invoke-virtual {v0}, Lcom/lge/android/atservice/DeviceManager;->getDisplayWidth()I

    move-result v4

    iget-short v5, v2, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;->left:S

    iget-short v6, v2, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;->width:S

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_48

    .line 251
    const-string/jumbo v4, "Invalid width of screenshot area!"

    invoke-static {v4}, Lcom/lge/android/atservice/Debug;->LogE(Ljava/lang/String;)V

    .line 252
    sget-object v4, Lcom/lge/android/atservice/MTCHandler$Status;->ERROR:Lcom/lge/android/atservice/MTCHandler$Status;

    return-object v4

    .line 255
    :cond_48
    invoke-virtual {v0}, Lcom/lge/android/atservice/DeviceManager;->getDisplayHeight()I

    move-result v4

    iget-short v5, v2, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;->top:S

    iget-short v6, v2, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;->height:S

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_5c

    .line 256
    const-string/jumbo v4, "Invalid height of screenshot area!"

    invoke-static {v4}, Lcom/lge/android/atservice/Debug;->LogE(Ljava/lang/String;)V

    .line 257
    sget-object v4, Lcom/lge/android/atservice/MTCHandler$Status;->ERROR:Lcom/lge/android/atservice/MTCHandler$Status;

    return-object v4

    .line 260
    :cond_5c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "left = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-short v5, v2, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;->left:S

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 261
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "top = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-short v5, v2, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;->top:S

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 262
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "width = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-short v5, v2, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;->width:S

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 263
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "height = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-short v5, v2, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;->height:S

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 265
    iget-short v4, v2, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;->width:S

    rem-int/lit8 v4, v4, 0x2

    if-ne v4, v9, :cond_da

    .line 266
    iget-short v4, v2, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;->left:S

    rem-int/lit8 v4, v4, 0x2

    if-ne v4, v9, :cond_d3

    .line 267
    iget-short v4, v2, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;->left:S

    add-int/lit8 v4, v4, -0x1

    int-to-short v4, v4

    iput-short v4, v2, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;->left:S

    .line 270
    :cond_d3
    iget-short v4, v2, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;->width:S

    add-int/lit8 v4, v4, 0x1

    int-to-short v4, v4

    iput-short v4, v2, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;->width:S

    .line 274
    :cond_da
    iget-object v4, p0, Lcom/lge/android/atservice/MTCHandler;->mScreenCapture:Lcom/lge/android/atservice/ScreenCapture;

    iget-short v5, v2, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;->left:S

    .line 275
    iget-short v6, v2, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;->top:S

    .line 276
    iget-short v7, v2, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;->width:S

    .line 277
    iget-short v8, v2, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;->height:S

    .line 274
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/lge/android/atservice/ScreenCapture;->SetCaptureRange(IIII)V

    .line 280
    iget-byte v4, v2, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;->data_type:B

    if-nez v4, :cond_fc

    .line 281
    iget-object v4, p0, Lcom/lge/android/atservice/MTCHandler;->mScreenCapture:Lcom/lge/android/atservice/ScreenCapture;

    invoke-virtual {v4}, Lcom/lge/android/atservice/ScreenCapture;->CaptureScreen()I

    move-result v4

    if-nez v4, :cond_11c

    .line 282
    const-string/jumbo v4, "Can not capture screen!"

    invoke-static {v4}, Lcom/lge/android/atservice/Debug;->LogE(Ljava/lang/String;)V

    .line 283
    sget-object v4, Lcom/lge/android/atservice/MTCHandler$Status;->ERROR:Lcom/lge/android/atservice/MTCHandler$Status;

    return-object v4

    .line 285
    :cond_fc
    iget-byte v4, v2, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;->data_type:B

    if-ne v4, v9, :cond_113

    .line 286
    iget-object v4, p0, Lcom/lge/android/atservice/MTCHandler;->mScreenCapture:Lcom/lge/android/atservice/ScreenCapture;

    iget-byte v5, v2, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;->threshold:B

    invoke-virtual {v4, v5}, Lcom/lge/android/atservice/ScreenCapture;->CaptureScreenWithBW(B)I

    move-result v4

    if-nez v4, :cond_11c

    .line 287
    const-string/jumbo v4, "Can not capture screen!"

    invoke-static {v4}, Lcom/lge/android/atservice/Debug;->LogE(Ljava/lang/String;)V

    .line 288
    sget-object v4, Lcom/lge/android/atservice/MTCHandler$Status;->ERROR:Lcom/lge/android/atservice/MTCHandler$Status;

    return-object v4

    .line 291
    :cond_113
    const-string/jumbo v4, "Invalid request data_type!"

    invoke-static {v4}, Lcom/lge/android/atservice/Debug;->LogE(Ljava/lang/String;)V

    .line 292
    sget-object v4, Lcom/lge/android/atservice/MTCHandler$Status;->ERROR:Lcom/lge/android/atservice/MTCHandler$Status;

    return-object v4

    .line 295
    :cond_11c
    iget-short v4, v2, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;->width:S

    iput-short v4, v3, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureResponse;->bmp_width:S

    .line 296
    iget-short v4, v2, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;->height:S

    iput-short v4, v3, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureResponse;->bmp_height:S

    .line 297
    iget-object v4, p0, Lcom/lge/android/atservice/MTCHandler;->mScreenCapture:Lcom/lge/android/atservice/ScreenCapture;

    invoke-virtual {v4}, Lcom/lge/android/atservice/ScreenCapture;->getBitsPixel()I

    move-result v4

    int-to-byte v4, v4

    iput-byte v4, v3, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureResponse;->bits_pixel:B

    .line 298
    iget-byte v4, v2, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;->data_type:B

    iput-byte v4, v3, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureResponse;->data_type:B

    .line 299
    iget-byte v4, v2, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;->pack_type:B

    iput-byte v4, v3, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureResponse;->pack_type:B

    .line 300
    iget-byte v4, v2, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;->quantizer:B

    iput-byte v4, v3, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureResponse;->quantizer:B

    .line 301
    iget-byte v4, v2, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;->threshold:B

    iput-byte v4, v3, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureResponse;->threshold:B

    .line 302
    iget-object v4, p0, Lcom/lge/android/atservice/MTCHandler;->mScreenCapture:Lcom/lge/android/atservice/ScreenCapture;

    invoke-virtual {v4}, Lcom/lge/android/atservice/ScreenCapture;->GetScreenCaptureDataSize()I

    move-result v4

    iput v4, v3, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureResponse;->bmp_size:I

    .line 303
    iget-object v4, p0, Lcom/lge/android/atservice/MTCHandler;->mScreenCapture:Lcom/lge/android/atservice/ScreenCapture;

    invoke-virtual {v4}, Lcom/lge/android/atservice/ScreenCapture;->GetScreenCaptureData()[B

    move-result-object v4

    iput-object v4, v3, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureResponse;->bmp_data:[B

    .line 305
    iget v4, v3, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureResponse;->bmp_size:I

    add-int/lit8 v4, v4, 0x10

    new-array v1, v4, [B

    .line 307
    .local v1, "response":[B
    invoke-virtual {v3, v1}, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureResponse;->toBytes([B)V

    .line 309
    iget-object v4, p0, Lcom/lge/android/atservice/MTCHandler;->mResponse:Lcom/lge/android/atservice/ETAPacket;

    iget v5, v3, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureResponse;->bmp_size:I

    add-int/lit8 v5, v5, 0x10

    invoke-virtual {v4, v1, v5}, Lcom/lge/android/atservice/ETAPacket;->encodeSize([BI)V

    .line 311
    sget-object v4, Lcom/lge/android/atservice/MTCHandler$Status;->OK:Lcom/lge/android/atservice/MTCHandler$Status;

    return-object v4
.end method

.method private handleScreenInfo([B)Lcom/lge/android/atservice/MTCHandler$Status;
    .registers 6
    .param p1, "cmd"    # [B

    .prologue
    .line 197
    const/16 v3, 0x8

    new-array v1, v3, [B

    .line 198
    .local v1, "response":[B
    new-instance v2, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenInfo;

    invoke-direct {v2, p0, p1}, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenInfo;-><init>(Lcom/lge/android/atservice/MTCHandler;[B)V

    .line 199
    .local v2, "screenInfo":Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenInfo;
    iget-object v3, p0, Lcom/lge/android/atservice/MTCHandler;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/lge/android/atservice/LGATCMDService;

    invoke-virtual {v3}, Lcom/lge/android/atservice/LGATCMDService;->getDeviceManager()Lcom/lge/android/atservice/DeviceManager;

    move-result-object v0

    .line 201
    .local v0, "dm":Lcom/lge/android/atservice/DeviceManager;
    invoke-virtual {v0}, Lcom/lge/android/atservice/DeviceManager;->getDisplayWidth()I

    move-result v3

    int-to-short v3, v3

    iput-short v3, v2, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenInfo;->width:S

    .line 202
    invoke-virtual {v0}, Lcom/lge/android/atservice/DeviceManager;->getDisplayHeight()I

    move-result v3

    int-to-short v3, v3

    iput-short v3, v2, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenInfo;->height:S

    .line 203
    invoke-virtual {v0}, Lcom/lge/android/atservice/DeviceManager;->getDisplayBitsPixel()I

    move-result v3

    int-to-byte v3, v3

    iput-byte v3, v2, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenInfo;->bitsPixel:B

    .line 205
    invoke-virtual {v2, v1}, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenInfo;->toBytes([B)V

    .line 206
    iget-object v3, p0, Lcom/lge/android/atservice/MTCHandler;->mResponse:Lcom/lge/android/atservice/ETAPacket;

    invoke-virtual {v3, v1}, Lcom/lge/android/atservice/ETAPacket;->encode([B)V

    .line 208
    sget-object v3, Lcom/lge/android/atservice/MTCHandler$Status;->OK:Lcom/lge/android/atservice/MTCHandler$Status;

    return-object v3
.end method

.method private handleTouch([B)Lcom/lge/android/atservice/MTCHandler$Status;
    .registers 10
    .param p1, "cmd"    # [B

    .prologue
    .line 422
    const/16 v6, 0x8

    new-array v2, v6, [B

    .line 423
    .local v2, "response":[B
    new-instance v3, Lcom/lge/android/atservice/MTCHandler$MTCCmdTouch;

    invoke-direct {v3, p0, p1}, Lcom/lge/android/atservice/MTCHandler$MTCCmdTouch;-><init>(Lcom/lge/android/atservice/MTCHandler;[B)V

    .line 424
    .local v3, "touchcmd":Lcom/lge/android/atservice/MTCHandler$MTCCmdTouch;
    iget-object v6, p0, Lcom/lge/android/atservice/MTCHandler;->mContext:Landroid/content/Context;

    check-cast v6, Lcom/lge/android/atservice/LGATCMDService;

    invoke-virtual {v6}, Lcom/lge/android/atservice/LGATCMDService;->getDeviceManager()Lcom/lge/android/atservice/DeviceManager;

    move-result-object v1

    .line 429
    .local v1, "dm":Lcom/lge/android/atservice/DeviceManager;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleTouch: touchcmd.action="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-byte v7, v3, Lcom/lge/android/atservice/MTCHandler$MTCCmdTouch;->action:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 430
    const-string/jumbo v7, " touchcmd.x="

    .line 429
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 430
    iget-short v7, v3, Lcom/lge/android/atservice/MTCHandler$MTCCmdTouch;->x:S

    .line 429
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 430
    const-string/jumbo v7, " touchcmd.y="

    .line 429
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 430
    iget-short v7, v3, Lcom/lge/android/atservice/MTCHandler$MTCCmdTouch;->y:S

    .line 429
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 432
    iget-byte v6, v3, Lcom/lge/android/atservice/MTCHandler$MTCCmdTouch;->action:B

    const/4 v7, 0x4

    if-ne v6, v7, :cond_8e

    .line 433
    const/4 v0, 0x0

    .line 446
    .local v0, "action":I
    :goto_4a
    iget-short v4, v3, Lcom/lge/android/atservice/MTCHandler$MTCCmdTouch;->x:S

    .line 447
    .local v4, "x":I
    iget-short v5, v3, Lcom/lge/android/atservice/MTCHandler$MTCCmdTouch;->y:S

    .line 449
    .local v5, "y":I
    const v6, 0xffff

    if-ne v0, v6, :cond_af

    .line 450
    invoke-virtual {v1, v4, v5}, Lcom/lge/android/atservice/DeviceManager;->injectTouchDownUp(II)V

    .line 455
    :goto_56
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleTouch: Action="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " x="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " y="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 457
    invoke-virtual {v3, v2}, Lcom/lge/android/atservice/MTCHandler$MTCCmdTouch;->toBytes([B)V

    .line 458
    iget-object v6, p0, Lcom/lge/android/atservice/MTCHandler;->mResponse:Lcom/lge/android/atservice/ETAPacket;

    invoke-virtual {v6, v2}, Lcom/lge/android/atservice/ETAPacket;->encode([B)V

    .line 460
    sget-object v6, Lcom/lge/android/atservice/MTCHandler$Status;->OK:Lcom/lge/android/atservice/MTCHandler$Status;

    return-object v6

    .line 434
    .end local v0    # "action":I
    .end local v4    # "x":I
    .end local v5    # "y":I
    :cond_8e
    iget-byte v6, v3, Lcom/lge/android/atservice/MTCHandler$MTCCmdTouch;->action:B

    const/4 v7, 0x5

    if-ne v6, v7, :cond_95

    .line 435
    const/4 v0, 0x1

    .restart local v0    # "action":I
    goto :goto_4a

    .line 436
    .end local v0    # "action":I
    :cond_95
    iget-byte v6, v3, Lcom/lge/android/atservice/MTCHandler$MTCCmdTouch;->action:B

    const/4 v7, 0x2

    if-ne v6, v7, :cond_9e

    .line 437
    const v0, 0xffff

    .restart local v0    # "action":I
    goto :goto_4a

    .line 438
    .end local v0    # "action":I
    :cond_9e
    iget-byte v6, v3, Lcom/lge/android/atservice/MTCHandler$MTCCmdTouch;->action:B

    if-nez v6, :cond_a4

    .line 439
    const/4 v0, 0x2

    .restart local v0    # "action":I
    goto :goto_4a

    .line 440
    .end local v0    # "action":I
    :cond_a4
    iget-byte v6, v3, Lcom/lge/android/atservice/MTCHandler$MTCCmdTouch;->action:B

    const/4 v7, 0x1

    if-ne v6, v7, :cond_ac

    .line 441
    const/16 v0, 0x14

    .restart local v0    # "action":I
    goto :goto_4a

    .line 443
    .end local v0    # "action":I
    :cond_ac
    sget-object v6, Lcom/lge/android/atservice/MTCHandler$Status;->ERROR:Lcom/lge/android/atservice/MTCHandler$Status;

    return-object v6

    .line 452
    .restart local v0    # "action":I
    .restart local v4    # "x":I
    .restart local v5    # "y":I
    :cond_af
    invoke-virtual {v1, v0, v4, v5}, Lcom/lge/android/atservice/DeviceManager;->injectTouch(III)V

    goto :goto_56
.end method


# virtual methods
.method public command()Ljava/lang/String;
    .registers 2

    .prologue
    .line 193
    const-string/jumbo v0, "MTC"

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .registers 4

    .prologue
    .line 183
    iget v1, p0, Lcom/lge/android/atservice/MTCHandler;->mNativeProcess:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    .line 184
    const-string/jumbo v0, ""

    .line 189
    .local v0, "ret":Ljava/lang/String;
    :goto_8
    return-object v0

    .line 186
    .end local v0    # "ret":Ljava/lang/String;
    :cond_9
    iget-object v1, p0, Lcom/lge/android/atservice/MTCHandler;->mResponse:Lcom/lge/android/atservice/ETAPacket;

    invoke-virtual {v1}, Lcom/lge/android/atservice/ETAPacket;->getEncoded()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_8
.end method

.method public request(Ljava/lang/String;Lcom/lge/android/atservice/ATParser$AtCmdAction;[Ljava/lang/String;)Lcom/lge/android/atservice/MTCHandler$Status;
    .registers 7
    .param p1, "atCmd"    # Ljava/lang/String;
    .param p2, "atAct"    # Lcom/lge/android/atservice/ATParser$AtCmdAction;
    .param p3, "atParams"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 166
    aget-object v0, p3, v2

    .line 167
    .local v0, "mtcCmd":Ljava/lang/String;
    iput v2, p0, Lcom/lge/android/atservice/MTCHandler;->mNativeProcess:I

    .line 168
    iget-object v2, p0, Lcom/lge/android/atservice/MTCHandler;->mRequest:Lcom/lge/android/atservice/ETAPacket;

    invoke-virtual {v2, v0}, Lcom/lge/android/atservice/ETAPacket;->decode(Ljava/lang/String;)V

    .line 169
    iget-object v2, p0, Lcom/lge/android/atservice/MTCHandler;->mRequest:Lcom/lge/android/atservice/ETAPacket;

    invoke-virtual {v2}, Lcom/lge/android/atservice/ETAPacket;->dumpCmd()V

    .line 171
    iget-object v2, p0, Lcom/lge/android/atservice/MTCHandler;->mRequest:Lcom/lge/android/atservice/ETAPacket;

    invoke-virtual {v2}, Lcom/lge/android/atservice/ETAPacket;->getDecoded()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lge/android/atservice/MTCHandler;->request([B)[B

    move-result-object v1

    .line 172
    .local v1, "response":[B
    if-nez v1, :cond_1e

    .line 173
    sget-object v2, Lcom/lge/android/atservice/MTCHandler$Status;->ERROR:Lcom/lge/android/atservice/MTCHandler$Status;

    return-object v2

    .line 176
    :cond_1e
    const-string/jumbo v2, "MTC command is processed successfully"

    invoke-static {v2}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 177
    sget-object v2, Lcom/lge/android/atservice/MTCHandler$Status;->OK:Lcom/lge/android/atservice/MTCHandler$Status;

    return-object v2
.end method

.method public request([B)[B
    .registers 5
    .param p1, "req"    # [B

    .prologue
    .line 102
    const/4 v1, 0x1

    aget-byte v0, p1, v1

    .line 104
    .local v0, "requestId":I
    sparse-switch v0, :sswitch_data_96

    .line 153
    const-string/jumbo v1, "MTC Unknown command!"

    invoke-static {v1}, Lcom/lge/android/atservice/Debug;->LogE(Ljava/lang/String;)V

    .line 154
    sget-object v1, Lcom/lge/android/atservice/MTCHandler$Status;->ERROR:Lcom/lge/android/atservice/MTCHandler$Status;

    iput-object v1, p0, Lcom/lge/android/atservice/MTCHandler;->mStatus:Lcom/lge/android/atservice/MTCHandler$Status;

    .line 158
    :goto_10
    iget-object v1, p0, Lcom/lge/android/atservice/MTCHandler;->mStatus:Lcom/lge/android/atservice/MTCHandler$Status;

    sget-object v2, Lcom/lge/android/atservice/MTCHandler$Status;->ERROR:Lcom/lge/android/atservice/MTCHandler$Status;

    if-eq v1, v2, :cond_93

    .line 159
    iget-object v1, p0, Lcom/lge/android/atservice/MTCHandler;->mResponse:Lcom/lge/android/atservice/ETAPacket;

    invoke-virtual {v1}, Lcom/lge/android/atservice/ETAPacket;->getDecoded()[B

    move-result-object v1

    return-object v1

    .line 106
    :sswitch_1d
    const-string/jumbo v1, "MTC_INFO_REQ_CMD"

    invoke-static {v1}, Lcom/lge/android/atservice/Debug;->LogI(Ljava/lang/String;)V

    .line 107
    invoke-direct {p0, p1}, Lcom/lge/android/atservice/MTCHandler;->handleScreenInfo([B)Lcom/lge/android/atservice/MTCHandler$Status;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/android/atservice/MTCHandler;->mStatus:Lcom/lge/android/atservice/MTCHandler$Status;

    goto :goto_10

    .line 111
    :sswitch_2a
    const-string/jumbo v1, "MTC_PHONE_REPORT"

    invoke-static {v1}, Lcom/lge/android/atservice/Debug;->LogI(Ljava/lang/String;)V

    .line 112
    invoke-direct {p0, p1}, Lcom/lge/android/atservice/MTCHandler;->handlePhoneReport([B)Lcom/lge/android/atservice/MTCHandler$Status;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/android/atservice/MTCHandler;->mStatus:Lcom/lge/android/atservice/MTCHandler$Status;

    goto :goto_10

    .line 116
    :sswitch_37
    const-string/jumbo v1, "MTC_CAPTURE_REQ_CMD"

    invoke-static {v1}, Lcom/lge/android/atservice/Debug;->LogI(Ljava/lang/String;)V

    .line 118
    invoke-direct {p0, p1}, Lcom/lge/android/atservice/MTCHandler;->handleNativeScreenCapture([B)Lcom/lge/android/atservice/MTCHandler$Status;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/android/atservice/MTCHandler;->mStatus:Lcom/lge/android/atservice/MTCHandler$Status;

    goto :goto_10

    .line 123
    :sswitch_44
    const-string/jumbo v1, "MTC_KEY_EVENT_REQ_CMD"

    invoke-static {v1}, Lcom/lge/android/atservice/Debug;->LogI(Ljava/lang/String;)V

    .line 124
    invoke-direct {p0, p1}, Lcom/lge/android/atservice/MTCHandler;->handleKeyEvent([B)Lcom/lge/android/atservice/MTCHandler$Status;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/android/atservice/MTCHandler;->mStatus:Lcom/lge/android/atservice/MTCHandler$Status;

    goto :goto_10

    .line 128
    :sswitch_51
    const-string/jumbo v1, "MTC_TOUCH_REQ_CMD"

    invoke-static {v1}, Lcom/lge/android/atservice/Debug;->LogI(Ljava/lang/String;)V

    .line 129
    invoke-direct {p0, p1}, Lcom/lge/android/atservice/MTCHandler;->handleTouch([B)Lcom/lge/android/atservice/MTCHandler$Status;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/android/atservice/MTCHandler;->mStatus:Lcom/lge/android/atservice/MTCHandler$Status;

    goto :goto_10

    .line 133
    :sswitch_5e
    const-string/jumbo v1, "MTC_FAST_KEYS_PRESS_REQ_CMD"

    invoke-static {v1}, Lcom/lge/android/atservice/Debug;->LogI(Ljava/lang/String;)V

    .line 134
    invoke-direct {p0, p1}, Lcom/lge/android/atservice/MTCHandler;->handleFastKeyPress([B)Lcom/lge/android/atservice/MTCHandler$Status;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/android/atservice/MTCHandler;->mStatus:Lcom/lge/android/atservice/MTCHandler$Status;

    goto :goto_10

    .line 138
    :sswitch_6b
    const-string/jumbo v1, "MTC_AGENT_SETUP_REQ_CMD"

    invoke-static {v1}, Lcom/lge/android/atservice/Debug;->LogI(Ljava/lang/String;)V

    .line 139
    invoke-direct {p0, p1}, Lcom/lge/android/atservice/MTCHandler;->handleAgentSetup([B)Lcom/lge/android/atservice/MTCHandler$Status;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/android/atservice/MTCHandler;->mStatus:Lcom/lge/android/atservice/MTCHandler$Status;

    goto :goto_10

    .line 143
    :sswitch_78
    const-string/jumbo v1, "MTC_PRI_DATA_REQ_CMD"

    invoke-static {v1}, Lcom/lge/android/atservice/Debug;->LogI(Ljava/lang/String;)V

    .line 144
    invoke-direct {p0, p1}, Lcom/lge/android/atservice/MTCHandler;->handlePriData([B)Lcom/lge/android/atservice/MTCHandler$Status;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/android/atservice/MTCHandler;->mStatus:Lcom/lge/android/atservice/MTCHandler$Status;

    goto :goto_10

    .line 148
    :sswitch_85
    const-string/jumbo v1, "MTC_PHONE_RESTART_REQ_CMD"

    invoke-static {v1}, Lcom/lge/android/atservice/Debug;->LogI(Ljava/lang/String;)V

    .line 149
    invoke-direct {p0, p1}, Lcom/lge/android/atservice/MTCHandler;->handlePhoneRestart([B)Lcom/lge/android/atservice/MTCHandler$Status;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/android/atservice/MTCHandler;->mStatus:Lcom/lge/android/atservice/MTCHandler$Status;

    goto/16 :goto_10

    .line 162
    :cond_93
    const/4 v1, 0x0

    return-object v1

    .line 104
    nop

    :sswitch_data_96
    .sparse-switch
        0x0 -> :sswitch_1d
        0x1 -> :sswitch_37
        0x3 -> :sswitch_44
        0x4 -> :sswitch_51
        0x10 -> :sswitch_85
        0x20 -> :sswitch_2a
        0x22 -> :sswitch_6b
        0x33 -> :sswitch_44
        0x35 -> :sswitch_5e
        0x50 -> :sswitch_78
    .end sparse-switch
.end method
