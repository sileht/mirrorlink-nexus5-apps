.class public abstract Lcom/lge/systemservice/core/ILEDManager$Stub;
.super Landroid/os/Binder;
.source "ILEDManager.java"

# interfaces
.implements Lcom/lge/systemservice/core/ILEDManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/core/ILEDManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/systemservice/core/ILEDManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.systemservice.core.ILEDManager"

.field static final TRANSACTION_clearAllLeds:I = 0x4

.field static final TRANSACTION_getEmotionalLedType:I = 0x8

.field static final TRANSACTION_restart:I = 0x5

.field static final TRANSACTION_setBrightness:I = 0x7

.field static final TRANSACTION_start:I = 0x1

.field static final TRANSACTION_stop:I = 0x2

.field static final TRANSACTION_update:I = 0x3

.field static final TRANSACTION_updateLightList:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.lge.systemservice.core.ILEDManager"

    invoke-virtual {p0, p0, v0}, Lcom/lge/systemservice/core/ILEDManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/ILEDManager;
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
    const-string v1, "com.lge.systemservice.core.ILEDManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/lge/systemservice/core/ILEDManager;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/lge/systemservice/core/ILEDManager;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/lge/systemservice/core/ILEDManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/systemservice/core/ILEDManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 15
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
    const/4 v9, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_f6

    .line 152
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_8
    return v0

    .line 42
    :sswitch_9
    const-string v0, "com.lge.systemservice.core.ILEDManager"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v9

    .line 43
    goto :goto_8

    .line 47
    :sswitch_10
    const-string v0, "com.lge.systemservice.core.ILEDManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 53
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_37

    .line 54
    sget-object v0, Lcom/lge/systemservice/core/LGLedRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/systemservice/core/LGLedRecord;

    .line 59
    .local v3, "_arg2":Lcom/lge/systemservice/core/LGLedRecord;
    :goto_2b
    invoke-virtual {p0, v1, v2, v3}, Lcom/lge/systemservice/core/ILEDManager$Stub;->start(Ljava/lang/String;ILcom/lge/systemservice/core/LGLedRecord;)I

    move-result v8

    .line 60
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v9

    .line 62
    goto :goto_8

    .line 57
    .end local v3    # "_arg2":Lcom/lge/systemservice/core/LGLedRecord;
    .end local v8    # "_result":I
    :cond_37
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Lcom/lge/systemservice/core/LGLedRecord;
    goto :goto_2b

    .line 66
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Lcom/lge/systemservice/core/LGLedRecord;
    :sswitch_39
    const-string v0, "com.lge.systemservice.core.ILEDManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 70
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 71
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/lge/systemservice/core/ILEDManager$Stub;->stop(Ljava/lang/String;I)I

    move-result v8

    .line 72
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v9

    .line 74
    goto :goto_8

    .line 78
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v8    # "_result":I
    :sswitch_52
    const-string v0, "com.lge.systemservice.core.ILEDManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 82
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 84
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_79

    .line 85
    sget-object v0, Lcom/lge/systemservice/core/LGLedRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/systemservice/core/LGLedRecord;

    .line 90
    .restart local v3    # "_arg2":Lcom/lge/systemservice/core/LGLedRecord;
    :goto_6d
    invoke-virtual {p0, v1, v2, v3}, Lcom/lge/systemservice/core/ILEDManager$Stub;->update(Ljava/lang/String;ILcom/lge/systemservice/core/LGLedRecord;)I

    move-result v8

    .line 91
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v9

    .line 93
    goto :goto_8

    .line 88
    .end local v3    # "_arg2":Lcom/lge/systemservice/core/LGLedRecord;
    .end local v8    # "_result":I
    :cond_79
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Lcom/lge/systemservice/core/LGLedRecord;
    goto :goto_6d

    .line 97
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Lcom/lge/systemservice/core/LGLedRecord;
    :sswitch_7b
    const-string v0, "com.lge.systemservice.core.ILEDManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/lge/systemservice/core/ILEDManager$Stub;->clearAllLeds()I

    move-result v8

    .line 99
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v9

    .line 101
    goto/16 :goto_8

    .line 105
    .end local v8    # "_result":I
    :sswitch_8d
    const-string v0, "com.lge.systemservice.core.ILEDManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/lge/systemservice/core/ILEDManager$Stub;->restart()I

    move-result v8

    .line 107
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v9

    .line 109
    goto/16 :goto_8

    .line 113
    .end local v8    # "_result":I
    :sswitch_9f
    const-string v0, "com.lge.systemservice.core.ILEDManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 117
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 119
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 121
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 123
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 125
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 127
    .local v6, "_arg5":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, "_arg6":Ljava/lang/String;
    move-object v0, p0

    .line 128
    invoke-virtual/range {v0 .. v7}, Lcom/lge/systemservice/core/ILEDManager$Stub;->updateLightList(IIIIIILjava/lang/String;)I

    move-result v8

    .line 129
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v9

    .line 131
    goto/16 :goto_8

    .line 135
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Ljava/lang/String;
    .end local v8    # "_result":I
    :sswitch_ce
    const-string v0, "com.lge.systemservice.core.ILEDManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 138
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/lge/systemservice/core/ILEDManager$Stub;->setBrightness(I)I

    move-result v8

    .line 139
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v9

    .line 141
    goto/16 :goto_8

    .line 145
    .end local v1    # "_arg0":I
    .end local v8    # "_result":I
    :sswitch_e4
    const-string v0, "com.lge.systemservice.core.ILEDManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lcom/lge/systemservice/core/ILEDManager$Stub;->getEmotionalLedType()I

    move-result v8

    .line 147
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v9

    .line 149
    goto/16 :goto_8

    .line 38
    :sswitch_data_f6
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_39
        0x3 -> :sswitch_52
        0x4 -> :sswitch_7b
        0x5 -> :sswitch_8d
        0x6 -> :sswitch_9f
        0x7 -> :sswitch_ce
        0x8 -> :sswitch_e4
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
