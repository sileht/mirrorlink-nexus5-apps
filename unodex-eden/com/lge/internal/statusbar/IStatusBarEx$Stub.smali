.class public abstract Lcom/lge/internal/statusbar/IStatusBarEx$Stub;
.super Landroid/os/Binder;
.source "IStatusBarEx.java"

# interfaces
.implements Lcom/lge/internal/statusbar/IStatusBarEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/internal/statusbar/IStatusBarEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/internal/statusbar/IStatusBarEx$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.internal.statusbar.IStatusBarEx"

.field static final TRANSACTION_disableNaviBtn:I = 0x1

.field static final TRANSACTION_dismissKeyguard:I = 0x4

.field static final TRANSACTION_notifyNavigationBarColor:I = 0x2

.field static final TRANSACTION_setIconShift:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.lge.internal.statusbar.IStatusBarEx"

    invoke-virtual {p0, p0, v0}, Lcom/lge/internal/statusbar/IStatusBarEx$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/internal/statusbar/IStatusBarEx;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 24
    if-nez p0, :cond_4

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_3
    return-object v0

    .line 27
    :cond_4
    const-string v1, "com.lge.internal.statusbar.IStatusBarEx"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/lge/internal/statusbar/IStatusBarEx;

    if-eqz v1, :cond_13

    .line 29
    check-cast v0, Lcom/lge/internal/statusbar/IStatusBarEx;

    goto :goto_3

    .line 31
    :cond_13
    new-instance v0, Lcom/lge/internal/statusbar/IStatusBarEx$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/internal/statusbar/IStatusBarEx$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
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
    const/4 v1, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_4c

    .line 82
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_8
    return v1

    .line 43
    :sswitch_9
    const-string v2, "com.lge.internal.statusbar.IStatusBarEx"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 48
    :sswitch_f
    const-string v2, "com.lge.internal.statusbar.IStatusBarEx"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 51
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/internal/statusbar/IStatusBarEx$Stub;->disableNaviBtn(I)V

    goto :goto_8

    .line 56
    .end local v0    # "_arg0":I
    :sswitch_1c
    const-string v2, "com.lge.internal.statusbar.IStatusBarEx"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 59
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/internal/statusbar/IStatusBarEx$Stub;->notifyNavigationBarColor(I)V

    goto :goto_8

    .line 64
    .end local v0    # "_arg0":I
    :sswitch_29
    const-string v2, "com.lge.internal.statusbar.IStatusBarEx"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/lge/internal/statusbar/IStatusBarEx$Stub;->setIconShift()V

    goto :goto_8

    .line 70
    :sswitch_32
    const-string v2, "com.lge.internal.statusbar.IStatusBarEx"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_49

    .line 73
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 78
    .local v0, "_arg0":Landroid/app/PendingIntent;
    :goto_45
    invoke-virtual {p0, v0}, Lcom/lge/internal/statusbar/IStatusBarEx$Stub;->dismissKeyguard(Landroid/app/PendingIntent;)V

    goto :goto_8

    .line 76
    .end local v0    # "_arg0":Landroid/app/PendingIntent;
    :cond_49
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/app/PendingIntent;
    goto :goto_45

    .line 39
    nop

    :sswitch_data_4c
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_1c
        0x3 -> :sswitch_29
        0x4 -> :sswitch_32
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
