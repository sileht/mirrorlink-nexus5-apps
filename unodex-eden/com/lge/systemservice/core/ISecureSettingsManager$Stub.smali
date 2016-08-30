.class public abstract Lcom/lge/systemservice/core/ISecureSettingsManager$Stub;
.super Landroid/os/Binder;
.source "ISecureSettingsManager.java"

# interfaces
.implements Lcom/lge/systemservice/core/ISecureSettingsManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/core/ISecureSettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/systemservice/core/ISecureSettingsManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.systemservice.core.ISecureSettingsManager"

.field static final TRANSACTION_putFloat:I = 0x1

.field static final TRANSACTION_putInt:I = 0x2

.field static final TRANSACTION_putLong:I = 0x3

.field static final TRANSACTION_putString:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.lge.systemservice.core.ISecureSettingsManager"

    invoke-virtual {p0, p0, v0}, Lcom/lge/systemservice/core/ISecureSettingsManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/ISecureSettingsManager;
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
    const-string v1, "com.lge.systemservice.core.ISecureSettingsManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/lge/systemservice/core/ISecureSettingsManager;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/lge/systemservice/core/ISecureSettingsManager;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/lge/systemservice/core/ISecureSettingsManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/systemservice/core/ISecureSettingsManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_8e

    .line 102
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_9
    return v6

    .line 42
    :sswitch_a
    const-string v5, "com.lge.systemservice.core.ISecureSettingsManager"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 47
    :sswitch_10
    const-string v7, "com.lge.systemservice.core.ISecureSettingsManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 53
    .local v2, "_arg1":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 54
    .local v1, "_arg2":I
    invoke-virtual {p0, v0, v2, v1}, Lcom/lge/systemservice/core/ISecureSettingsManager$Stub;->putFloat(Ljava/lang/String;FI)Z

    move-result v4

    .line 55
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    if-eqz v4, :cond_2b

    move v5, v6

    :cond_2b
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 61
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg2":I
    .end local v2    # "_arg1":F
    .end local v4    # "_result":Z
    :sswitch_2f
    const-string v7, "com.lge.systemservice.core.ISecureSettingsManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 65
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 67
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 68
    .restart local v1    # "_arg2":I
    invoke-virtual {p0, v0, v2, v1}, Lcom/lge/systemservice/core/ISecureSettingsManager$Stub;->putInt(Ljava/lang/String;II)Z

    move-result v4

    .line 69
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    if-eqz v4, :cond_4a

    move v5, v6

    :cond_4a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 75
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg2":I
    .end local v2    # "_arg1":I
    .end local v4    # "_result":Z
    :sswitch_4e
    const-string v7, "com.lge.systemservice.core.ISecureSettingsManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 79
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 81
    .local v2, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 82
    .restart local v1    # "_arg2":I
    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/lge/systemservice/core/ISecureSettingsManager$Stub;->putLong(Ljava/lang/String;JI)Z

    move-result v4

    .line 83
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    if-eqz v4, :cond_69

    move v5, v6

    :cond_69
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 89
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg2":I
    .end local v2    # "_arg1":J
    .end local v4    # "_result":Z
    :sswitch_6d
    const-string v7, "com.lge.systemservice.core.ISecureSettingsManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 93
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 96
    .restart local v1    # "_arg2":I
    invoke-virtual {p0, v0, v2, v1}, Lcom/lge/systemservice/core/ISecureSettingsManager$Stub;->putString(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    .line 97
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    if-eqz v4, :cond_88

    move v5, v6

    :cond_88
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 38
    nop

    :sswitch_data_8e
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2f
        0x3 -> :sswitch_4e
        0x4 -> :sswitch_6d
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
