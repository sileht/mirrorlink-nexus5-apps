.class public Lcom/lge/android/atservice/GnssDevice;
.super Lcom/lge/android/atservice/Device;
.source "GnssDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/android/atservice/GnssDevice$Location_Listener;,
        Lcom/lge/android/atservice/GnssDevice$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GnssDevice"

.field private static glo_result:Ljava/lang/String;

.field private static gnss_test_inprogress:Z

.field private static gps_result:Ljava/lang/String;

.field private static mLocationListener:Lcom/lge/android/atservice/GnssDevice$Location_Listener;

.field private static mLocationManager:Landroid/location/LocationManager;


# instance fields
.field private final mBroadcastReciever:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/lge/android/atservice/GnssDevice;->glo_result:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/lge/android/atservice/GnssDevice;->gps_result:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2()Lcom/lge/android/atservice/GnssDevice$Location_Listener;
    .registers 1

    sget-object v0, Lcom/lge/android/atservice/GnssDevice;->mLocationListener:Lcom/lge/android/atservice/GnssDevice$Location_Listener;

    return-object v0
.end method

.method static synthetic -get3()Landroid/location/LocationManager;
    .registers 1

    sget-object v0, Lcom/lge/android/atservice/GnssDevice;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic -set0(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    sput-object p0, Lcom/lge/android/atservice/GnssDevice;->glo_result:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic -set1(Z)Z
    .registers 1

    sput-boolean p0, Lcom/lge/android/atservice/GnssDevice;->gnss_test_inprogress:Z

    return p0
.end method

.method static synthetic -set2(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    sput-object p0, Lcom/lge/android/atservice/GnssDevice;->gps_result:Ljava/lang/String;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 21
    sput-object v1, Lcom/lge/android/atservice/GnssDevice;->mLocationListener:Lcom/lge/android/atservice/GnssDevice$Location_Listener;

    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/android/atservice/GnssDevice;->gnss_test_inprogress:Z

    .line 23
    sput-object v1, Lcom/lge/android/atservice/GnssDevice;->gps_result:Ljava/lang/String;

    .line 24
    sput-object v1, Lcom/lge/android/atservice/GnssDevice;->glo_result:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/lge/android/atservice/Device;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 26
    new-instance v0, Lcom/lge/android/atservice/GnssDevice$1;

    invoke-direct {v0, p0}, Lcom/lge/android/atservice/GnssDevice$1;-><init>(Lcom/lge/android/atservice/GnssDevice;)V

    iput-object v0, p0, Lcom/lge/android/atservice/GnssDevice;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    .line 54
    const-string/jumbo v0, "GnssDevice"

    const-string/jumbo v1, "Create GnssDevice"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iput-object p1, p0, Lcom/lge/android/atservice/GnssDevice;->mContext:Landroid/content/Context;

    .line 57
    iget-object v0, p0, Lcom/lge/android/atservice/GnssDevice;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    sput-object v0, Lcom/lge/android/atservice/GnssDevice;->mLocationManager:Landroid/location/LocationManager;

    .line 58
    new-instance v0, Lcom/lge/android/atservice/GnssDevice$Location_Listener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lge/android/atservice/GnssDevice$Location_Listener;-><init>(Lcom/lge/android/atservice/GnssDevice;Lcom/lge/android/atservice/GnssDevice$Location_Listener;)V

    sput-object v0, Lcom/lge/android/atservice/GnssDevice;->mLocationListener:Lcom/lge/android/atservice/GnssDevice$Location_Listener;

    .line 59
    return-void
.end method


# virtual methods
.method public PowerOff()I
    .registers 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/lge/android/atservice/GnssDevice;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/android/atservice/GnssDevice;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public PowerOn()I
    .registers 6

    .prologue
    .line 64
    iget-object v2, p0, Lcom/lge/android/atservice/GnssDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "gps"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 65
    .local v0, "gpsEnable":Z
    const-string/jumbo v2, "GnssDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "PowerOn : gpsEnable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 68
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    iget-object v2, p0, Lcom/lge/android/atservice/GnssDevice;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/lge/android/atservice/GnssDevice;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 71
    if-nez v0, :cond_48

    .line 72
    iget-object v2, p0, Lcom/lge/android/atservice/GnssDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "gps"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 80
    :cond_48
    const/4 v2, 0x0

    return v2
.end method

.method public getResult()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v6, 0x5

    .line 101
    const-string/jumbo v4, "GnssDevice"

    const-string/jumbo v5, "getResult : Start!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    sget-object v4, Lcom/lge/android/atservice/GnssDevice;->gps_result:Ljava/lang/String;

    if-eqz v4, :cond_72

    sget-object v4, Lcom/lge/android/atservice/GnssDevice;->glo_result:Ljava/lang/String;

    if-eqz v4, :cond_72

    .line 104
    sget-object v4, Lcom/lge/android/atservice/GnssDevice;->gps_result:Ljava/lang/String;

    const-string/jumbo v5, "[,//*]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "parseGps":[Ljava/lang/String;
    sget-object v4, Lcom/lge/android/atservice/GnssDevice;->glo_result:Ljava/lang/String;

    const-string/jumbo v5, "[,//*]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "parseGlo":[Ljava/lang/String;
    aget-object v4, v2, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 108
    .local v3, "parseGpsInt":I
    aget-object v4, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 109
    .local v1, "parseGloInt":I
    const-string/jumbo v4, "GnssDevice"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "parseGpsInt= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", parseGloInt= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v5, v3, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int/lit8 v5, v1, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 113
    .end local v0    # "parseGlo":[Ljava/lang/String;
    .end local v1    # "parseGloInt":I
    .end local v2    # "parseGps":[Ljava/lang/String;
    .end local v3    # "parseGpsInt":I
    :cond_72
    const-string/jumbo v4, "ERROR"

    return-object v4
.end method

.method public getResultAll()Ljava/lang/String;
    .registers 3

    .prologue
    .line 117
    const-string/jumbo v0, "GnssDevice"

    const-string/jumbo v1, "getResultAll "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    sget-boolean v0, Lcom/lge/android/atservice/GnssDevice;->gnss_test_inprogress:Z

    if-eqz v0, :cond_11

    .line 120
    const-string/jumbo v0, "GNSS Test In Progress"

    return-object v0

    .line 123
    :cond_11
    sget-object v0, Lcom/lge/android/atservice/GnssDevice;->gps_result:Ljava/lang/String;

    if-eqz v0, :cond_44

    sget-object v0, Lcom/lge/android/atservice/GnssDevice;->glo_result:Ljava/lang/String;

    if-eqz v0, :cond_44

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/lge/android/atservice/GnssDevice;->gps_result:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "],["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/lge/android/atservice/GnssDevice;->glo_result:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 126
    :cond_44
    const-string/jumbo v0, "ERROR"

    return-object v0
.end method

.method public start(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "Request"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 130
    const-string/jumbo v1, "GnssDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start , request ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const-string/jumbo v1, "s"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2e

    const-string/jumbo v1, "S"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4e

    .line 134
    :cond_2e
    sget-boolean v1, Lcom/lge/android/atservice/GnssDevice;->gnss_test_inprogress:Z

    if-eqz v1, :cond_3f

    .line 135
    const-string/jumbo v1, "GnssDevice"

    const-string/jumbo v2, "gnss_test_inprogress == true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const-string/jumbo v1, "GNSS TEST START FAIL"

    return-object v1

    .line 138
    :cond_3f
    sget-object v1, Lcom/lge/android/atservice/GnssDevice;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v2, "gps"

    const-string/jumbo v3, "lge.gps.extracmd.raw.airtest.enable"

    invoke-virtual {v1, v2, v3, v5}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 139
    const-string/jumbo v1, "GNSS TEST START OK"

    return-object v1

    .line 141
    :cond_4e
    const-string/jumbo v1, "e"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_60

    const-string/jumbo v1, "E"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_71

    .line 143
    :cond_60
    sget-object v1, Lcom/lge/android/atservice/GnssDevice;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v2, "gps"

    const-string/jumbo v3, "lge.gps.extracmd.raw.airtest.disable"

    invoke-virtual {v1, v2, v3, v5}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 144
    sput-boolean v4, Lcom/lge/android/atservice/GnssDevice;->gnss_test_inprogress:Z

    .line 146
    const-string/jumbo v1, "GNSS TEST END OK"

    return-object v1

    .line 150
    :cond_71
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 151
    .local v0, "mTestCnt":I
    if-nez v0, :cond_84

    .line 152
    const-string/jumbo v1, "GnssDevice"

    const-string/jumbo v2, "mTestCnt== 0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string/jumbo v1, "Invalid Test Num =0"

    return-object v1

    .line 156
    :cond_84
    sget-boolean v1, Lcom/lge/android/atservice/GnssDevice;->gnss_test_inprogress:Z

    if-eqz v1, :cond_95

    .line 157
    const-string/jumbo v1, "GnssDevice"

    const-string/jumbo v2, "gnss_test_inprogress == true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const-string/jumbo v1, "GNSS TEST START FAIL"

    return-object v1

    .line 162
    :cond_95
    sget-object v1, Lcom/lge/android/atservice/GnssDevice;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v2, "gps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "lge.gps.extracmd.raw.airtest.count#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v5}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 163
    sget-object v1, Lcom/lge/android/atservice/GnssDevice;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v2, "gps"

    const-string/jumbo v3, "lge.gps.extracmd.raw.airtest.start"

    invoke-virtual {v1, v2, v3, v5}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 164
    const/4 v1, 0x1

    sput-boolean v1, Lcom/lge/android/atservice/GnssDevice;->gnss_test_inprogress:Z

    .line 166
    const-string/jumbo v1, "GNSS TEST START OK"

    return-object v1
.end method

.method public throughJNI(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "Request"    # Ljava/lang/String;

    .prologue
    .line 90
    const-string/jumbo v1, "GnssDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "throughJNI = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 92
    .local v0, "in":[B
    invoke-static {v0}, Lcom/lge/android/atservice/LGATCMDNative;->gps_send_at_command([B)I

    move-result v1

    if-nez v1, :cond_29

    .line 93
    invoke-static {}, Lcom/lge/android/atservice/LGATCMDNative;->gps_receive_at_result()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 95
    :cond_29
    const-string/jumbo v1, "ERROR"

    return-object v1
.end method
