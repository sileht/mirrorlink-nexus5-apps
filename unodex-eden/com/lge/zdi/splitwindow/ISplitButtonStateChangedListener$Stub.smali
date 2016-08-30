.class public abstract Lcom/lge/zdi/splitwindow/ISplitButtonStateChangedListener$Stub;
.super Landroid/os/Binder;
.source "ISplitButtonStateChangedListener.java"

# interfaces
.implements Lcom/lge/zdi/splitwindow/ISplitButtonStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/zdi/splitwindow/ISplitButtonStateChangedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/zdi/splitwindow/ISplitButtonStateChangedListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.zdi.splitwindow.ISplitButtonStateChangedListener"

.field static final TRANSACTION_onSplitButtonStateChanged:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.lge.zdi.splitwindow.ISplitButtonStateChangedListener"

    invoke-virtual {p0, p0, v0}, Lcom/lge/zdi/splitwindow/ISplitButtonStateChangedListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/zdi/splitwindow/ISplitButtonStateChangedListener;
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
    const-string v1, "com.lge.zdi.splitwindow.ISplitButtonStateChangedListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/lge/zdi/splitwindow/ISplitButtonStateChangedListener;

    if-eqz v1, :cond_13

    .line 29
    check-cast v0, Lcom/lge/zdi/splitwindow/ISplitButtonStateChangedListener;

    goto :goto_3

    .line 31
    :cond_13
    new-instance v0, Lcom/lge/zdi/splitwindow/ISplitButtonStateChangedListener$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/zdi/splitwindow/ISplitButtonStateChangedListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    sparse-switch p1, :sswitch_data_22

    .line 55
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_8
    return v1

    .line 43
    :sswitch_9
    const-string v2, "com.lge.zdi.splitwindow.ISplitButtonStateChangedListener"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 48
    :sswitch_f
    const-string v2, "com.lge.zdi.splitwindow.ISplitButtonStateChangedListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1f

    move v0, v1

    .line 51
    .local v0, "_arg0":Z
    :goto_1b
    invoke-virtual {p0, v0}, Lcom/lge/zdi/splitwindow/ISplitButtonStateChangedListener$Stub;->onSplitButtonStateChanged(Z)V

    goto :goto_8

    .line 50
    .end local v0    # "_arg0":Z
    :cond_1f
    const/4 v0, 0x0

    goto :goto_1b

    .line 39
    nop

    :sswitch_data_22
    .sparse-switch
        0x1 -> :sswitch_f
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
