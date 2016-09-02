.class public Lcom/lge/android/atservice/DeviceManager;
.super Ljava/lang/Object;
.source "DeviceManager.java"


# static fields
.field private static final CALL_LOG_OK:I = 0x7a

.field private static final CONTACTPACKAGE:Ljava/lang/String; = "com.android.contacts"

.field private static final DIAL_KEY:I = 0x79

.field private static final TAG:Ljava/lang/String; = "DeviceManager"

.field private static final global_region_code:Ljava/lang/String;

.field private static final region_code:Ljava/lang/String;

.field private static sCpuWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field mContext:Landroid/content/Context;

.field mDeviceInfo:Lcom/lge/android/atservice/DeviceInfo;

.field mDevices:[Lcom/lge/android/atservice/Device;

.field mEventInjector:Lcom/lge/android/atservice/EventInjector;

.field private mKeyCode:I

.field mPriResolver:Lcom/lge/android/atservice/PriResolver;


# direct methods
.method static synthetic -get0(Lcom/lge/android/atservice/DeviceManager;)I
    .registers 2

    iget v0, p0, Lcom/lge/android/atservice/DeviceManager;->mKeyCode:I

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    const-string/jumbo v0, "ro.build.target_country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/android/atservice/DeviceManager;->region_code:Ljava/lang/String;

    .line 46
    const-string/jumbo v0, "ro.build.sbp"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/android/atservice/DeviceManager;->global_region_code:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/lge/android/atservice/DeviceManager;->mContext:Landroid/content/Context;

    .line 92
    new-instance v1, Lcom/lge/android/atservice/DeviceInfo;

    invoke-direct {v1, p1}, Lcom/lge/android/atservice/DeviceInfo;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lge/android/atservice/DeviceManager;->mDeviceInfo:Lcom/lge/android/atservice/DeviceInfo;

    .line 93
    new-instance v1, Lcom/lge/android/atservice/EventInjector;

    invoke-direct {v1, p1}, Lcom/lge/android/atservice/EventInjector;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lge/android/atservice/DeviceManager;->mEventInjector:Lcom/lge/android/atservice/EventInjector;

    .line 94
    new-instance v1, Lcom/lge/android/atservice/PriResolver;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/lge/android/atservice/PriResolver;-><init>(Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/lge/android/atservice/DeviceManager;->mPriResolver:Lcom/lge/android/atservice/PriResolver;

    .line 96
    iget-object v1, p0, Lcom/lge/android/atservice/DeviceManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 101
    .local v0, "pm":Landroid/os/PowerManager;
    const-string/jumbo v1, "ATCMDService WakeLock"

    .line 99
    const v2, 0x3000001a

    .line 98
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/lge/android/atservice/DeviceManager;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 103
    const/16 v1, 0x28

    new-array v1, v1, [Lcom/lge/android/atservice/Device;

    iput-object v1, p0, Lcom/lge/android/atservice/DeviceManager;->mDevices:[Lcom/lge/android/atservice/Device;

    .line 90
    return-void
.end method

.method private isUTSKeyEvent(IZ)Z
    .registers 8
    .param p1, "mKey"    # I
    .param p2, "mPressed"    # Z

    .prologue
    const/4 v4, 0x1

    .line 300
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 301
    .local v0, "mUTSActivity":Landroid/content/Intent;
    const-string/jumbo v1, "DeviceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isUTSKeyEvent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    packed-switch p1, :pswitch_data_48

    .line 320
    const/4 v1, 0x0

    return v1

    .line 305
    :pswitch_25
    if-eqz p2, :cond_46

    .line 306
    const-string/jumbo v1, "com.android.contacts"

    const-string/jumbo v2, "com.android.contacts.DialtactsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 309
    const-string/jumbo v1, "Subscription"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 310
    iget-object v1, p0, Lcom/lge/android/atservice/DeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 314
    :cond_46
    :pswitch_46
    return v4

    .line 303
    nop

    :pswitch_data_48
    .packed-switch 0x79
        :pswitch_25
        :pswitch_46
    .end packed-switch
.end method

.method private registerDevices(Ljava/lang/String;I)Lcom/lge/android/atservice/Device;
    .registers 7
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "i"    # I

    .prologue
    const/4 v3, 0x0

    .line 52
    const/16 v0, 0x28

    if-lt p2, v0, :cond_20

    .line 53
    const-string/jumbo v0, "DeviceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Device number is full: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-object v3

    .line 57
    :cond_20
    const-string/jumbo v0, "UtsSmsManager"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3c

    .line 58
    iget-object v0, p0, Lcom/lge/android/atservice/DeviceManager;->mDevices:[Lcom/lge/android/atservice/Device;

    new-instance v1, Lcom/lge/android/atservice/UtsSmsManager;

    iget-object v2, p0, Lcom/lge/android/atservice/DeviceManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "UtsSmsManager"

    invoke-direct {v1, v2, v3}, Lcom/lge/android/atservice/UtsSmsManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    aput-object v1, v0, p2

    .line 87
    :goto_37
    iget-object v0, p0, Lcom/lge/android/atservice/DeviceManager;->mDevices:[Lcom/lge/android/atservice/Device;

    aget-object v0, v0, p2

    return-object v0

    .line 59
    :cond_3c
    const-string/jumbo v0, "CallDevice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_54

    .line 60
    iget-object v0, p0, Lcom/lge/android/atservice/DeviceManager;->mDevices:[Lcom/lge/android/atservice/Device;

    new-instance v1, Lcom/lge/android/atservice/CallDevice;

    iget-object v2, p0, Lcom/lge/android/atservice/DeviceManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "CallDevice"

    invoke-direct {v1, v2, v3}, Lcom/lge/android/atservice/CallDevice;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    aput-object v1, v0, p2

    goto :goto_37

    .line 61
    :cond_54
    const-string/jumbo v0, "AirplaneDevice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6c

    .line 62
    iget-object v0, p0, Lcom/lge/android/atservice/DeviceManager;->mDevices:[Lcom/lge/android/atservice/Device;

    new-instance v1, Lcom/lge/android/atservice/AirplaneDevice;

    iget-object v2, p0, Lcom/lge/android/atservice/DeviceManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "AirplaneDevice"

    invoke-direct {v1, v2, v3}, Lcom/lge/android/atservice/AirplaneDevice;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    aput-object v1, v0, p2

    goto :goto_37

    .line 63
    :cond_6c
    const-string/jumbo v0, "WlanDevice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_84

    .line 64
    iget-object v0, p0, Lcom/lge/android/atservice/DeviceManager;->mDevices:[Lcom/lge/android/atservice/Device;

    new-instance v1, Lcom/lge/android/atservice/WlanDevice;

    iget-object v2, p0, Lcom/lge/android/atservice/DeviceManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "WlanDevice"

    invoke-direct {v1, v2, v3}, Lcom/lge/android/atservice/WlanDevice;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    aput-object v1, v0, p2

    goto :goto_37

    .line 65
    :cond_84
    const-string/jumbo v0, "PatternLockClear"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9c

    .line 66
    iget-object v0, p0, Lcom/lge/android/atservice/DeviceManager;->mDevices:[Lcom/lge/android/atservice/Device;

    new-instance v1, Lcom/lge/android/atservice/PatternLockClear;

    iget-object v2, p0, Lcom/lge/android/atservice/DeviceManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "PatternLockClear"

    invoke-direct {v1, v2, v3}, Lcom/lge/android/atservice/PatternLockClear;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    aput-object v1, v0, p2

    goto :goto_37

    .line 67
    :cond_9c
    const-string/jumbo v0, "LGPwdDevice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_b4

    .line 68
    iget-object v0, p0, Lcom/lge/android/atservice/DeviceManager;->mDevices:[Lcom/lge/android/atservice/Device;

    new-instance v1, Lcom/lge/android/atservice/LGPwdDevice;

    iget-object v2, p0, Lcom/lge/android/atservice/DeviceManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "LGPwdDevice"

    invoke-direct {v1, v2, v3}, Lcom/lge/android/atservice/LGPwdDevice;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    aput-object v1, v0, p2

    goto :goto_37

    .line 69
    :cond_b4
    const-string/jumbo v0, "OSPPwdInitDevice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_cd

    .line 70
    iget-object v0, p0, Lcom/lge/android/atservice/DeviceManager;->mDevices:[Lcom/lge/android/atservice/Device;

    new-instance v1, Lcom/lge/android/atservice/OspPwdInitDevice;

    iget-object v2, p0, Lcom/lge/android/atservice/DeviceManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "OSPPwdInitDevice"

    invoke-direct {v1, v2, v3}, Lcom/lge/android/atservice/OspPwdInitDevice;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    aput-object v1, v0, p2

    goto/16 :goto_37

    .line 71
    :cond_cd
    const-string/jumbo v0, "SimPwdInitDevice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_e6

    .line 72
    iget-object v0, p0, Lcom/lge/android/atservice/DeviceManager;->mDevices:[Lcom/lge/android/atservice/Device;

    new-instance v1, Lcom/lge/android/atservice/SimPwdInitDevice;

    iget-object v2, p0, Lcom/lge/android/atservice/DeviceManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "SimPwdInitDevice"

    invoke-direct {v1, v2, v3}, Lcom/lge/android/atservice/SimPwdInitDevice;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    aput-object v1, v0, p2

    goto/16 :goto_37

    .line 73
    :cond_e6
    const-string/jumbo v0, "NFCDevice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_ff

    .line 74
    iget-object v0, p0, Lcom/lge/android/atservice/DeviceManager;->mDevices:[Lcom/lge/android/atservice/Device;

    new-instance v1, Lcom/lge/android/atservice/NFCDevice;

    iget-object v2, p0, Lcom/lge/android/atservice/DeviceManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "NFCDevice"

    invoke-direct {v1, v2, v3}, Lcom/lge/android/atservice/NFCDevice;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    aput-object v1, v0, p2

    goto/16 :goto_37

    .line 75
    :cond_ff
    const-string/jumbo v0, "SlateDevice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_118

    .line 76
    iget-object v0, p0, Lcom/lge/android/atservice/DeviceManager;->mDevices:[Lcom/lge/android/atservice/Device;

    new-instance v1, Lcom/lge/android/atservice/SlateDevice;

    iget-object v2, p0, Lcom/lge/android/atservice/DeviceManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "SlateDevice"

    invoke-direct {v1, v2, v3}, Lcom/lge/android/atservice/SlateDevice;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    aput-object v1, v0, p2

    goto/16 :goto_37

    .line 77
    :cond_118
    const-string/jumbo v0, "GnssDevice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_131

    .line 78
    iget-object v0, p0, Lcom/lge/android/atservice/DeviceManager;->mDevices:[Lcom/lge/android/atservice/Device;

    new-instance v1, Lcom/lge/android/atservice/GnssDevice;

    iget-object v2, p0, Lcom/lge/android/atservice/DeviceManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "GnssDevice"

    invoke-direct {v1, v2, v3}, Lcom/lge/android/atservice/GnssDevice;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    aput-object v1, v0, p2

    goto/16 :goto_37

    .line 79
    :cond_131
    const-string/jumbo v0, "KeypadDevice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_14a

    .line 80
    iget-object v0, p0, Lcom/lge/android/atservice/DeviceManager;->mDevices:[Lcom/lge/android/atservice/Device;

    new-instance v1, Lcom/lge/android/atservice/KeypadDevice;

    iget-object v2, p0, Lcom/lge/android/atservice/DeviceManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "KeypadDevice"

    invoke-direct {v1, v2, v3}, Lcom/lge/android/atservice/KeypadDevice;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    aput-object v1, v0, p2

    goto/16 :goto_37

    .line 82
    :cond_14a
    const-string/jumbo v0, "DeviceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "imei"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/android/atservice/DeviceManager;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const-string/jumbo v0, "DeviceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can not found device matched name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-object v3
.end method


# virtual methods
.method public Shutdown()V
    .registers 4

    .prologue
    .line 269
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 270
    .local v0, "shutdown":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.extra.KEY_CONFIRM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 271
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 272
    iget-object v1, p0, Lcom/lge/android/atservice/DeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 268
    return-void
.end method

.method public UnregisterDevices()V
    .registers 4

    .prologue
    .line 263
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x28

    if-ge v0, v1, :cond_d

    .line 264
    iget-object v1, p0, Lcom/lge/android/atservice/DeviceManager;->mDevices:[Lcom/lge/android/atservice/Device;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 263
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 261
    :cond_d
    return-void
.end method

.method public appInstalledOrNot(Ljava/lang/String;)Z
    .registers 6
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 378
    iget-object v3, p0, Lcom/lge/android/atservice/DeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 381
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x1

    :try_start_7
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_a} :catch_c

    .line 382
    const/4 v0, 0x1

    .line 387
    .local v0, "app_installed":Z
    :goto_b
    return v0

    .line 384
    .end local v0    # "app_installed":Z
    :catch_c
    move-exception v1

    .line 385
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    .restart local v0    # "app_installed":Z
    goto :goto_b
.end method

.method public disableKeygaurd()V
    .registers 5

    .prologue
    .line 324
    const/4 v1, 0x0

    .line 325
    .local v1, "mKeyguardLock":Landroid/app/KeyguardManager$KeyguardLock;
    iget-object v2, p0, Lcom/lge/android/atservice/DeviceManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 327
    .local v0, "km":Landroid/app/KeyguardManager;
    const-string/jumbo v2, "DeviceManager"

    invoke-virtual {v0, v2}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v1

    .line 329
    .local v1, "mKeyguardLock":Landroid/app/KeyguardManager$KeyguardLock;
    invoke-virtual {v1}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    .line 323
    return-void
.end method

.method public getCurrentScreenOrientation()I
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/lge/android/atservice/DeviceManager;->mDeviceInfo:Lcom/lge/android/atservice/DeviceInfo;

    invoke-virtual {v0}, Lcom/lge/android/atservice/DeviceInfo;->getScreenRotation()I

    move-result v0

    return v0
.end method

.method public getDevice(Ljava/lang/String;)Lcom/lge/android/atservice/Device;
    .registers 5
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 250
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    const/16 v1, 0x28

    if-ge v0, v1, :cond_27

    .line 251
    iget-object v1, p0, Lcom/lge/android/atservice/DeviceManager;->mDevices:[Lcom/lge/android/atservice/Device;

    aget-object v1, v1, v0

    if-nez v1, :cond_11

    .line 252
    invoke-direct {p0, p1, v0}, Lcom/lge/android/atservice/DeviceManager;->registerDevices(Ljava/lang/String;I)Lcom/lge/android/atservice/Device;

    move-result-object v1

    return-object v1

    .line 254
    :cond_11
    iget-object v1, p0, Lcom/lge/android/atservice/DeviceManager;->mDevices:[Lcom/lge/android/atservice/Device;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/lge/android/atservice/Device;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_24

    .line 255
    iget-object v1, p0, Lcom/lge/android/atservice/DeviceManager;->mDevices:[Lcom/lge/android/atservice/Device;

    aget-object v1, v1, v0

    return-object v1

    .line 250
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 258
    :cond_27
    return-object v2
.end method

.method public getDeviceProvisioned()I
    .registers 5

    .prologue
    .line 236
    const/4 v0, -0x1

    .line 237
    .local v0, "value":I
    iget-object v1, p0, Lcom/lge/android/atservice/DeviceManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_13

    .line 238
    iget-object v1, p0, Lcom/lge/android/atservice/DeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "device_provisioned"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 240
    :cond_13
    return v0
.end method

.method public getDisplayBitsPixel()I
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/lge/android/atservice/DeviceManager;->mDeviceInfo:Lcom/lge/android/atservice/DeviceInfo;

    iget v0, v0, Lcom/lge/android/atservice/DeviceInfo;->mDisplayBitsPixel:I

    return v0
.end method

.method public getDisplayHeight()I
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/lge/android/atservice/DeviceManager;->mDeviceInfo:Lcom/lge/android/atservice/DeviceInfo;

    iget v0, v0, Lcom/lge/android/atservice/DeviceInfo;->mDisplayHeight:I

    return v0
.end method

.method public getDisplayWidth()I
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lge/android/atservice/DeviceManager;->mDeviceInfo:Lcom/lge/android/atservice/DeviceInfo;

    iget v0, v0, Lcom/lge/android/atservice/DeviceInfo;->mDisplayWidth:I

    return v0
.end method

.method public getFlexString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/lge/android/atservice/DeviceManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/lge/android/atservice/Flex;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/lge/android/atservice/DeviceManager;->mDeviceInfo:Lcom/lge/android/atservice/DeviceInfo;

    invoke-virtual {v0}, Lcom/lge/android/atservice/DeviceInfo;->getImei()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModelName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/lge/android/atservice/DeviceManager;->mDeviceInfo:Lcom/lge/android/atservice/DeviceInfo;

    iget-object v0, v0, Lcom/lge/android/atservice/DeviceInfo;->mModelName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/lge/android/atservice/DeviceManager;->mDeviceInfo:Lcom/lge/android/atservice/DeviceInfo;

    invoke-virtual {v0}, Lcom/lge/android/atservice/DeviceInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriString(ILjava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "index"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 281
    iget-object v2, p0, Lcom/lge/android/atservice/DeviceManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "FLEX_MNC_CODE"

    invoke-static {v2, v3}, Lcom/lge/android/atservice/Flex;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 282
    .local v1, "mnc":Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/android/atservice/DeviceManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "FLEX_MCC_CODE"

    invoke-static {v2, v3}, Lcom/lge/android/atservice/Flex;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, "mcc":Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/android/atservice/DeviceManager;->mPriResolver:Lcom/lge/android/atservice/PriResolver;

    invoke-virtual {v2, p1, p2, v1, v0}, Lcom/lge/android/atservice/PriResolver;->getString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getReleaseDate()Ljava/util/Date;
    .registers 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/lge/android/atservice/DeviceManager;->mDeviceInfo:Lcom/lge/android/atservice/DeviceInfo;

    iget-object v0, v0, Lcom/lge/android/atservice/DeviceInfo;->mReleaseDate:Ljava/util/Date;

    return-object v0
.end method

.method public getSoftwareVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/lge/android/atservice/DeviceManager;->mDeviceInfo:Lcom/lge/android/atservice/DeviceInfo;

    iget-object v0, v0, Lcom/lge/android/atservice/DeviceInfo;->mSoftwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public injectKey(II)V
    .registers 4
    .param p1, "action"    # I
    .param p2, "keycode"    # I

    .prologue
    .line 182
    if-gez p2, :cond_4

    .line 183
    add-int/lit16 p2, p2, 0x100

    .line 186
    :cond_4
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/lge/android/atservice/DeviceManager;->isUTSKeyEvent(IZ)Z

    move-result v0

    if-nez v0, :cond_10

    .line 187
    iget-object v0, p0, Lcom/lge/android/atservice/DeviceManager;->mEventInjector:Lcom/lge/android/atservice/EventInjector;

    invoke-virtual {v0, p1, p2}, Lcom/lge/android/atservice/EventInjector;->generateKey(II)V

    .line 181
    :cond_10
    return-void
.end method

.method public injectKeyDown(I)V
    .registers 5
    .param p1, "keycode"    # I

    .prologue
    .line 128
    if-gez p1, :cond_4

    .line 129
    add-int/lit16 p1, p1, 0x100

    .line 131
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Key Down  Inject :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 133
    iput p1, p0, Lcom/lge/android/atservice/DeviceManager;->mKeyCode:I

    .line 134
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/lge/android/atservice/DeviceManager;->isUTSKeyEvent(IZ)Z

    move-result v1

    if-nez v1, :cond_31

    .line 135
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lge/android/atservice/DeviceManager$1;

    invoke-direct {v1, p0}, Lcom/lge/android/atservice/DeviceManager$1;-><init>(Lcom/lge/android/atservice/DeviceManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 140
    .local v0, "mThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 127
    .end local v0    # "mThread":Ljava/lang/Thread;
    :cond_31
    return-void
.end method

.method public injectKeyDownUp(I)V
    .registers 5
    .param p1, "keycode"    # I

    .prologue
    .line 164
    if-gez p1, :cond_4

    .line 165
    add-int/lit16 p1, p1, 0x100

    .line 167
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Short Key Inject :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 168
    iput p1, p0, Lcom/lge/android/atservice/DeviceManager;->mKeyCode:I

    .line 170
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/lge/android/atservice/DeviceManager;->isUTSKeyEvent(IZ)Z

    move-result v1

    if-nez v1, :cond_31

    .line 171
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lge/android/atservice/DeviceManager$3;

    invoke-direct {v1, p0}, Lcom/lge/android/atservice/DeviceManager$3;-><init>(Lcom/lge/android/atservice/DeviceManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 177
    .local v0, "mThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 163
    .end local v0    # "mThread":Ljava/lang/Thread;
    :cond_31
    return-void
.end method

.method public injectKeyUp(I)V
    .registers 6
    .param p1, "keycode"    # I

    .prologue
    const/4 v3, 0x0

    .line 145
    if-gez p1, :cond_5

    .line 146
    add-int/lit16 p1, p1, 0x100

    .line 148
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Key Up Inject :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 150
    iput p1, p0, Lcom/lge/android/atservice/DeviceManager;->mKeyCode:I

    .line 153
    invoke-direct {p0, p1, v3}, Lcom/lge/android/atservice/DeviceManager;->isUTSKeyEvent(IZ)Z

    move-result v1

    if-nez v1, :cond_31

    .line 154
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lge/android/atservice/DeviceManager$2;

    invoke-direct {v1, p0}, Lcom/lge/android/atservice/DeviceManager$2;-><init>(Lcom/lge/android/atservice/DeviceManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 159
    .local v0, "mThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 144
    .end local v0    # "mThread":Ljava/lang/Thread;
    :cond_31
    return-void
.end method

.method public injectTouch(III)V
    .registers 9
    .param p1, "action"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v3, 0x2

    .line 192
    move v0, p2

    .line 193
    .local v0, "xx":I
    move v1, p3

    .line 195
    .local v1, "yy":I
    iget-object v2, p0, Lcom/lge/android/atservice/DeviceManager;->mDeviceInfo:Lcom/lge/android/atservice/DeviceInfo;

    invoke-virtual {v2}, Lcom/lge/android/atservice/DeviceInfo;->getScreenOrientation()I

    move-result v2

    if-ne v2, v3, :cond_1e

    const/16 v2, 0x14

    if-eq p1, v2, :cond_1e

    if-eq p1, v3, :cond_1e

    .line 196
    move p2, v1

    .line 197
    iget-object v2, p0, Lcom/lge/android/atservice/DeviceManager;->mDeviceInfo:Lcom/lge/android/atservice/DeviceInfo;

    iget v2, v2, Lcom/lge/android/atservice/DeviceInfo;->mDisplayWidth:I

    sub-int p3, v2, v0

    .line 198
    const-string/jumbo v2, "ScreenOrientation is Landscape!"

    invoke-static {v2}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 201
    :cond_1e
    iget-object v2, p0, Lcom/lge/android/atservice/DeviceManager;->mEventInjector:Lcom/lge/android/atservice/EventInjector;

    int-to-float v3, p2

    int-to-float v4, p3

    invoke-virtual {v2, p1, v3, v4}, Lcom/lge/android/atservice/EventInjector;->generateTouch(IFF)V

    .line 191
    return-void
.end method

.method public injectTouchDownUp(II)V
    .registers 9
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 205
    move v0, p1

    .line 206
    .local v0, "xx":I
    move v1, p2

    .line 208
    .local v1, "yy":I
    iget-object v2, p0, Lcom/lge/android/atservice/DeviceManager;->mDeviceInfo:Lcom/lge/android/atservice/DeviceInfo;

    invoke-virtual {v2}, Lcom/lge/android/atservice/DeviceInfo;->getScreenOrientation()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_18

    .line 209
    move p1, v1

    .line 210
    iget-object v2, p0, Lcom/lge/android/atservice/DeviceManager;->mDeviceInfo:Lcom/lge/android/atservice/DeviceInfo;

    iget v2, v2, Lcom/lge/android/atservice/DeviceInfo;->mDisplayWidth:I

    sub-int p2, v2, v0

    .line 211
    const-string/jumbo v2, "ScreenOrientation is Landscape!"

    invoke-static {v2}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 214
    :cond_18
    iget-object v2, p0, Lcom/lge/android/atservice/DeviceManager;->mEventInjector:Lcom/lge/android/atservice/EventInjector;

    int-to-float v3, p1

    int-to-float v4, p2

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3, v4}, Lcom/lge/android/atservice/EventInjector;->generateTouch(IFF)V

    .line 215
    iget-object v2, p0, Lcom/lge/android/atservice/DeviceManager;->mEventInjector:Lcom/lge/android/atservice/EventInjector;

    int-to-float v3, p1

    int-to-float v4, p2

    const/4 v5, 0x1

    invoke-virtual {v2, v5, v3, v4}, Lcom/lge/android/atservice/EventInjector;->generateTouch(IFF)V

    .line 204
    return-void
.end method

.method public reboot(Ljava/lang/String;)V
    .registers 5
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 276
    iget-object v1, p0, Lcom/lge/android/atservice/DeviceManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 277
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0, p1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method public sendOsUpNotification(Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "noti_ticker"    # Ljava/lang/String;
    .param p2, "noti_sub_ticker"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 333
    iget-object v6, p0, Lcom/lge/android/atservice/DeviceManager;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 334
    .local v3, "notificationManager":Landroid/app/NotificationManager;
    const/4 v5, 0x0

    .line 335
    .local v5, "uri":Landroid/net/Uri;
    const/4 v0, 0x0

    .line 337
    .local v0, "intent":Landroid/content/Intent;
    sget-object v6, Lcom/lge/android/atservice/DeviceManager;->region_code:Ljava/lang/String;

    const-string/jumbo v7, "KR"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6d

    .line 338
    const-string/jumbo v6, "http://www.lgmobile.co.kr/lgmobile/mobile/news/retrieveNewsDetailNew.dev?listType=&newsType=noti&nticFlag=N&queryNoticeSeq=277"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 339
    .local v5, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v6, "android.intent.action.VIEW"

    invoke-direct {v0, v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 359
    .local v0, "intent":Landroid/content/Intent;
    :cond_28
    :goto_28
    iget-object v6, p0, Lcom/lge/android/atservice/DeviceManager;->mContext:Landroid/content/Context;

    const/high16 v7, 0x8000000

    invoke-static {v6, v9, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 360
    .local v4, "pendingIntent":Landroid/app/PendingIntent;
    const/4 v2, 0x0

    .line 362
    .local v2, "notification":Landroid/app/Notification;
    const v1, 0x7f020001

    .line 364
    .local v1, "noti_icon":I
    new-instance v6, Landroid/app/Notification$BigTextStyle;

    new-instance v7, Landroid/app/Notification$Builder;

    iget-object v8, p0, Lcom/lge/android/atservice/DeviceManager;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v6, p2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v2

    .line 372
    .local v2, "notification":Landroid/app/Notification;
    iget v6, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x20

    iput v6, v2, Landroid/app/Notification;->flags:I

    .line 373
    iget v6, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v2, Landroid/app/Notification;->flags:I

    .line 374
    iget-object v6, p0, Lcom/lge/android/atservice/DeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6, p1, p2, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 375
    invoke-virtual {v3, v9, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 332
    return-void

    .line 340
    .end local v1    # "noti_icon":I
    .end local v2    # "notification":Landroid/app/Notification;
    .end local v4    # "pendingIntent":Landroid/app/PendingIntent;
    .local v0, "intent":Landroid/content/Intent;
    .local v5, "uri":Landroid/net/Uri;
    :cond_6d
    sget-object v6, Lcom/lge/android/atservice/DeviceManager;->global_region_code:Ljava/lang/String;

    const-string/jumbo v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a6

    .line 341
    const-string/jumbo v6, "http://dyk.lgmobile.com/dyk/osupgrade/mosu.dev"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 342
    .local v5, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v6, "android.intent.action.VIEW"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 343
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "text/html"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 345
    const-string/jumbo v6, "com.android.chrome"

    invoke-virtual {p0, v6}, Lcom/lge/android/atservice/DeviceManager;->appInstalledOrNot(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_28

    .line 346
    const-string/jumbo v6, "Chrome is installed!!"

    invoke-static {v6}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 347
    const-string/jumbo v6, "com.android.chrome"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_28

    .line 350
    .local v0, "intent":Landroid/content/Intent;
    .local v5, "uri":Landroid/net/Uri;
    :cond_a6
    const-string/jumbo v6, "http://www.lge.com"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 351
    .local v5, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v6, "android.intent.action.VIEW"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 352
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "text/html"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 354
    const-string/jumbo v6, "com.android.chrome"

    invoke-virtual {p0, v6}, Lcom/lge/android/atservice/DeviceManager;->appInstalledOrNot(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_28

    .line 355
    const-string/jumbo v6, "Chrome is installed!"

    invoke-static {v6}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 356
    const-string/jumbo v6, "com.android.chrome"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_28
.end method

.method public setMobileData(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 292
    iget-object v0, p0, Lcom/lge/android/atservice/DeviceManager;->mDeviceInfo:Lcom/lge/android/atservice/DeviceInfo;

    invoke-virtual {v0, p1}, Lcom/lge/android/atservice/DeviceInfo;->setMobileData(Z)V

    .line 291
    return-void
.end method

.method public setUsbTethering(Z)I
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 296
    iget-object v0, p0, Lcom/lge/android/atservice/DeviceManager;->mDeviceInfo:Lcom/lge/android/atservice/DeviceInfo;

    invoke-virtual {v0, p1}, Lcom/lge/android/atservice/DeviceInfo;->setUsbTethering(Z)I

    move-result v0

    return v0
.end method

.method public wakeup()V
    .registers 5

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/lge/android/atservice/DeviceManager;->disableKeygaurd()V

    .line 124
    sget-object v0, Lcom/lge/android/atservice/DeviceManager;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 122
    return-void
.end method
