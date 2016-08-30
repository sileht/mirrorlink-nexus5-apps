.class public abstract Lcom/lge/dockservice/IBaseDockWindow$Stub;
.super Landroid/os/Binder;
.source "IBaseDockWindow.java"

# interfaces
.implements Lcom/lge/dockservice/IBaseDockWindow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/dockservice/IBaseDockWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/dockservice/IBaseDockWindow$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.dockservice.IBaseDockWindow"

.field static final TRANSACTION_getAppName:I = 0x3

.field static final TRANSACTION_getClientRect:I = 0x4

.field static final TRANSACTION_isInDockArea:I = 0x5

.field static final TRANSACTION_onFinishingUndockAt:I = 0x2

.field static final TRANSACTION_updateDockState:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.lge.dockservice.IBaseDockWindow"

    invoke-virtual {p0, p0, v0}, Lcom/lge/dockservice/IBaseDockWindow$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/dockservice/IBaseDockWindow;
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
    const-string v1, "com.lge.dockservice.IBaseDockWindow"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/lge/dockservice/IBaseDockWindow;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/lge/dockservice/IBaseDockWindow;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/lge/dockservice/IBaseDockWindow$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/dockservice/IBaseDockWindow$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_7e

    .line 103
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_8
    return v3

    .line 42
    :sswitch_9
    const-string v4, "com.lge.dockservice.IBaseDockWindow"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 47
    :sswitch_f
    const-string v4, "com.lge.dockservice.IBaseDockWindow"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 50
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/dockservice/IBaseDockWindow$Stub;->updateDockState(I)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 56
    .end local v0    # "_arg0":I
    :sswitch_1f
    const-string v4, "com.lge.dockservice.IBaseDockWindow"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 60
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 61
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/lge/dockservice/IBaseDockWindow$Stub;->onFinishingUndockAt(II)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 67
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_33
    const-string v4, "com.lge.dockservice.IBaseDockWindow"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/lge/dockservice/IBaseDockWindow$Stub;->getAppName()Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 75
    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_43
    const-string v4, "com.lge.dockservice.IBaseDockWindow"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/lge/dockservice/IBaseDockWindow$Stub;->getClientRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 77
    .local v2, "_result":Landroid/graphics/Rect;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    if-eqz v2, :cond_58

    .line 79
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    invoke-virtual {v2, p3, v3}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8

    .line 83
    :cond_58
    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 89
    .end local v2    # "_result":Landroid/graphics/Rect;
    :sswitch_5d
    const-string v4, "com.lge.dockservice.IBaseDockWindow"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7b

    .line 92
    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 97
    .local v0, "_arg0":Landroid/graphics/Rect;
    :goto_70
    invoke-virtual {p0, v0}, Lcom/lge/dockservice/IBaseDockWindow$Stub;->isInDockArea(Landroid/graphics/Rect;)I

    move-result v2

    .line 98
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 95
    .end local v0    # "_arg0":Landroid/graphics/Rect;
    .end local v2    # "_result":I
    :cond_7b
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/graphics/Rect;
    goto :goto_70

    .line 38
    nop

    :sswitch_data_7e
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_1f
        0x3 -> :sswitch_33
        0x4 -> :sswitch_43
        0x5 -> :sswitch_5d
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
