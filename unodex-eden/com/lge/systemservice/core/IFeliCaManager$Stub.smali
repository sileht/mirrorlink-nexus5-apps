.class public abstract Lcom/lge/systemservice/core/IFeliCaManager$Stub;
.super Landroid/os/Binder;
.source "IFeliCaManager.java"

# interfaces
.implements Lcom/lge/systemservice/core/IFeliCaManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/core/IFeliCaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/systemservice/core/IFeliCaManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.systemservice.core.IFeliCaManager"

.field static final TRANSACTION_cmdEXTIDM:I = 0x1

.field static final TRANSACTION_cmdFreqCalRange:I = 0x9

.field static final TRANSACTION_cmdFreqCalRead:I = 0x8

.field static final TRANSACTION_cmdFreqCalWrite:I = 0x7

.field static final TRANSACTION_cmdIDM:I = 0x2

.field static final TRANSACTION_cmdRFIDCK:I = 0x3

.field static final TRANSACTION_cmdRFRegCalCheck:I = 0xb

.field static final TRANSACTION_cmdRFRegCalLoad:I = 0xa

.field static final TRANSACTION_cmdSwitchRange:I = 0x4

.field static final TRANSACTION_cmdSwitchRead:I = 0x6

.field static final TRANSACTION_cmdSwitchWrite:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.lge.systemservice.core.IFeliCaManager"

    invoke-virtual {p0, p0, v0}, Lcom/lge/systemservice/core/IFeliCaManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/IFeliCaManager;
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
    const-string v1, "com.lge.systemservice.core.IFeliCaManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/lge/systemservice/core/IFeliCaManager;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/lge/systemservice/core/IFeliCaManager;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/lge/systemservice/core/IFeliCaManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/systemservice/core/IFeliCaManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 11
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
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_13c

    .line 192
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_9
    return v4

    .line 42
    :sswitch_a
    const-string v3, "com.lge.systemservice.core.IFeliCaManager"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 47
    :sswitch_10
    const-string v5, "com.lge.systemservice.core.IFeliCaManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 50
    .local v1, "_arg0_length":I
    if-gez v1, :cond_2d

    .line 51
    const/4 v0, 0x0

    .line 56
    .local v0, "_arg0":[B
    :goto_1c
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IFeliCaManager$Stub;->cmdEXTIDM([B)Z

    move-result v2

    .line 57
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    if-eqz v2, :cond_26

    move v3, v4

    :cond_26
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_9

    .line 54
    .end local v0    # "_arg0":[B
    .end local v2    # "_result":Z
    :cond_2d
    new-array v0, v1, [B

    .restart local v0    # "_arg0":[B
    goto :goto_1c

    .line 64
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg0_length":I
    :sswitch_30
    const-string v5, "com.lge.systemservice.core.IFeliCaManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 67
    .restart local v1    # "_arg0_length":I
    if-gez v1, :cond_4d

    .line 68
    const/4 v0, 0x0

    .line 73
    .local v0, "_arg0":[Ljava/lang/String;
    :goto_3c
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IFeliCaManager$Stub;->cmdIDM([Ljava/lang/String;)Z

    move-result v2

    .line 74
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    if-eqz v2, :cond_46

    move v3, v4

    :cond_46
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_9

    .line 71
    .end local v0    # "_arg0":[Ljava/lang/String;
    .end local v2    # "_result":Z
    :cond_4d
    new-array v0, v1, [Ljava/lang/String;

    .restart local v0    # "_arg0":[Ljava/lang/String;
    goto :goto_3c

    .line 81
    .end local v0    # "_arg0":[Ljava/lang/String;
    .end local v1    # "_arg0_length":I
    :sswitch_50
    const-string v3, "com.lge.systemservice.core.IFeliCaManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/lge/systemservice/core/IFeliCaManager$Stub;->cmdRFIDCK()I

    move-result v2

    .line 83
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 89
    .end local v2    # "_result":I
    :sswitch_60
    const-string v5, "com.lge.systemservice.core.IFeliCaManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 92
    .restart local v1    # "_arg0_length":I
    if-gez v1, :cond_7d

    .line 93
    const/4 v0, 0x0

    .line 98
    .restart local v0    # "_arg0":[Ljava/lang/String;
    :goto_6c
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IFeliCaManager$Stub;->cmdSwitchRange([Ljava/lang/String;)Z

    move-result v2

    .line 99
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    if-eqz v2, :cond_76

    move v3, v4

    :cond_76
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_9

    .line 96
    .end local v0    # "_arg0":[Ljava/lang/String;
    .end local v2    # "_result":Z
    :cond_7d
    new-array v0, v1, [Ljava/lang/String;

    .restart local v0    # "_arg0":[Ljava/lang/String;
    goto :goto_6c

    .line 106
    .end local v0    # "_arg0":[Ljava/lang/String;
    .end local v1    # "_arg0_length":I
    :sswitch_80
    const-string v5, "com.lge.systemservice.core.IFeliCaManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 109
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IFeliCaManager$Stub;->cmdSwitchWrite(I)Z

    move-result v2

    .line 110
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    if-eqz v2, :cond_93

    move v3, v4

    :cond_93
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 116
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Z
    :sswitch_98
    const-string v5, "com.lge.systemservice.core.IFeliCaManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 119
    .restart local v1    # "_arg0_length":I
    if-gez v1, :cond_b6

    .line 120
    const/4 v0, 0x0

    .line 125
    .local v0, "_arg0":[Ljava/lang/String;
    :goto_a4
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IFeliCaManager$Stub;->cmdSwitchRead([Ljava/lang/String;)Z

    move-result v2

    .line 126
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    if-eqz v2, :cond_ae

    move v3, v4

    :cond_ae
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_9

    .line 123
    .end local v0    # "_arg0":[Ljava/lang/String;
    .end local v2    # "_result":Z
    :cond_b6
    new-array v0, v1, [Ljava/lang/String;

    .restart local v0    # "_arg0":[Ljava/lang/String;
    goto :goto_a4

    .line 133
    .end local v0    # "_arg0":[Ljava/lang/String;
    .end local v1    # "_arg0_length":I
    :sswitch_b9
    const-string v5, "com.lge.systemservice.core.IFeliCaManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 136
    .local v0, "_arg0":F
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IFeliCaManager$Stub;->cmdFreqCalWrite(F)Z

    move-result v2

    .line 137
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    if-eqz v2, :cond_cc

    move v3, v4

    :cond_cc
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 143
    .end local v0    # "_arg0":F
    .end local v2    # "_result":Z
    :sswitch_d1
    const-string v5, "com.lge.systemservice.core.IFeliCaManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 146
    .restart local v1    # "_arg0_length":I
    if-gez v1, :cond_ef

    .line 147
    const/4 v0, 0x0

    .line 152
    .local v0, "_arg0":[Ljava/lang/String;
    :goto_dd
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IFeliCaManager$Stub;->cmdFreqCalRead([Ljava/lang/String;)Z

    move-result v2

    .line 153
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    if-eqz v2, :cond_e7

    move v3, v4

    :cond_e7
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_9

    .line 150
    .end local v0    # "_arg0":[Ljava/lang/String;
    .end local v2    # "_result":Z
    :cond_ef
    new-array v0, v1, [Ljava/lang/String;

    .restart local v0    # "_arg0":[Ljava/lang/String;
    goto :goto_dd

    .line 160
    .end local v0    # "_arg0":[Ljava/lang/String;
    .end local v1    # "_arg0_length":I
    :sswitch_f2
    const-string v5, "com.lge.systemservice.core.IFeliCaManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 163
    .restart local v1    # "_arg0_length":I
    if-gez v1, :cond_110

    .line 164
    const/4 v0, 0x0

    .line 169
    .restart local v0    # "_arg0":[Ljava/lang/String;
    :goto_fe
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IFeliCaManager$Stub;->cmdFreqCalRange([Ljava/lang/String;)Z

    move-result v2

    .line 170
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    if-eqz v2, :cond_108

    move v3, v4

    :cond_108
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_9

    .line 167
    .end local v0    # "_arg0":[Ljava/lang/String;
    .end local v2    # "_result":Z
    :cond_110
    new-array v0, v1, [Ljava/lang/String;

    .restart local v0    # "_arg0":[Ljava/lang/String;
    goto :goto_fe

    .line 177
    .end local v0    # "_arg0":[Ljava/lang/String;
    .end local v1    # "_arg0_length":I
    :sswitch_113
    const-string v5, "com.lge.systemservice.core.IFeliCaManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lcom/lge/systemservice/core/IFeliCaManager$Stub;->cmdRFRegCalLoad()Z

    move-result v2

    .line 179
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    if-eqz v2, :cond_122

    move v3, v4

    :cond_122
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 185
    .end local v2    # "_result":Z
    :sswitch_127
    const-string v5, "com.lge.systemservice.core.IFeliCaManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lcom/lge/systemservice/core/IFeliCaManager$Stub;->cmdRFRegCalCheck()Z

    move-result v2

    .line 187
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    if-eqz v2, :cond_136

    move v3, v4

    :cond_136
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 38
    nop

    :sswitch_data_13c
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_30
        0x3 -> :sswitch_50
        0x4 -> :sswitch_60
        0x5 -> :sswitch_80
        0x6 -> :sswitch_98
        0x7 -> :sswitch_b9
        0x8 -> :sswitch_d1
        0x9 -> :sswitch_f2
        0xa -> :sswitch_113
        0xb -> :sswitch_127
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
