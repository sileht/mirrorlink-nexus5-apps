.class public abstract Lcom/lge/systemservice/core/IQuickToolsManager$Stub;
.super Landroid/os/Binder;
.source "IQuickToolsManager.java"

# interfaces
.implements Lcom/lge/systemservice/core/IQuickToolsManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/core/IQuickToolsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/systemservice/core/IQuickToolsManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.systemservice.core.IQuickToolsManager"

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_setVisibility:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.lge.systemservice.core.IQuickToolsManager"

    invoke-virtual {p0, p0, v0}, Lcom/lge/systemservice/core/IQuickToolsManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/IQuickToolsManager;
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
    const-string v1, "com.lge.systemservice.core.IQuickToolsManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/lge/systemservice/core/IQuickToolsManager;

    if-eqz v1, :cond_13

    .line 29
    check-cast v0, Lcom/lge/systemservice/core/IQuickToolsManager;

    goto :goto_3

    .line 31
    :cond_13
    new-instance v0, Lcom/lge/systemservice/core/IQuickToolsManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/systemservice/core/IQuickToolsManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 39
    sparse-switch p1, :sswitch_data_38

    .line 67
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_8
    return v2

    .line 43
    :sswitch_9
    const-string v3, "com.lge.systemservice.core.IQuickToolsManager"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 48
    :sswitch_f
    const-string v3, "com.lge.systemservice.core.IQuickToolsManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/systemservice/core/IQuickToolsManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/IQuickToolsManagerCallback;

    move-result-object v0

    .line 51
    .local v0, "_arg0":Lcom/lge/systemservice/core/IQuickToolsManagerCallback;
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IQuickToolsManager$Stub;->registerCallback(Lcom/lge/systemservice/core/IQuickToolsManagerCallback;)V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 57
    .end local v0    # "_arg0":Lcom/lge/systemservice/core/IQuickToolsManagerCallback;
    :sswitch_23
    const-string v3, "com.lge.systemservice.core.IQuickToolsManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 61
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 62
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/lge/systemservice/core/IQuickToolsManager$Stub;->setVisibility(II)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 39
    nop

    :sswitch_data_38
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_23
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
