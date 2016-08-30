.class public abstract Landroid/app/IActivityManagerEx$Stub;
.super Landroid/os/Binder;
.source "IActivityManagerEx.java"

# interfaces
.implements Landroid/app/IActivityManagerEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IActivityManagerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IActivityManagerEx$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IActivityManagerEx"

.field static final TRANSACTION_getRecentTasksForUserEx:I = 0x5

.field static final TRANSACTION_registerActivityTrigger:I = 0x2

.field static final TRANSACTION_setISStatus:I = 0x4

.field static final TRANSACTION_showLockTaskToastEx:I = 0x3

.field static final TRANSACTION_updateFlag:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "android.app.IActivityManagerEx"

    invoke-virtual {p0, p0, v0}, Landroid/app/IActivityManagerEx$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManagerEx;
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
    const-string v1, "android.app.IActivityManagerEx"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/app/IActivityManagerEx;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Landroid/app/IActivityManagerEx;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Landroid/app/IActivityManagerEx$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/IActivityManagerEx$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v4, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_70

    .line 96
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_8
    return v4

    .line 42
    :sswitch_9
    const-string v5, "android.app.IActivityManagerEx"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 47
    :sswitch_f
    const-string v5, "android.app.IActivityManagerEx"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 51
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 52
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/app/IActivityManagerEx$Stub;->updateFlag(II)V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 58
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_23
    const-string v5, "android.app.IActivityManagerEx"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/frameworks/IActivityTrigger$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/frameworks/IActivityTrigger;

    move-result-object v0

    .line 61
    .local v0, "_arg0":Lcom/lge/frameworks/IActivityTrigger;
    invoke-virtual {p0, v0}, Landroid/app/IActivityManagerEx$Stub;->registerActivityTrigger(Lcom/lge/frameworks/IActivityTrigger;)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 67
    .end local v0    # "_arg0":Lcom/lge/frameworks/IActivityTrigger;
    :sswitch_37
    const-string v5, "android.app.IActivityManagerEx"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Landroid/app/IActivityManagerEx$Stub;->showLockTaskToastEx()V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 74
    :sswitch_43
    const-string v5, "android.app.IActivityManagerEx"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 77
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/app/IActivityManagerEx$Stub;->setISStatus(I)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 83
    .end local v0    # "_arg0":I
    :sswitch_53
    const-string v5, "android.app.IActivityManagerEx"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 87
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 89
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 90
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/IActivityManagerEx$Stub;->getRecentTasksForUserEx(III)Ljava/util/List;

    move-result-object v3

    .line 91
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/RecentTaskInfoEx;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_8

    .line 38
    nop

    :sswitch_data_70
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_23
        0x3 -> :sswitch_37
        0x4 -> :sswitch_43
        0x5 -> :sswitch_53
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
