.class public abstract Lcom/lge/systemservice/core/IMirrorLinkManager$Stub;
.super Landroid/os/Binder;
.source "IMirrorLinkManager.java"

# interfaces
.implements Lcom/lge/systemservice/core/IMirrorLinkManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/core/IMirrorLinkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/systemservice/core/IMirrorLinkManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.systemservice.core.IMirrorLinkManager"

.field static final TRANSACTION_tzReadPCR:I = 0x2

.field static final TRANSACTION_tzTPMExtend:I = 0x3

.field static final TRANSACTION_tzTPMQuote:I = 0x4

.field static final TRANSACTION_tzWritePCR:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.lge.systemservice.core.IMirrorLinkManager"

    invoke-virtual {p0, p0, v0}, Lcom/lge/systemservice/core/IMirrorLinkManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/IMirrorLinkManager;
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
    const-string v1, "com.lge.systemservice.core.IMirrorLinkManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/lge/systemservice/core/IMirrorLinkManager;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/lge/systemservice/core/IMirrorLinkManager;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/lge/systemservice/core/IMirrorLinkManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/systemservice/core/IMirrorLinkManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 12
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
    const/4 v5, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_8a

    .line 104
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_8
    return v5

    .line 42
    :sswitch_9
    const-string v6, "com.lge.systemservice.core.IMirrorLinkManager"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 47
    :sswitch_f
    const-string v6, "com.lge.systemservice.core.IMirrorLinkManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 51
    .local v0, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 52
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/lge/systemservice/core/IMirrorLinkManager$Stub;->tzWritePCR([BI)I

    move-result v4

    .line 53
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_8

    .line 60
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":I
    .end local v4    # "_result":I
    :sswitch_2a
    const-string v6, "com.lge.systemservice.core.IMirrorLinkManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 64
    .restart local v0    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 65
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/lge/systemservice/core/IMirrorLinkManager$Stub;->tzReadPCR([BI)I

    move-result v4

    .line 66
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_8

    .line 73
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":I
    .end local v4    # "_result":I
    :sswitch_45
    const-string v6, "com.lge.systemservice.core.IMirrorLinkManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 77
    .restart local v0    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 78
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/lge/systemservice/core/IMirrorLinkManager$Stub;->tzTPMExtend([BI)I

    move-result v4

    .line 79
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_8

    .line 86
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":I
    .end local v4    # "_result":I
    :sswitch_60
    const-string v6, "com.lge.systemservice.core.IMirrorLinkManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 90
    .restart local v0    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 92
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 94
    .local v2, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 95
    .local v3, "_arg3":[B
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/systemservice/core/IMirrorLinkManager$Stub;->tzTPMQuote([BI[B[B)I

    move-result v4

    .line 96
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 99
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 100
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_8

    .line 38
    nop

    :sswitch_data_8a
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_2a
        0x3 -> :sswitch_45
        0x4 -> :sswitch_60
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
