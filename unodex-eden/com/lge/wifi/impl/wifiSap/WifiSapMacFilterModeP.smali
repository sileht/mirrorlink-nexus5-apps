.class public Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterModeP;
.super Ljava/lang/Object;
.source "WifiSapMacFilterModeP.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterModeP;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mFilterModeValue:Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterModeP$1;

    invoke-direct {v0}, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterModeP$1;-><init>()V

    sput-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterModeP;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;)V
    .registers 2
    .param p1, "filterMode"    # Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterModeP;->mFilterModeValue:Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    .line 29
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public getFilterMode()Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterModeP;->mFilterModeValue:Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterModeP;->mFilterModeValue:Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    return-void

    .line 44
    :cond_9
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterModeP;->mFilterModeValue:Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method
