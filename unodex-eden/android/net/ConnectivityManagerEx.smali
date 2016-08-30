.class public Landroid/net/ConnectivityManagerEx;
.super Landroid/net/ConnectivityManager;
.source "ConnectivityManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ConnectivityManagerEx$Roaming;
    }
.end annotation


# static fields
.field public static final TYPE_MOBILE_ADMIN:I = 0x16

.field public static final TYPE_MOBILE_EMERGENCY:I = 0x14

.field public static final TYPE_MOBILE_VZW800:I = 0x11

.field public static final TYPE_MOBILE_VZWAPP:I = 0x10


# instance fields
.field private final mServiceEx:Landroid/net/IConnectivityManagerEx;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/IConnectivityManager;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/IConnectivityManager;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/net/ConnectivityManager;-><init>(Landroid/content/Context;Landroid/net/IConnectivityManager;)V

    .line 36
    invoke-interface {p2}, Landroid/net/IConnectivityManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityManagerEx$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManagerEx;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ConnectivityManagerEx;->mServiceEx:Landroid/net/IConnectivityManagerEx;

    .line 37
    return-void
.end method


# virtual methods
.method public ePDGHandOverStatus(I)V
    .registers 3
    .param p1, "extendedRAT"    # I

    .prologue
    .line 132
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManagerEx;->mServiceEx:Landroid/net/IConnectivityManagerEx;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManagerEx;->ePDGHandOverStatus(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 137
    :goto_5
    return-void

    .line 134
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public ePDGlisten(Landroid/net/ePDGStateListener;I)V
    .registers 5
    .param p1, "listener"    # Landroid/net/ePDGStateListener;
    .param p2, "events"    # I

    .prologue
    .line 89
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManagerEx;->mServiceEx:Landroid/net/IConnectivityManagerEx;

    iget-object v1, p1, Landroid/net/ePDGStateListener;->callback:Landroid/net/IePDGStateListener;

    invoke-interface {v0, v1, p2}, Landroid/net/IConnectivityManagerEx;->ePDGlisten(Landroid/net/IePDGStateListener;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 93
    :goto_7
    return-void

    .line 91
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method public getDebugInfo(II)[D
    .registers 4
    .param p1, "infotype"    # I
    .param p2, "itemnum"    # I

    .prologue
    .line 121
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManagerEx;->mServiceEx:Landroid/net/IConnectivityManagerEx;

    invoke-interface {v0, p1, p2}, Landroid/net/IConnectivityManagerEx;->getDebugInfo(II)[D
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    .line 123
    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getGlobalRoamingCapability()Landroid/net/ConnectivityManagerEx$Roaming;
    .registers 5

    .prologue
    .line 168
    const/4 v0, 0x0

    .line 169
    .local v0, "retValue":Landroid/net/ConnectivityManagerEx$Roaming;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/lge/internal/R$integer;->config_support_global_roaming:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 170
    .local v1, "value":I
    packed-switch v1, :pswitch_data_18

    .line 184
    :goto_e
    return-object v0

    .line 172
    :pswitch_f
    sget-object v0, Landroid/net/ConnectivityManagerEx$Roaming;->NOT_SUPPORT:Landroid/net/ConnectivityManagerEx$Roaming;

    .line 173
    goto :goto_e

    .line 175
    :pswitch_12
    sget-object v0, Landroid/net/ConnectivityManagerEx$Roaming;->WCDMA:Landroid/net/ConnectivityManagerEx$Roaming;

    .line 176
    goto :goto_e

    .line 178
    :pswitch_15
    sget-object v0, Landroid/net/ConnectivityManagerEx$Roaming;->LTE:Landroid/net/ConnectivityManagerEx$Roaming;

    .line 179
    goto :goto_e

    .line 170
    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_f
        :pswitch_12
        :pswitch_15
    .end packed-switch
.end method

.method public getLteRssi()I
    .registers 2

    .prologue
    .line 44
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManagerEx;->mServiceEx:Landroid/net/IConnectivityManagerEx;

    invoke-interface {v0}, Landroid/net/IConnectivityManagerEx;->getLteRssi()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    .line 46
    :goto_6
    return v0

    :catch_7
    move-exception v0

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getMobileDataEnabled()Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 54
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 55
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_15

    .line 57
    :try_start_9
    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 58
    .local v1, "it":Lcom/android/internal/telephony/ITelephony;
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v2

    .line 59
    .local v2, "subId":I
    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->getDataEnabled(I)Z
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_16

    move-result v3

    .line 64
    .end local v1    # "it":Lcom/android/internal/telephony/ITelephony;
    .end local v2    # "subId":I
    :cond_15
    :goto_15
    return v3

    .line 61
    :catch_16
    move-exception v4

    goto :goto_15
.end method

.method public getNetPrefer(Ljava/lang/String;)I
    .registers 3
    .param p1, "reqtype"    # Ljava/lang/String;

    .prologue
    .line 110
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManagerEx;->mServiceEx:Landroid/net/IConnectivityManagerEx;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManagerEx;->getNetPrefer(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    .line 112
    :goto_6
    return v0

    :catch_7
    move-exception v0

    const/4 v0, 0x2

    goto :goto_6
.end method

.method public setFQDN(ZLjava/lang/String;)V
    .registers 4
    .param p1, "enable"    # Z
    .param p2, "fqdn"    # Ljava/lang/String;

    .prologue
    .line 99
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManagerEx;->mServiceEx:Landroid/net/IConnectivityManagerEx;

    invoke-interface {v0, p1, p2}, Landroid/net/IConnectivityManagerEx;->setFQDN(ZLjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 103
    :goto_5
    return-void

    .line 101
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public startusingEPDGFeature(Ljava/lang/String;)I
    .registers 3
    .param p1, "feature"    # Ljava/lang/String;

    .prologue
    .line 71
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManagerEx;->mServiceEx:Landroid/net/IConnectivityManagerEx;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManagerEx;->startusingEPDGFeature(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    .line 73
    :goto_6
    return v0

    :catch_7
    move-exception v0

    const/4 v0, -0x1

    goto :goto_6
.end method

.method public stopusingEPDGFeature(Ljava/lang/String;)I
    .registers 3
    .param p1, "feature"    # Ljava/lang/String;

    .prologue
    .line 79
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManagerEx;->mServiceEx:Landroid/net/IConnectivityManagerEx;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManagerEx;->stopusingEPDGFeature(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    .line 81
    :goto_6
    return v0

    :catch_7
    move-exception v0

    const/4 v0, -0x1

    goto :goto_6
.end method
