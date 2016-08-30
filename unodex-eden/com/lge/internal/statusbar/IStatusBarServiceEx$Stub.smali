.class public abstract Lcom/lge/internal/statusbar/IStatusBarServiceEx$Stub;
.super Landroid/os/Binder;
.source "IStatusBarServiceEx.java"

# interfaces
.implements Lcom/lge/internal/statusbar/IStatusBarServiceEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/internal/statusbar/IStatusBarServiceEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/internal/statusbar/IStatusBarServiceEx$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.internal.statusbar.IStatusBarServiceEx"

.field static final TRANSACTION_disableNaviBtn:I = 0x2

.field static final TRANSACTION_disableNaviBtnForUser:I = 0x3

.field static final TRANSACTION_dismissKeyguard:I = 0x6

.field static final TRANSACTION_notifyNavigationBarColor:I = 0x4

.field static final TRANSACTION_registerStatusBarEx:I = 0x1

.field static final TRANSACTION_setIconShift:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.lge.internal.statusbar.IStatusBarServiceEx"

    invoke-virtual {p0, p0, v0}, Lcom/lge/internal/statusbar/IStatusBarServiceEx$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/internal/statusbar/IStatusBarServiceEx;
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
    const-string v1, "com.lge.internal.statusbar.IStatusBarServiceEx"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/lge/internal/statusbar/IStatusBarServiceEx;

    if-eqz v1, :cond_13

    .line 29
    check-cast v0, Lcom/lge/internal/statusbar/IStatusBarServiceEx;

    goto :goto_3

    .line 31
    :cond_13
    new-instance v0, Lcom/lge/internal/statusbar/IStatusBarServiceEx$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/internal/statusbar/IStatusBarServiceEx$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 13
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
    const/4 v7, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_ca

    .line 137
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_8
    return v0

    .line 43
    :sswitch_9
    const-string v0, "com.lge.internal.statusbar.IStatusBarServiceEx"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v7

    .line 44
    goto :goto_8

    .line 48
    :sswitch_10
    const-string v0, "com.lge.internal.statusbar.IStatusBarServiceEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v1

    .line 52
    .local v1, "_arg0":Lcom/android/internal/statusbar/IStatusBar;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/internal/statusbar/IStatusBarEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/internal/statusbar/IStatusBarEx;

    move-result-object v2

    .line 54
    .local v2, "_arg1":Lcom/lge/internal/statusbar/IStatusBarEx;
    new-instance v3, Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-direct {v3}, Lcom/android/internal/statusbar/StatusBarIconList;-><init>()V

    .line 56
    .local v3, "_arg2":Lcom/android/internal/statusbar/StatusBarIconList;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 57
    .local v6, "_arg3_length":I
    if-gez v6, :cond_4d

    .line 58
    const/4 v4, 0x0

    .line 64
    .local v4, "_arg3":[I
    :goto_31
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .local v5, "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    move-object v0, p0

    .line 65
    invoke-virtual/range {v0 .. v5}, Lcom/lge/internal/statusbar/IStatusBarServiceEx$Stub;->registerStatusBarEx(Lcom/android/internal/statusbar/IStatusBar;Lcom/lge/internal/statusbar/IStatusBarEx;Lcom/android/internal/statusbar/StatusBarIconList;[ILjava/util/List;)V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    if-eqz v3, :cond_50

    .line 68
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    invoke-virtual {v3, p3, v7}, Lcom/android/internal/statusbar/StatusBarIconList;->writeToParcel(Landroid/os/Parcel;I)V

    .line 74
    :goto_45
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 75
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    move v0, v7

    .line 76
    goto :goto_8

    .line 61
    .end local v4    # "_arg3":[I
    .end local v5    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :cond_4d
    new-array v4, v6, [I

    .restart local v4    # "_arg3":[I
    goto :goto_31

    .line 72
    .restart local v5    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :cond_50
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_45

    .line 80
    .end local v1    # "_arg0":Lcom/android/internal/statusbar/IStatusBar;
    .end local v2    # "_arg1":Lcom/lge/internal/statusbar/IStatusBarEx;
    .end local v3    # "_arg2":Lcom/android/internal/statusbar/StatusBarIconList;
    .end local v4    # "_arg3":[I
    .end local v5    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    .end local v6    # "_arg3_length":I
    :sswitch_55
    const-string v0, "com.lge.internal.statusbar.IStatusBarServiceEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 84
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 86
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lcom/lge/internal/statusbar/IStatusBarServiceEx$Stub;->disableNaviBtn(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 89
    goto :goto_8

    .line 93
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":Ljava/lang/String;
    :sswitch_6e
    const-string v0, "com.lge.internal.statusbar.IStatusBarServiceEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 97
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 99
    .restart local v2    # "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 101
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 102
    .local v4, "_arg3":I
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/lge/internal/statusbar/IStatusBarServiceEx$Stub;->disableNaviBtnForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 104
    goto/16 :goto_8

    .line 108
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    :sswitch_8c
    const-string v0, "com.lge.internal.statusbar.IStatusBarServiceEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 111
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/lge/internal/statusbar/IStatusBarServiceEx$Stub;->notifyNavigationBarColor(I)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 113
    goto/16 :goto_8

    .line 117
    .end local v1    # "_arg0":I
    :sswitch_9e
    const-string v0, "com.lge.internal.statusbar.IStatusBarServiceEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/lge/internal/statusbar/IStatusBarServiceEx$Stub;->setIconShift()V

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 120
    goto/16 :goto_8

    .line 124
    :sswitch_ac
    const-string v0, "com.lge.internal.statusbar.IStatusBarServiceEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c8

    .line 127
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 132
    .local v1, "_arg0":Landroid/app/PendingIntent;
    :goto_bf
    invoke-virtual {p0, v1}, Lcom/lge/internal/statusbar/IStatusBarServiceEx$Stub;->dismissKeyguard(Landroid/app/PendingIntent;)V

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 134
    goto/16 :goto_8

    .line 130
    .end local v1    # "_arg0":Landroid/app/PendingIntent;
    :cond_c8
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/app/PendingIntent;
    goto :goto_bf

    .line 39
    :sswitch_data_ca
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_55
        0x3 -> :sswitch_6e
        0x4 -> :sswitch_8c
        0x5 -> :sswitch_9e
        0x6 -> :sswitch_ac
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
