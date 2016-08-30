.class public abstract Lcom/lge/systemservice/core/IBleQmManager$Stub;
.super Landroid/os/Binder;
.source "IBleQmManager.java"

# interfaces
.implements Lcom/lge/systemservice/core/IBleQmManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/core/IBleQmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/systemservice/core/IBleQmManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.systemservice.core.IBleQmManager"

.field static final TRANSACTION_disable:I = 0x4

.field static final TRANSACTION_enable:I = 0x3

.field static final TRANSACTION_getBleQmService:I = 0x6

.field static final TRANSACTION_isEnabled:I = 0x5

.field static final TRANSACTION_registerAdapter:I = 0x1

.field static final TRANSACTION_unregisterAdapter:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.lge.systemservice.core.IBleQmManager"

    invoke-virtual {p0, p0, v0}, Lcom/lge/systemservice/core/IBleQmManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/IBleQmManager;
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
    const-string v1, "com.lge.systemservice.core.IBleQmManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/lge/systemservice/core/IBleQmManager;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/lge/systemservice/core/IBleQmManager;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/lge/systemservice/core/IBleQmManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/systemservice/core/IBleQmManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_96

    .line 97
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_a
    return v3

    .line 42
    :sswitch_b
    const-string v2, "com.lge.systemservice.core.IBleQmManager"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    .line 47
    :sswitch_11
    const-string v4, "com.lge.systemservice.core.IBleQmManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/bluetooth/le/quietmode/ILGBleQmManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/bluetooth/le/quietmode/ILGBleQmManagerCallback;

    move-result-object v0

    .line 50
    .local v0, "_arg0":Lcom/lge/bluetooth/le/quietmode/ILGBleQmManagerCallback;
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IBleQmManager$Stub;->registerAdapter(Lcom/lge/bluetooth/le/quietmode/ILGBleQmManagerCallback;)Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;

    move-result-object v1

    .line 51
    .local v1, "_result":Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    if-eqz v1, :cond_2b

    invoke-interface {v1}, Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_2b
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_a

    .line 57
    .end local v0    # "_arg0":Lcom/lge/bluetooth/le/quietmode/ILGBleQmManagerCallback;
    .end local v1    # "_result":Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;
    :sswitch_2f
    const-string v2, "com.lge.systemservice.core.IBleQmManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/bluetooth/le/quietmode/ILGBleQmManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/bluetooth/le/quietmode/ILGBleQmManagerCallback;

    move-result-object v0

    .line 60
    .restart local v0    # "_arg0":Lcom/lge/bluetooth/le/quietmode/ILGBleQmManagerCallback;
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IBleQmManager$Stub;->unregisterAdapter(Lcom/lge/bluetooth/le/quietmode/ILGBleQmManagerCallback;)V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 66
    .end local v0    # "_arg0":Lcom/lge/bluetooth/le/quietmode/ILGBleQmManagerCallback;
    :sswitch_43
    const-string v2, "com.lge.systemservice.core.IBleQmManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/lge/systemservice/core/IBleQmManager$Stub;->enable()Z

    move-result v1

    .line 68
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    if-eqz v1, :cond_56

    move v2, v3

    :goto_52
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    :cond_56
    move v2, v4

    goto :goto_52

    .line 74
    .end local v1    # "_result":Z
    :sswitch_58
    const-string v2, "com.lge.systemservice.core.IBleQmManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/lge/systemservice/core/IBleQmManager$Stub;->disable()Z

    move-result v1

    .line 76
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    if-eqz v1, :cond_67

    move v4, v3

    :cond_67
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 82
    .end local v1    # "_result":Z
    :sswitch_6b
    const-string v2, "com.lge.systemservice.core.IBleQmManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/lge/systemservice/core/IBleQmManager$Stub;->isEnabled()Z

    move-result v1

    .line 84
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v1, :cond_7a

    move v4, v3

    :cond_7a
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 90
    .end local v1    # "_result":Z
    :sswitch_7e
    const-string v4, "com.lge.systemservice.core.IBleQmManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/lge/systemservice/core/IBleQmManager$Stub;->getBleQmService()Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;

    move-result-object v1

    .line 92
    .local v1, "_result":Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    if-eqz v1, :cond_90

    invoke-interface {v1}, Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_90
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_a

    .line 38
    nop

    :sswitch_data_96
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_2f
        0x3 -> :sswitch_43
        0x4 -> :sswitch_58
        0x5 -> :sswitch_6b
        0x6 -> :sswitch_7e
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
