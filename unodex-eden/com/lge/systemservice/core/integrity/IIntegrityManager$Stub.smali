.class public abstract Lcom/lge/systemservice/core/integrity/IIntegrityManager$Stub;
.super Landroid/os/Binder;
.source "IIntegrityManager.java"

# interfaces
.implements Lcom/lge/systemservice/core/integrity/IIntegrityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/core/integrity/IIntegrityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/systemservice/core/integrity/IIntegrityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.systemservice.core.integrity.IIntegrityManager"

.field static final TRANSACTION_clearFingerprintForApplication:I = 0x4

.field static final TRANSACTION_generateFingerprintForApplication:I = 0x3

.field static final TRANSACTION_getIntegrityVerificationEnabled:I = 0x2

.field static final TRANSACTION_setIntegrityVerificationEnabled:I = 0x1

.field static final TRANSACTION_verifyIntegrityForApplication:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.lge.systemservice.core.integrity.IIntegrityManager"

    invoke-virtual {p0, p0, v0}, Lcom/lge/systemservice/core/integrity/IIntegrityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/integrity/IIntegrityManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 28
    if-nez p0, :cond_4

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_3
    return-object v0

    .line 31
    :cond_4
    const-string v1, "com.lge.systemservice.core.integrity.IIntegrityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/lge/systemservice/core/integrity/IIntegrityManager;

    if-eqz v1, :cond_13

    .line 33
    check-cast v0, Lcom/lge/systemservice/core/integrity/IIntegrityManager;

    goto :goto_3

    .line 35
    :cond_13
    new-instance v0, Lcom/lge/systemservice/core/integrity/IIntegrityManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/systemservice/core/integrity/IIntegrityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 39
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
    const/4 v4, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_78

    .line 101
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_8
    return v4

    .line 47
    :sswitch_9
    const-string v3, "com.lge.systemservice.core.integrity.IIntegrityManager"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 52
    :sswitch_f
    const-string v3, "com.lge.systemservice.core.integrity.IIntegrityManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 55
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/integrity/IIntegrityManager$Stub;->setIntegrityVerificationEnabled(I)Z

    move-result v2

    .line 56
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    if-eqz v2, :cond_26

    move v3, v4

    :goto_22
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    :cond_26
    const/4 v3, 0x0

    goto :goto_22

    .line 62
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Z
    :sswitch_28
    const-string v3, "com.lge.systemservice.core.integrity.IIntegrityManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/lge/systemservice/core/integrity/IIntegrityManager$Stub;->getIntegrityVerificationEnabled()I

    move-result v2

    .line 64
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 70
    .end local v2    # "_result":I
    :sswitch_38
    const-string v3, "com.lge.systemservice.core.integrity.IIntegrityManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/lge/systemservice/core/integrity/IIntegrityManager$Stub;->generateFingerprintForApplication(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 76
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 82
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :sswitch_50
    const-string v3, "com.lge.systemservice.core.integrity.IIntegrityManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 85
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/integrity/IIntegrityManager$Stub;->clearFingerprintForApplication(Ljava/lang/String;)I

    move-result v2

    .line 86
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 92
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":I
    :sswitch_64
    const-string v3, "com.lge.systemservice.core.integrity.IIntegrityManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 95
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/integrity/IIntegrityManager$Stub;->verifyIntegrityForApplication(Ljava/lang/String;)I

    move-result v2

    .line 96
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 43
    :sswitch_data_78
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_28
        0x3 -> :sswitch_38
        0x4 -> :sswitch_50
        0x5 -> :sswitch_64
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
