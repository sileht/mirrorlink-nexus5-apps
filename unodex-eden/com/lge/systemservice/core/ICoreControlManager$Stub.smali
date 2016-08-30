.class public abstract Lcom/lge/systemservice/core/ICoreControlManager$Stub;
.super Landroid/os/Binder;
.source "ICoreControlManager.java"

# interfaces
.implements Lcom/lge/systemservice/core/ICoreControlManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/core/ICoreControlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/systemservice/core/ICoreControlManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.systemservice.core.ICoreControlManager"

.field static final TRANSACTION_changeCoreState:I = 0x3

.field static final TRANSACTION_changeDisableEDP:I = 0x5

.field static final TRANSACTION_changeMaxFrequency:I = 0x4

.field static final TRANSACTION_getCoreState:I = 0x2

.field static final TRANSACTION_nativeCoreControlNotification:I = 0x1

.field static final TRANSACTION_setLowPowerModePolicy:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.lge.systemservice.core.ICoreControlManager"

    invoke-virtual {p0, p0, v0}, Lcom/lge/systemservice/core/ICoreControlManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/ICoreControlManager;
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
    const-string v1, "com.lge.systemservice.core.ICoreControlManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/lge/systemservice/core/ICoreControlManager;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/lge/systemservice/core/ICoreControlManager;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/lge/systemservice/core/ICoreControlManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/systemservice/core/ICoreControlManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    sparse-switch p1, :sswitch_data_78

    .line 101
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_8
    return v3

    .line 42
    :sswitch_9
    const-string v4, "com.lge.systemservice.core.ICoreControlManager"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 47
    :sswitch_f
    const-string v4, "com.lge.systemservice.core.ICoreControlManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 50
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/ICoreControlManager$Stub;->nativeCoreControlNotification(I)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 56
    .end local v0    # "_arg0":I
    :sswitch_1f
    const-string v4, "com.lge.systemservice.core.ICoreControlManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/lge/systemservice/core/ICoreControlManager$Stub;->getCoreState()I

    move-result v2

    .line 58
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 64
    .end local v2    # "_result":I
    :sswitch_2f
    const-string v4, "com.lge.systemservice.core.ICoreControlManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 67
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/ICoreControlManager$Stub;->changeCoreState(I)V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 73
    .end local v0    # "_arg0":I
    :sswitch_3f
    const-string v4, "com.lge.systemservice.core.ICoreControlManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 76
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/ICoreControlManager$Stub;->changeMaxFrequency(I)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 82
    .end local v0    # "_arg0":I
    :sswitch_4f
    const-string v4, "com.lge.systemservice.core.ICoreControlManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 85
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/ICoreControlManager$Stub;->changeDisableEDP(I)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 91
    .end local v0    # "_arg0":I
    :sswitch_5f
    const-string v4, "com.lge.systemservice.core.ICoreControlManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 95
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_76

    move v1, v3

    .line 96
    .local v1, "_arg1":Z
    :goto_6f
    invoke-virtual {p0, v0, v1}, Lcom/lge/systemservice/core/ICoreControlManager$Stub;->setLowPowerModePolicy(IZ)V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 95
    .end local v1    # "_arg1":Z
    :cond_76
    const/4 v1, 0x0

    goto :goto_6f

    .line 38
    :sswitch_data_78
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_1f
        0x3 -> :sswitch_2f
        0x4 -> :sswitch_3f
        0x5 -> :sswitch_4f
        0x6 -> :sswitch_5f
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
