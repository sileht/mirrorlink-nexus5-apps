.class public abstract Lcom/lge/wfds/IWfdsManager$Stub;
.super Landroid/os/Binder;
.source "IWfdsManager.java"

# interfaces
.implements Lcom/lge/wfds/IWfdsManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wfds/IWfdsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/wfds/IWfdsManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.wfds.IWfdsManager"

.field static final TRANSACTION_deinitEventListener:I = 0x4

.field static final TRANSACTION_getMessenger:I = 0x1

.field static final TRANSACTION_getSessionMessenger:I = 0x2

.field static final TRANSACTION_initEventListener:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.lge.wfds.IWfdsManager"

    invoke-virtual {p0, p0, v0}, Lcom/lge/wfds/IWfdsManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/wfds/IWfdsManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 26
    if-nez p0, :cond_4

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_3
    return-object v0

    .line 29
    :cond_4
    const-string v1, "com.lge.wfds.IWfdsManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/lge/wfds/IWfdsManager;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Lcom/lge/wfds/IWfdsManager;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Lcom/lge/wfds/IWfdsManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/wfds/IWfdsManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 37
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
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_6a

    .line 96
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_9
    return v2

    .line 45
    :sswitch_a
    const-string v3, "com.lge.wfds.IWfdsManager"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 50
    :sswitch_10
    const-string v3, "com.lge.wfds.IWfdsManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/lge/wfds/IWfdsManager$Stub;->getMessenger()Landroid/os/Messenger;

    move-result-object v1

    .line 52
    .local v1, "_result":Landroid/os/Messenger;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v1, :cond_25

    .line 54
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    invoke-virtual {v1, p3, v2}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 58
    :cond_25
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 64
    .end local v1    # "_result":Landroid/os/Messenger;
    :sswitch_29
    const-string v3, "com.lge.wfds.IWfdsManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/lge/wfds/IWfdsManager$Stub;->getSessionMessenger()Landroid/os/Messenger;

    move-result-object v1

    .line 66
    .restart local v1    # "_result":Landroid/os/Messenger;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    if-eqz v1, :cond_3e

    .line 68
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    invoke-virtual {v1, p3, v2}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 72
    :cond_3e
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 78
    .end local v1    # "_result":Landroid/os/Messenger;
    :sswitch_42
    const-string v3, "com.lge.wfds.IWfdsManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/wfds/IWfdsEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/wfds/IWfdsEventListener;

    move-result-object v0

    .line 81
    .local v0, "_arg0":Lcom/lge/wfds/IWfdsEventListener;
    invoke-virtual {p0, v0}, Lcom/lge/wfds/IWfdsManager$Stub;->initEventListener(Lcom/lge/wfds/IWfdsEventListener;)I

    move-result v1

    .line 82
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 88
    .end local v0    # "_arg0":Lcom/lge/wfds/IWfdsEventListener;
    .end local v1    # "_result":I
    :sswitch_5a
    const-string v3, "com.lge.wfds.IWfdsManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 91
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/wfds/IWfdsManager$Stub;->deinitEventListener(I)V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 41
    :sswitch_data_6a
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_29
        0x3 -> :sswitch_42
        0x4 -> :sswitch_5a
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
