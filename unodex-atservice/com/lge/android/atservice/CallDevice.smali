.class public Lcom/lge/android/atservice/CallDevice;
.super Lcom/lge/android/atservice/Device;
.source "CallDevice.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private telephonyService:Lcom/android/internal/telephony/ITelephony;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/lge/android/atservice/Device;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lcom/lge/android/atservice/CallDevice;->mContext:Landroid/content/Context;

    .line 23
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/android/atservice/CallDevice;->telephonyService:Lcom/android/internal/telephony/ITelephony;

    .line 20
    return-void
.end method


# virtual methods
.method public answerCall()V
    .registers 4

    .prologue
    .line 35
    iget-object v1, p0, Lcom/lge/android/atservice/CallDevice;->telephonyService:Lcom/android/internal/telephony/ITelephony;

    if-eqz v1, :cond_23

    .line 37
    :try_start_4
    iget-object v1, p0, Lcom/lge/android/atservice/CallDevice;->telephonyService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->answerRingingCall()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 34
    :goto_9
    return-void

    .line 38
    :catch_a
    move-exception v0

    .line 39
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ITelephony threw RemoteException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    goto :goto_9

    .line 42
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_23
    const-string/jumbo v1, "Error : telephonyService is null."

    invoke-static {v1}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public endCall()V
    .registers 4

    .prologue
    .line 47
    iget-object v1, p0, Lcom/lge/android/atservice/CallDevice;->telephonyService:Lcom/android/internal/telephony/ITelephony;

    if-eqz v1, :cond_23

    .line 49
    :try_start_4
    iget-object v1, p0, Lcom/lge/android/atservice/CallDevice;->telephonyService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 46
    :goto_9
    return-void

    .line 50
    :catch_a
    move-exception v0

    .line 51
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ITelephony threw RemoteException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    goto :goto_9

    .line 54
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_23
    const-string/jumbo v1, "Error : telephonyService is null."

    invoke-static {v1}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public sendCall([B)V
    .registers 7
    .param p1, "mPhoneNumber"    # [B

    .prologue
    .line 27
    const-string/jumbo v2, "sendCall : Start!!!"

    invoke-static {v2}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 28
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    .line 29
    .local v1, "mPhoneNumberString":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.CALL_PRIVILEGED"

    const-string/jumbo v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 30
    .local v0, "mIntent":Landroid/content/Intent;
    const/high16 v2, 0x10800000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 31
    iget-object v2, p0, Lcom/lge/android/atservice/CallDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 26
    return-void
.end method
