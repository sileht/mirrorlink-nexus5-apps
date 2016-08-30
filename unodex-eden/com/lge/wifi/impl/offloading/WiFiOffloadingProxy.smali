.class public Lcom/lge/wifi/impl/offloading/WiFiOffloadingProxy;
.super Ljava/lang/Object;
.source "WiFiOffloadingProxy.java"


# static fields
.field public static final WIFIOFFLOADING_SERVICE:Ljava/lang/String; = "wifioffloading"


# instance fields
.field public final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lge/wifi/impl/offloading/IWiFiOffloading;)V
    .registers 4
    .param p1, "service"    # Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "WiFiOffloadingProxy"

    iput-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingProxy;->TAG:Ljava/lang/String;

    .line 27
    if-nez p1, :cond_11

    .line 28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "service is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_11
    return-void
.end method
