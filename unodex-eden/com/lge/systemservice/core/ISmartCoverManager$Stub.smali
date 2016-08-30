.class public abstract Lcom/lge/systemservice/core/ISmartCoverManager$Stub;
.super Landroid/os/Binder;
.source "ISmartCoverManager.java"

# interfaces
.implements Lcom/lge/systemservice/core/ISmartCoverManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/core/ISmartCoverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/systemservice/core/ISmartCoverManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.systemservice.core.ISmartCoverManager"

.field static final TRANSACTION_enforceUpdateSmartCoverOpen:I = 0x6

.field static final TRANSACTION_getCoverState:I = 0x3

.field static final TRANSACTION_getCoverType:I = 0x4

.field static final TRANSACTION_getSubCoverType:I = 0x5

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_unRegisterCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.lge.systemservice.core.ISmartCoverManager"

    invoke-virtual {p0, p0, v0}, Lcom/lge/systemservice/core/ISmartCoverManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/ISmartCoverManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_4

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_3
    return-object v0

    .line 26
    :cond_4
    const-string v1, "com.lge.systemservice.core.ISmartCoverManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/lge/systemservice/core/ISmartCoverManager;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/lge/systemservice/core/ISmartCoverManager;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/lge/systemservice/core/ISmartCoverManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/systemservice/core/ISmartCoverManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
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
    const/4 v4, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_84

    .line 100
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_8
    return v4

    .line 42
    :sswitch_9
    const-string v3, "com.lge.systemservice.core.ISmartCoverManager"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 47
    :sswitch_f
    const-string v3, "com.lge.systemservice.core.ISmartCoverManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/systemservice/core/ISmartCoverCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/ISmartCoverCallback;

    move-result-object v0

    .line 51
    .local v0, "_arg0":Lcom/lge/systemservice/core/ISmartCoverCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 52
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/lge/systemservice/core/ISmartCoverManager$Stub;->registerCallback(Lcom/lge/systemservice/core/ISmartCoverCallback;I)Z

    move-result v2

    .line 53
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    if-eqz v2, :cond_2e

    move v3, v4

    :goto_2a
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    :cond_2e
    const/4 v3, 0x0

    goto :goto_2a

    .line 59
    .end local v0    # "_arg0":Lcom/lge/systemservice/core/ISmartCoverCallback;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :sswitch_30
    const-string v3, "com.lge.systemservice.core.ISmartCoverManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/systemservice/core/ISmartCoverCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/ISmartCoverCallback;

    move-result-object v0

    .line 63
    .restart local v0    # "_arg0":Lcom/lge/systemservice/core/ISmartCoverCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 64
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/lge/systemservice/core/ISmartCoverManager$Stub;->unRegisterCallback(Lcom/lge/systemservice/core/ISmartCoverCallback;I)V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 70
    .end local v0    # "_arg0":Lcom/lge/systemservice/core/ISmartCoverCallback;
    .end local v1    # "_arg1":I
    :sswitch_48
    const-string v3, "com.lge.systemservice.core.ISmartCoverManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/lge/systemservice/core/ISmartCoverManager$Stub;->getCoverState()I

    move-result v2

    .line 72
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 78
    .end local v2    # "_result":I
    :sswitch_58
    const-string v3, "com.lge.systemservice.core.ISmartCoverManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/lge/systemservice/core/ISmartCoverManager$Stub;->getCoverType()I

    move-result v2

    .line 80
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 86
    .end local v2    # "_result":I
    :sswitch_68
    const-string v3, "com.lge.systemservice.core.ISmartCoverManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/lge/systemservice/core/ISmartCoverManager$Stub;->getSubCoverType()I

    move-result v2

    .line 88
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 94
    .end local v2    # "_result":I
    :sswitch_78
    const-string v3, "com.lge.systemservice.core.ISmartCoverManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/lge/systemservice/core/ISmartCoverManager$Stub;->enforceUpdateSmartCoverOpen()V

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 38
    :sswitch_data_84
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_30
        0x3 -> :sswitch_48
        0x4 -> :sswitch_58
        0x5 -> :sswitch_68
        0x6 -> :sswitch_78
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
