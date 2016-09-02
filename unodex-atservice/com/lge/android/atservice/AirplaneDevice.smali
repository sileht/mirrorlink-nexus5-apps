.class public Lcom/lge/android/atservice/AirplaneDevice;
.super Lcom/lge/android/atservice/Device;
.source "AirplaneDevice.java"


# static fields
.field public static final FLIGHT_MODE_FAIL:B = 0x32t

.field public static final FLIGHT_MODE_OFF:B = 0x30t

.field public static final FLIGHT_MODE_ON:B = 0x31t

.field public static final SLEEP_MODE_FAIL:B = 0x32t

.field public static final SLEEP_MODE_OFF:B = 0x30t

.field public static final SLEEP_MODE_ON:B = 0x31t


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFlightModeStatus:B

.field private mSleepModeStatus:B

.field private mValues:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deviceName"    # Ljava/lang/String;

    .prologue
    const/16 v0, 0x30

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/lge/android/atservice/Device;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 34
    iput-byte v0, p0, Lcom/lge/android/atservice/AirplaneDevice;->mFlightModeStatus:B

    .line 35
    iput-byte v0, p0, Lcom/lge/android/atservice/AirplaneDevice;->mSleepModeStatus:B

    .line 36
    iput-object p1, p0, Lcom/lge/android/atservice/AirplaneDevice;->mContext:Landroid/content/Context;

    .line 37
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/lge/android/atservice/AirplaneDevice;->mValues:[F

    .line 32
    return-void
.end method

.method private getAirplaneModeStatus()B
    .registers 2

    .prologue
    .line 75
    iget-byte v0, p0, Lcom/lge/android/atservice/AirplaneDevice;->mFlightModeStatus:B

    return v0
.end method


# virtual methods
.method public getAirplaneModeStatus([B)I
    .registers 6
    .param p1, "response"    # [B

    .prologue
    const/4 v3, 0x0

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .local v1, "resultBuilder":Ljava/lang/StringBuilder;
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    iget-byte v2, p0, Lcom/lge/android/atservice/AirplaneDevice;->mFlightModeStatus:B

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v3, v2, p1, v3}, Ljava/lang/String;->getBytes(II[BI)V

    .line 93
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    return v2
.end method

.method public getAirplaneModeStatusForSLATE()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 80
    iget-object v1, p0, Lcom/lge/android/atservice/AirplaneDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method public getValues([B)I
    .registers 7
    .param p1, "response"    # [B

    .prologue
    const/4 v4, 0x0

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .local v1, "resultBuilder":Ljava/lang/StringBuilder;
    iget-byte v2, p0, Lcom/lge/android/atservice/AirplaneDevice;->mFlightModeStatus:B

    const/16 v3, 0x31

    if-ne v2, v3, :cond_22

    .line 105
    const-string/jumbo v2, "[1] FLIGHT Mode On"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    :goto_12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v4, v2, p1, v4}, Ljava/lang/String;->getBytes(II[BI)V

    .line 113
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    return v2

    .line 107
    .end local v0    # "result":Ljava/lang/String;
    :cond_22
    const-string/jumbo v2, "[0] FLIGHT Mode Off"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12
.end method

.method public getValues()[F
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/lge/android/atservice/AirplaneDevice;->mValues:[F

    return-object v0
.end method

.method public isAirplaneModeOn(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 45
    iget-object v1, p0, Lcom/lge/android/atservice/AirplaneDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_18

    const/4 v0, 0x1

    .line 47
    .local v0, "rc":Z
    :goto_11
    if-eqz v0, :cond_1a

    .line 48
    const/16 v1, 0x31

    iput-byte v1, p0, Lcom/lge/android/atservice/AirplaneDevice;->mFlightModeStatus:B

    .line 41
    :goto_17
    return-void

    .line 45
    .end local v0    # "rc":Z
    :cond_18
    const/4 v0, 0x0

    .restart local v0    # "rc":Z
    goto :goto_11

    .line 50
    :cond_1a
    const/16 v1, 0x30

    iput-byte v1, p0, Lcom/lge/android/atservice/AirplaneDevice;->mFlightModeStatus:B

    goto :goto_17
.end method

.method public setAirplaneModeOn(I)V
    .registers 7
    .param p1, "enable"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 57
    if-ne p1, v4, :cond_28

    .line 58
    iget-object v1, p0, Lcom/lge/android/atservice/AirplaneDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "airplane_mode_on"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 60
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 62
    iget-object v1, p0, Lcom/lge/android/atservice/AirplaneDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 63
    const/16 v1, 0x31

    iput-byte v1, p0, Lcom/lge/android/atservice/AirplaneDevice;->mFlightModeStatus:B

    .line 55
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_27
    :goto_27
    return-void

    .line 64
    :cond_28
    if-nez p1, :cond_27

    .line 65
    iget-object v1, p0, Lcom/lge/android/atservice/AirplaneDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 67
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 69
    iget-object v1, p0, Lcom/lge/android/atservice/AirplaneDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 70
    const/16 v1, 0x30

    iput-byte v1, p0, Lcom/lge/android/atservice/AirplaneDevice;->mFlightModeStatus:B

    goto :goto_27
.end method

.method public sleepModeOn(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 118
    const-string/jumbo v1, "sleepModeOn is called"

    invoke-static {v1}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lcom/lge/android/atservice/AirplaneDevice;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 120
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 116
    return-void
.end method
