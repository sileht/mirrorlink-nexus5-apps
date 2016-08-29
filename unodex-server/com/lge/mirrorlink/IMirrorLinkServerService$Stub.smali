.class public abstract Lcom/lge/mirrorlink/IMirrorLinkServerService$Stub;
.super Landroid/os/Binder;
.source "IMirrorLinkServerService.java"

# interfaces
.implements Lcom/lge/mirrorlink/IMirrorLinkServerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mirrorlink/IMirrorLinkServerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mirrorlink/IMirrorLinkServerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.mirrorlink.IMirrorLinkServerService"

.field static final TRANSACTION_checkAppCertRevocation:I = 0x5

.field static final TRANSACTION_checkAppDevCertRevocation:I = 0x6

.field static final TRANSACTION_getBaseCertifiedAppList:I = 0x7

.field static final TRANSACTION_getDeviceName:I = 0x2

.field static final TRANSACTION_getDriveCertifiedAppList:I = 0x8

.field static final TRANSACTION_setDeveloperID:I = 0x4

.field static final TRANSACTION_setDeviceName:I = 0x1

.field static final TRANSACTION_ssdpAlive:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "com.lge.mirrorlink.IMirrorLinkServerService"

    invoke-virtual {p0, p0, v0}, Lcom/lge/mirrorlink/IMirrorLinkServerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/mirrorlink/IMirrorLinkServerService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 23
    if-nez p0, :cond_4

    .line 24
    return-object v1

    .line 26
    :cond_4
    const-string/jumbo v1, "com.lge.mirrorlink.IMirrorLinkServerService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/lge/mirrorlink/IMirrorLinkServerService;

    if-eqz v1, :cond_14

    .line 28
    check-cast v0, Lcom/lge/mirrorlink/IMirrorLinkServerService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 30
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/lge/mirrorlink/IMirrorLinkServerService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/lge/mirrorlink/IMirrorLinkServerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_ac

    .line 119
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    .line 42
    :sswitch_a
    const-string/jumbo v3, "com.lge.mirrorlink.IMirrorLinkServerService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    return v4

    .line 47
    :sswitch_11
    const-string/jumbo v5, "com.lge.mirrorlink.IMirrorLinkServerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/mirrorlink/IMirrorLinkServerService$Stub;->setDeviceName(Ljava/lang/String;)Z

    move-result v2

    .line 51
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    if-eqz v2, :cond_25

    move v3, v4

    :cond_25
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    return v4

    .line 57
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :sswitch_29
    const-string/jumbo v3, "com.lge.mirrorlink.IMirrorLinkServerService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/lge/mirrorlink/IMirrorLinkServerService$Stub;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    return v4

    .line 65
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_3a
    const-string/jumbo v5, "com.lge.mirrorlink.IMirrorLinkServerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/lge/mirrorlink/IMirrorLinkServerService$Stub;->ssdpAlive()Z

    move-result v2

    .line 67
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    if-eqz v2, :cond_4a

    move v3, v4

    :cond_4a
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    return v4

    .line 73
    .end local v2    # "_result":Z
    :sswitch_4e
    const-string/jumbo v3, "com.lge.mirrorlink.IMirrorLinkServerService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 76
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/mirrorlink/IMirrorLinkServerService$Stub;->setDeveloperID(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    return v4

    .line 82
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_5f
    const-string/jumbo v3, "com.lge.mirrorlink.IMirrorLinkServerService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 85
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/mirrorlink/IMirrorLinkServerService$Stub;->checkAppCertRevocation(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    return v4

    .line 91
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_70
    const-string/jumbo v3, "com.lge.mirrorlink.IMirrorLinkServerService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 94
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/mirrorlink/IMirrorLinkServerService$Stub;->checkAppDevCertRevocation(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    return v4

    .line 100
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_81
    const-string/jumbo v3, "com.lge.mirrorlink.IMirrorLinkServerService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 103
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/mirrorlink/IMirrorLinkServerService$Stub;->getBaseCertifiedAppList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    return v4

    .line 110
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_96
    const-string/jumbo v3, "com.lge.mirrorlink.IMirrorLinkServerService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 113
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/mirrorlink/IMirrorLinkServerService$Stub;->getDriveCertifiedAppList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 114
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    return v4

    .line 38
    nop

    :sswitch_data_ac
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_29
        0x3 -> :sswitch_3a
        0x4 -> :sswitch_4e
        0x5 -> :sswitch_5f
        0x6 -> :sswitch_70
        0x7 -> :sswitch_81
        0x8 -> :sswitch_96
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
