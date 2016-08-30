.class public abstract Lcom/lge/internal/telecom/ITelecomServiceEx$Stub;
.super Landroid/os/Binder;
.source "ITelecomServiceEx.java"

# interfaces
.implements Lcom/lge/internal/telecom/ITelecomServiceEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/internal/telecom/ITelecomServiceEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/internal/telecom/ITelecomServiceEx$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.internal.telecom.ITelecomServiceEx"

.field static final TRANSACTION_cancelMissedCallsNotification:I = 0x2

.field static final TRANSACTION_isReservedCall:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "com.lge.internal.telecom.ITelecomServiceEx"

    invoke-virtual {p0, p0, v0}, Lcom/lge/internal/telecom/ITelecomServiceEx$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/internal/telecom/ITelecomServiceEx;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 30
    if-nez p0, :cond_4

    .line 31
    const/4 v0, 0x0

    .line 37
    :goto_3
    return-object v0

    .line 33
    :cond_4
    const-string v1, "com.lge.internal.telecom.ITelecomServiceEx"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/lge/internal/telecom/ITelecomServiceEx;

    if-eqz v1, :cond_13

    .line 35
    check-cast v0, Lcom/lge/internal/telecom/ITelecomServiceEx;

    goto :goto_3

    .line 37
    :cond_13
    new-instance v0, Lcom/lge/internal/telecom/ITelecomServiceEx$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/internal/telecom/ITelecomServiceEx$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 41
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
    const/4 v3, 0x1

    .line 45
    sparse-switch p1, :sswitch_data_34

    .line 70
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_8
    return v3

    .line 49
    :sswitch_9
    const-string v2, "com.lge.internal.telecom.ITelecomServiceEx"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 54
    :sswitch_f
    const-string v2, "com.lge.internal.telecom.ITelecomServiceEx"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/lge/internal/telecom/ITelecomServiceEx$Stub;->isReservedCall()Z

    move-result v1

    .line 56
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    if-eqz v1, :cond_22

    move v2, v3

    :goto_1e
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    :cond_22
    const/4 v2, 0x0

    goto :goto_1e

    .line 62
    .end local v1    # "_result":Z
    :sswitch_24
    const-string v2, "com.lge.internal.telecom.ITelecomServiceEx"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/internal/telecom/ITelecomServiceEx$Stub;->cancelMissedCallsNotification(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 45
    :sswitch_data_34
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_24
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
