.class Lcom/lge/android/atservice/GnssDevice$Location_Listener;
.super Ljava/lang/Object;
.source "GnssDevice.java"

# interfaces
.implements Landroid/location/GpsStatus$Listener;
.implements Landroid/location/GpsStatus$NmeaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/android/atservice/GnssDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Location_Listener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/android/atservice/GnssDevice;


# direct methods
.method private constructor <init>(Lcom/lge/android/atservice/GnssDevice;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/android/atservice/GnssDevice;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/lge/android/atservice/GnssDevice$Location_Listener;->this$0:Lcom/lge/android/atservice/GnssDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/android/atservice/GnssDevice;Lcom/lge/android/atservice/GnssDevice$Location_Listener;)V
    .registers 3
    .param p1, "this$0"    # Lcom/lge/android/atservice/GnssDevice;

    .prologue
    invoke-direct {p0, p1}, Lcom/lge/android/atservice/GnssDevice$Location_Listener;-><init>(Lcom/lge/android/atservice/GnssDevice;)V

    return-void
.end method


# virtual methods
.method public onGpsStatusChanged(I)V
    .registers 4
    .param p1, "event"    # I

    .prologue
    .line 177
    packed-switch p1, :pswitch_data_2c

    .line 174
    :goto_3
    return-void

    .line 179
    :pswitch_4
    const-string/jumbo v0, "GnssDevice"

    const-string/jumbo v1, "### GPS_EVENT_STARTED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 182
    :pswitch_e
    const-string/jumbo v0, "GnssDevice"

    const-string/jumbo v1, "### GPS_EVENT_STOPPED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 185
    :pswitch_18
    const-string/jumbo v0, "GnssDevice"

    const-string/jumbo v1, "### GPS_EVENT_FIRST_FIX"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 188
    :pswitch_22
    const-string/jumbo v0, "GnssDevice"

    const-string/jumbo v1, "### GPS_EVENT_SATELLITE_STATUS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 177
    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_4
        :pswitch_e
        :pswitch_18
        :pswitch_22
    .end packed-switch
.end method

.method public onNmeaReceived(JLjava/lang/String;)V
    .registers 9
    .param p1, "timestamp"    # J
    .param p3, "nmea"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 196
    const-string/jumbo v0, "GnssDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onNmeaReceived , timestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", nmea :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const-string/jumbo v0, "$GPLGT"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 203
    const-string/jumbo v0, "T"

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    const-string/jumbo v1, "*"

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/android/atservice/GnssDevice;->-set2(Ljava/lang/String;)Ljava/lang/String;

    .line 204
    const-string/jumbo v0, "GnssDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " NMEA pasing result :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/lge/android/atservice/GnssDevice;->-get1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-static {v3}, Lcom/lge/android/atservice/GnssDevice;->-set1(Z)Z

    .line 207
    :cond_67
    const-string/jumbo v0, "$GLLGT"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 208
    const-string/jumbo v0, "T"

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    const-string/jumbo v1, "*"

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/android/atservice/GnssDevice;->-set0(Ljava/lang/String;)Ljava/lang/String;

    .line 209
    const-string/jumbo v0, "GnssDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " NMEA pasing result :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/lge/android/atservice/GnssDevice;->-get0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-static {v3}, Lcom/lge/android/atservice/GnssDevice;->-set1(Z)Z

    .line 194
    :cond_a8
    return-void
.end method
