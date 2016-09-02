.class public Lcom/lge/android/atservice/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# static fields
.field static final DEBUG:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field public mDisplayBitsPixel:I

.field public mDisplayHeight:I

.field public mDisplayWidth:I

.field public mImei:Ljava/lang/String;

.field public mModelName:Ljava/lang/String;

.field public mPhoneNumber:Ljava/lang/String;

.field public mReleaseDate:Ljava/util/Date;

.field public mRotation:I

.field public mSoftwareVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 25
    const-string/jumbo v0, "user"

    const-string/jumbo v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    :goto_11
    sput-boolean v0, Lcom/lge/android/atservice/DeviceInfo;->DEBUG:Z

    .line 23
    return-void

    .line 25
    :cond_14
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/lge/android/atservice/DeviceInfo;->mContext:Landroid/content/Context;

    .line 42
    invoke-direct {p0}, Lcom/lge/android/atservice/DeviceInfo;->setScreenInfo()V

    .line 43
    invoke-direct {p0}, Lcom/lge/android/atservice/DeviceInfo;->setModelInfo()V

    .line 40
    return-void
.end method

.method private setModelInfo()V
    .registers 9

    .prologue
    const/4 v6, 0x3

    .line 87
    const-string/jumbo v5, "ro.product.model"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/android/atservice/DeviceInfo;->mModelName:Ljava/lang/String;

    .line 88
    const-string/jumbo v5, "lge.version.sw"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/android/atservice/DeviceInfo;->mSoftwareVersion:Ljava/lang/String;

    .line 89
    invoke-virtual {p0}, Lcom/lge/android/atservice/DeviceInfo;->getImei()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/android/atservice/DeviceInfo;->mImei:Ljava/lang/String;

    .line 90
    invoke-virtual {p0}, Lcom/lge/android/atservice/DeviceInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/android/atservice/DeviceInfo;->mPhoneNumber:Ljava/lang/String;

    .line 91
    const-string/jumbo v5, "ro.build.date"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 92
    .local v4, "fulldate":Ljava/lang/String;
    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "datesplit":[Ljava/lang/String;
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 95
    .local v0, "date":Ljava/lang/String;
    array-length v5, v1

    if-le v5, v6, :cond_e2

    .line 96
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    :goto_52
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyyMMMdd"

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 103
    .local v2, "df":Ljava/text/DateFormat;
    :try_start_5a
    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/android/atservice/DeviceInfo;->mReleaseDate:Ljava/util/Date;
    :try_end_60
    .catch Ljava/text/ParseException; {:try_start_5a .. :try_end_60} :catch_e7

    .line 109
    :goto_60
    sget-boolean v5, Lcom/lge/android/atservice/DeviceInfo;->DEBUG:Z

    if-eqz v5, :cond_e1

    .line 110
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Model Name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/android/atservice/DeviceInfo;->mModelName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 111
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Software Version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/android/atservice/DeviceInfo;->mSoftwareVersion:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 112
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "IMEI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/android/atservice/DeviceInfo;->mImei:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 113
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Phone Number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/android/atservice/DeviceInfo;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 114
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Release Date: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/android/atservice/DeviceInfo;->mReleaseDate:Ljava/util/Date;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 86
    :cond_e1
    return-void

    .line 98
    .end local v2    # "df":Ljava/text/DateFormat;
    :cond_e2
    const-string/jumbo v0, "2011JAN01"

    goto/16 :goto_52

    .line 104
    .restart local v2    # "df":Ljava/text/DateFormat;
    :catch_e7
    move-exception v3

    .line 105
    .local v3, "e":Ljava/text/ParseException;
    new-instance v5, Ljava/util/Date;

    const-wide/32 v6, 0x4d5f5ec4

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    iput-object v5, p0, Lcom/lge/android/atservice/DeviceInfo;->mReleaseDate:Ljava/util/Date;

    .line 106
    const-string/jumbo v5, "Error while parse property value ro.build.date"

    invoke-static {v5}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    goto/16 :goto_60
.end method

.method private setScreenInfo()V
    .registers 12

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    .line 47
    const/4 v5, 0x0

    .line 48
    .local v5, "width":I
    const/4 v1, 0x0

    .line 49
    .local v1, "height":I
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v5, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 50
    .local v3, "point":Landroid/graphics/Point;
    iget-object v7, p0, Lcom/lge/android/atservice/DeviceInfo;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "window"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 51
    .local v6, "wm":Landroid/view/WindowManager;
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 52
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 53
    iget v7, v3, Landroid/graphics/Point;->x:I

    iput v7, p0, Lcom/lge/android/atservice/DeviceInfo;->mDisplayWidth:I

    .line 54
    iget v7, v3, Landroid/graphics/Point;->y:I

    iput v7, p0, Lcom/lge/android/atservice/DeviceInfo;->mDisplayHeight:I

    .line 55
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v7

    iput v7, p0, Lcom/lge/android/atservice/DeviceInfo;->mRotation:I

    .line 57
    invoke-virtual {v0}, Landroid/view/Display;->getPixelFormat()I

    move-result v2

    .line 58
    .local v2, "pixelFormat":I
    const/4 v7, 0x4

    if-ne v2, v7, :cond_98

    .line 59
    const/16 v7, 0x10

    iput v7, p0, Lcom/lge/android/atservice/DeviceInfo;->mDisplayBitsPixel:I

    .line 68
    :goto_34
    iget v7, p0, Lcom/lge/android/atservice/DeviceInfo;->mRotation:I

    if-eq v7, v9, :cond_3c

    iget v7, p0, Lcom/lge/android/atservice/DeviceInfo;->mRotation:I

    if-ne v7, v10, :cond_64

    .line 69
    :cond_3c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Rotation is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/lge/android/atservice/DeviceInfo;->mRotation:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", Exchange Witdh and Height"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 70
    iget v4, p0, Lcom/lge/android/atservice/DeviceInfo;->mDisplayWidth:I

    .line 71
    .local v4, "temp":I
    iget v7, p0, Lcom/lge/android/atservice/DeviceInfo;->mDisplayHeight:I

    iput v7, p0, Lcom/lge/android/atservice/DeviceInfo;->mDisplayWidth:I

    .line 72
    iput v4, p0, Lcom/lge/android/atservice/DeviceInfo;->mDisplayHeight:I

    .line 75
    .end local v4    # "temp":I
    :cond_64
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "DisplayWidth: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/lge/android/atservice/DeviceInfo;->mDisplayWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 76
    const-string/jumbo v8, ", DisplayHeight: "

    .line 75
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 76
    iget v8, p0, Lcom/lge/android/atservice/DeviceInfo;->mDisplayHeight:I

    .line 75
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 77
    const-string/jumbo v8, ", DisplayBitsPixel: "

    .line 75
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 77
    iget v8, p0, Lcom/lge/android/atservice/DeviceInfo;->mDisplayBitsPixel:I

    .line 75
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 46
    return-void

    .line 60
    :cond_98
    if-ne v2, v10, :cond_9f

    .line 61
    const/16 v7, 0x18

    iput v7, p0, Lcom/lge/android/atservice/DeviceInfo;->mDisplayBitsPixel:I

    goto :goto_34

    .line 62
    :cond_9f
    if-ne v2, v9, :cond_a6

    .line 63
    const/16 v7, 0x20

    iput v7, p0, Lcom/lge/android/atservice/DeviceInfo;->mDisplayBitsPixel:I

    goto :goto_34

    .line 65
    :cond_a6
    const/4 v7, 0x0

    iput v7, p0, Lcom/lge/android/atservice/DeviceInfo;->mDisplayBitsPixel:I

    goto :goto_34
.end method


# virtual methods
.method public getImei()Ljava/lang/String;
    .registers 4

    .prologue
    .line 82
    iget-object v1, p0, Lcom/lge/android/atservice/DeviceInfo;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 83
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .registers 4

    .prologue
    .line 144
    iget-object v1, p0, Lcom/lge/android/atservice/DeviceInfo;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 145
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-nez v0, :cond_11

    .line 146
    const-string/jumbo v1, "000-0000-0000"

    return-object v1

    .line 149
    :cond_11
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getScreenOrientation()I
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/lge/android/atservice/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method public getScreenRotation()I
    .registers 5

    .prologue
    .line 123
    iget-object v2, p0, Lcom/lge/android/atservice/DeviceInfo;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 124
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 125
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v2

    iput v2, p0, Lcom/lge/android/atservice/DeviceInfo;->mRotation:I

    .line 126
    iget v2, p0, Lcom/lge/android/atservice/DeviceInfo;->mRotation:I

    return v2
.end method

.method public setMobileData(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .prologue
    .line 131
    iget-object v1, p0, Lcom/lge/android/atservice/DeviceInfo;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 129
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    return-void
.end method

.method public setUsbTethering(Z)I
    .registers 5
    .param p1, "enabled"    # Z

    .prologue
    .line 138
    iget-object v1, p0, Lcom/lge/android/atservice/DeviceInfo;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 139
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    move-result v1

    return v1
.end method
