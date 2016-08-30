.class public abstract Lcom/lge/systemservice/core/IArtWindowService$Stub;
.super Landroid/os/Binder;
.source "IArtWindowService.java"

# interfaces
.implements Lcom/lge/systemservice/core/IArtWindowService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/core/IArtWindowService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/systemservice/core/IArtWindowService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.systemservice.core.IArtWindowService"

.field static final TRANSACTION_getKeycodeState:I = 0x7

.field static final TRANSACTION_getViewBinder:I = 0x2

.field static final TRANSACTION_getViewBinderCount:I = 0x4

.field static final TRANSACTION_getViewBinderTitle:I = 0x3

.field static final TRANSACTION_getViewRootBinder:I = 0x1

.field static final TRANSACTION_registerInputMonitor:I = 0x5

.field static final TRANSACTION_unregisterInputMonitor:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.lge.systemservice.core.IArtWindowService"

    invoke-virtual {p0, p0, v0}, Lcom/lge/systemservice/core/IArtWindowService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/IArtWindowService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 28
    if-nez p0, :cond_4

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_3
    return-object v0

    .line 31
    :cond_4
    const-string v1, "com.lge.systemservice.core.IArtWindowService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/lge/systemservice/core/IArtWindowService;

    if-eqz v1, :cond_13

    .line 33
    check-cast v0, Lcom/lge/systemservice/core/IArtWindowService;

    goto :goto_3

    .line 35
    :cond_13
    new-instance v0, Lcom/lge/systemservice/core/IArtWindowService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/systemservice/core/IArtWindowService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
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
    const/4 v2, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_a8

    .line 127
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_8
    return v2

    .line 47
    :sswitch_9
    const-string v3, "com.lge.systemservice.core.IArtWindowService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 52
    :sswitch_f
    const-string v3, "com.lge.systemservice.core.IArtWindowService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/lge/systemservice/core/IArtWindowService$Stub;->getViewRootBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 54
    .local v1, "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_8

    .line 60
    .end local v1    # "_result":Landroid/os/IBinder;
    :sswitch_1f
    const-string v3, "com.lge.systemservice.core.IArtWindowService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 63
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IArtWindowService$Stub;->getViewBinder(I)Landroid/os/IBinder;

    move-result-object v1

    .line 64
    .restart local v1    # "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_8

    .line 70
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/os/IBinder;
    :sswitch_33
    const-string v3, "com.lge.systemservice.core.IArtWindowService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 73
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IArtWindowService$Stub;->getViewBinderTitle(I)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 80
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_47
    const-string v3, "com.lge.systemservice.core.IArtWindowService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/lge/systemservice/core/IArtWindowService$Stub;->getViewBinderCount()I

    move-result v1

    .line 82
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 88
    .end local v1    # "_result":I
    :sswitch_57
    const-string v3, "com.lge.systemservice.core.IArtWindowService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IArtWindowService$Stub;->registerInputMonitor(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v1

    .line 92
    .local v1, "_result":Landroid/view/InputChannel;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    if-eqz v1, :cond_70

    .line 94
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    invoke-virtual {v1, p3, v2}, Landroid/view/InputChannel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8

    .line 98
    :cond_70
    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 104
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Landroid/view/InputChannel;
    :sswitch_75
    const-string v3, "com.lge.systemservice.core.IArtWindowService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_90

    .line 107
    sget-object v3, Landroid/view/InputChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InputChannel;

    .line 112
    .local v0, "_arg0":Landroid/view/InputChannel;
    :goto_88
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IArtWindowService$Stub;->unregisterInputMonitor(Landroid/view/InputChannel;)V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 110
    .end local v0    # "_arg0":Landroid/view/InputChannel;
    :cond_90
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/view/InputChannel;
    goto :goto_88

    .line 118
    .end local v0    # "_arg0":Landroid/view/InputChannel;
    :sswitch_92
    const-string v3, "com.lge.systemservice.core.IArtWindowService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 121
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IArtWindowService$Stub;->getKeycodeState(I)I

    move-result v1

    .line 122
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    .line 43
    nop

    :sswitch_data_a8
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_1f
        0x3 -> :sswitch_33
        0x4 -> :sswitch_47
        0x5 -> :sswitch_57
        0x6 -> :sswitch_75
        0x7 -> :sswitch_92
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
