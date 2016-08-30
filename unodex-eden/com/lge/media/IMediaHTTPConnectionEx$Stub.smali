.class public abstract Lcom/lge/media/IMediaHTTPConnectionEx$Stub;
.super Landroid/os/Binder;
.source "IMediaHTTPConnectionEx.java"

# interfaces
.implements Lcom/lge/media/IMediaHTTPConnectionEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/media/IMediaHTTPConnectionEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/media/IMediaHTTPConnectionEx$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.media.IMediaHTTPConnectionEx"

.field static final TRANSACTION_getCurrentOffset:I = 0x7

.field static final TRANSACTION_getCurrentPackageName:I = 0x10

.field static final TRANSACTION_getRangeLastByte:I = 0xa

.field static final TRANSACTION_getRangeRequestInfo:I = 0xe

.field static final TRANSACTION_getResponseCode:I = 0xb

.field static final TRANSACTION_getResponseHeader:I = 0x6

.field static final TRANSACTION_getResponseHeaderFields:I = 0xd

.field static final TRANSACTION_isLocalNetwork:I = 0xf

.field static final TRANSACTION_isNetworkException:I = 0x13

.field static final TRANSACTION_isSupportRangeRequest:I = 0x9

.field static final TRANSACTION_setContentSize:I = 0x8

.field static final TRANSACTION_setDLNAByteRangeSeekMode:I = 0x2

.field static final TRANSACTION_setDLNAPauseMode:I = 0x3

.field static final TRANSACTION_setDLNAPlayback:I = 0x4

.field static final TRANSACTION_setDLNATimeSeekMode:I = 0x1

.field static final TRANSACTION_setDLNATimeSeekValue:I = 0x5

.field static final TRANSACTION_setTimeout:I = 0xc

.field static final TRANSACTION_verifyEOS:I = 0x11

.field static final TRANSACTION_verifyLocalHost:I = 0x12


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.lge.media.IMediaHTTPConnectionEx"

    invoke-virtual {p0, p0, v0}, Lcom/lge/media/IMediaHTTPConnectionEx$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/media/IMediaHTTPConnectionEx;
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
    const-string v1, "com.lge.media.IMediaHTTPConnectionEx"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/lge/media/IMediaHTTPConnectionEx;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/lge/media/IMediaHTTPConnectionEx;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/lge/media/IMediaHTTPConnectionEx$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/media/IMediaHTTPConnectionEx$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_16c

    .line 207
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_9
    return v3

    .line 42
    :sswitch_a
    const-string v6, "com.lge.media.IMediaHTTPConnectionEx"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 47
    :sswitch_10
    const-string v6, "com.lge.media.IMediaHTTPConnectionEx"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1c

    move v0, v3

    .line 50
    .local v0, "_arg0":Z
    :cond_1c
    invoke-virtual {p0, v0}, Lcom/lge/media/IMediaHTTPConnectionEx$Stub;->setDLNATimeSeekMode(Z)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 56
    .end local v0    # "_arg0":Z
    :sswitch_23
    const-string v6, "com.lge.media.IMediaHTTPConnectionEx"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2f

    move v0, v3

    .line 59
    .restart local v0    # "_arg0":Z
    :cond_2f
    invoke-virtual {p0, v0}, Lcom/lge/media/IMediaHTTPConnectionEx$Stub;->setDLNAByteRangeSeekMode(Z)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 65
    .end local v0    # "_arg0":Z
    :sswitch_36
    const-string v6, "com.lge.media.IMediaHTTPConnectionEx"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_42

    move v0, v3

    .line 68
    .restart local v0    # "_arg0":Z
    :cond_42
    invoke-virtual {p0, v0}, Lcom/lge/media/IMediaHTTPConnectionEx$Stub;->setDLNAPauseMode(Z)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 74
    .end local v0    # "_arg0":Z
    :sswitch_49
    const-string v6, "com.lge.media.IMediaHTTPConnectionEx"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_55

    move v0, v3

    .line 77
    .restart local v0    # "_arg0":Z
    :cond_55
    invoke-virtual {p0, v0}, Lcom/lge/media/IMediaHTTPConnectionEx$Stub;->setDLNAPlayback(Z)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 83
    .end local v0    # "_arg0":Z
    :sswitch_5c
    const-string v6, "com.lge.media.IMediaHTTPConnectionEx"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 86
    .local v0, "_arg0":J
    invoke-virtual {p0, v0, v1}, Lcom/lge/media/IMediaHTTPConnectionEx$Stub;->setDLNATimeSeekValue(J)V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 92
    .end local v0    # "_arg0":J
    :sswitch_6c
    const-string v6, "com.lge.media.IMediaHTTPConnectionEx"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/lge/media/IMediaHTTPConnectionEx$Stub;->getResponseHeader()Ljava/lang/String;

    move-result-object v4

    .line 94
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 100
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_7c
    const-string v6, "com.lge.media.IMediaHTTPConnectionEx"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/lge/media/IMediaHTTPConnectionEx$Stub;->getCurrentOffset()J

    move-result-wide v4

    .line 102
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_9

    .line 108
    .end local v4    # "_result":J
    :sswitch_8d
    const-string v6, "com.lge.media.IMediaHTTPConnectionEx"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 111
    .restart local v0    # "_arg0":J
    invoke-virtual {p0, v0, v1}, Lcom/lge/media/IMediaHTTPConnectionEx$Stub;->setContentSize(J)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 117
    .end local v0    # "_arg0":J
    :sswitch_9e
    const-string v6, "com.lge.media.IMediaHTTPConnectionEx"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/lge/media/IMediaHTTPConnectionEx$Stub;->isSupportRangeRequest()Z

    move-result v4

    .line 119
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    if-eqz v4, :cond_ad

    move v0, v3

    :cond_ad
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 125
    .end local v4    # "_result":Z
    :sswitch_b2
    const-string v6, "com.lge.media.IMediaHTTPConnectionEx"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/lge/media/IMediaHTTPConnectionEx$Stub;->getRangeLastByte()J

    move-result-wide v4

    .line 127
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_9

    .line 133
    .end local v4    # "_result":J
    :sswitch_c3
    const-string v6, "com.lge.media.IMediaHTTPConnectionEx"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/lge/media/IMediaHTTPConnectionEx$Stub;->getResponseCode()I

    move-result v4

    .line 135
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 141
    .end local v4    # "_result":I
    :sswitch_d4
    const-string v6, "com.lge.media.IMediaHTTPConnectionEx"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 145
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 146
    .local v2, "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/lge/media/IMediaHTTPConnectionEx$Stub;->setTimeout(II)V

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 152
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_e9
    const-string v6, "com.lge.media.IMediaHTTPConnectionEx"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/lge/media/IMediaHTTPConnectionEx$Stub;->getResponseHeaderFields()Ljava/lang/String;

    move-result-object v4

    .line 154
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 160
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_fa
    const-string v6, "com.lge.media.IMediaHTTPConnectionEx"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lcom/lge/media/IMediaHTTPConnectionEx$Stub;->getRangeRequestInfo()I

    move-result v4

    .line 162
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 168
    .end local v4    # "_result":I
    :sswitch_10b
    const-string v6, "com.lge.media.IMediaHTTPConnectionEx"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lcom/lge/media/IMediaHTTPConnectionEx$Stub;->isLocalNetwork()Z

    move-result v4

    .line 170
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    if-eqz v4, :cond_11a

    move v0, v3

    :cond_11a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 176
    .end local v4    # "_result":Z
    :sswitch_11f
    const-string v6, "com.lge.media.IMediaHTTPConnectionEx"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Lcom/lge/media/IMediaHTTPConnectionEx$Stub;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v4

    .line 178
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 184
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_130
    const-string v6, "com.lge.media.IMediaHTTPConnectionEx"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Lcom/lge/media/IMediaHTTPConnectionEx$Stub;->verifyEOS()Z

    move-result v4

    .line 186
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    if-eqz v4, :cond_13f

    move v0, v3

    :cond_13f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 192
    .end local v4    # "_result":Z
    :sswitch_144
    const-string v6, "com.lge.media.IMediaHTTPConnectionEx"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Lcom/lge/media/IMediaHTTPConnectionEx$Stub;->verifyLocalHost()Z

    move-result v4

    .line 194
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    if-eqz v4, :cond_153

    move v0, v3

    :cond_153
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 200
    .end local v4    # "_result":Z
    :sswitch_158
    const-string v6, "com.lge.media.IMediaHTTPConnectionEx"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Lcom/lge/media/IMediaHTTPConnectionEx$Stub;->isNetworkException()Z

    move-result v4

    .line 202
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    if-eqz v4, :cond_167

    move v0, v3

    :cond_167
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 38
    :sswitch_data_16c
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_23
        0x3 -> :sswitch_36
        0x4 -> :sswitch_49
        0x5 -> :sswitch_5c
        0x6 -> :sswitch_6c
        0x7 -> :sswitch_7c
        0x8 -> :sswitch_8d
        0x9 -> :sswitch_9e
        0xa -> :sswitch_b2
        0xb -> :sswitch_c3
        0xc -> :sswitch_d4
        0xd -> :sswitch_e9
        0xe -> :sswitch_fa
        0xf -> :sswitch_10b
        0x10 -> :sswitch_11f
        0x11 -> :sswitch_130
        0x12 -> :sswitch_144
        0x13 -> :sswitch_158
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
