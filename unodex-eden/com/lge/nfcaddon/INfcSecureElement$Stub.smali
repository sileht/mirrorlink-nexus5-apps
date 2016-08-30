.class public abstract Lcom/lge/nfcaddon/INfcSecureElement$Stub;
.super Landroid/os/Binder;
.source "INfcSecureElement.java"

# interfaces
.implements Lcom/lge/nfcaddon/INfcSecureElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/nfcaddon/INfcSecureElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/nfcaddon/INfcSecureElement$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.nfcaddon.INfcSecureElement"

.field static final TRANSACTION_activeSwp:I = 0xb

.field static final TRANSACTION_closeSecureElementConnection:I = 0x2

.field static final TRANSACTION_deselectSecureElement:I = 0xc

.field static final TRANSACTION_exchangeAPDU:I = 0x3

.field static final TRANSACTION_getSecureElementList:I = 0x8

.field static final TRANSACTION_getSecureElementTechList:I = 0x4

.field static final TRANSACTION_getSecureElementUid:I = 0x5

.field static final TRANSACTION_getSelectedSecureElement:I = 0x9

.field static final TRANSACTION_openSecureElementConnection:I = 0x1

.field static final TRANSACTION_openSecureElementConnectionForTTIA:I = 0x6

.field static final TRANSACTION_selectSecureElement:I = 0xa

.field static final TRANSACTION_setSecureElementState:I = 0xd

.field static final TRANSACTION_setSecureElementStateForTTIA:I = 0x7

.field static final TRANSACTION_storeSePreference:I = 0xe


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.lge.nfcaddon.INfcSecureElement"

    invoke-virtual {p0, p0, v0}, Lcom/lge/nfcaddon/INfcSecureElement$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/nfcaddon/INfcSecureElement;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 26
    if-nez p0, :cond_4

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_3
    return-object v0

    .line 29
    :cond_4
    const-string v1, "com.lge.nfcaddon.INfcSecureElement"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/lge/nfcaddon/INfcSecureElement;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Lcom/lge/nfcaddon/INfcSecureElement;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Lcom/lge/nfcaddon/INfcSecureElement$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/nfcaddon/INfcSecureElement$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 37
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

    .line 41
    sparse-switch p1, :sswitch_data_11c

    .line 179
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_8
    return v3

    .line 45
    :sswitch_9
    const-string v4, "com.lge.nfcaddon.INfcSecureElement"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 50
    :sswitch_f
    const-string v4, "com.lge.nfcaddon.INfcSecureElement"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/lge/nfcaddon/INfcSecureElement$Stub;->openSecureElementConnection()I

    move-result v2

    .line 52
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 58
    .end local v2    # "_result":I
    :sswitch_1f
    const-string v4, "com.lge.nfcaddon.INfcSecureElement"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 61
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/nfcaddon/INfcSecureElement$Stub;->closeSecureElementConnection(I)I

    move-result v2

    .line 62
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 68
    .end local v0    # "_arg0":I
    .end local v2    # "_result":I
    :sswitch_33
    const-string v4, "com.lge.nfcaddon.INfcSecureElement"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 72
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 73
    .local v1, "_arg1":[B
    invoke-virtual {p0, v0, v1}, Lcom/lge/nfcaddon/INfcSecureElement$Stub;->exchangeAPDU(I[B)[B

    move-result-object v2

    .line 74
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_8

    .line 80
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[B
    .end local v2    # "_result":[B
    :sswitch_4b
    const-string v4, "com.lge.nfcaddon.INfcSecureElement"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 83
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/nfcaddon/INfcSecureElement$Stub;->getSecureElementTechList(I)[I

    move-result-object v2

    .line 84
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_8

    .line 90
    .end local v0    # "_arg0":I
    .end local v2    # "_result":[I
    :sswitch_5f
    const-string v4, "com.lge.nfcaddon.INfcSecureElement"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 93
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/nfcaddon/INfcSecureElement$Stub;->getSecureElementUid(I)[B

    move-result-object v2

    .line 94
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_8

    .line 100
    .end local v0    # "_arg0":I
    .end local v2    # "_result":[B
    :sswitch_73
    const-string v4, "com.lge.nfcaddon.INfcSecureElement"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 103
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/nfcaddon/INfcSecureElement$Stub;->openSecureElementConnectionForTTIA(I)I

    move-result v2

    .line 104
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 110
    .end local v0    # "_arg0":I
    .end local v2    # "_result":I
    :sswitch_87
    const-string v4, "com.lge.nfcaddon.INfcSecureElement"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 113
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/nfcaddon/INfcSecureElement$Stub;->setSecureElementStateForTTIA(I)I

    move-result v2

    .line 114
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    .line 120
    .end local v0    # "_arg0":I
    .end local v2    # "_result":I
    :sswitch_9c
    const-string v4, "com.lge.nfcaddon.INfcSecureElement"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/lge/nfcaddon/INfcSecureElement$Stub;->getSecureElementList()[I

    move-result-object v2

    .line 122
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_8

    .line 128
    .end local v2    # "_result":[I
    :sswitch_ad
    const-string v4, "com.lge.nfcaddon.INfcSecureElement"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/lge/nfcaddon/INfcSecureElement$Stub;->getSelectedSecureElement()I

    move-result v2

    .line 130
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    .line 136
    .end local v2    # "_result":I
    :sswitch_be
    const-string v4, "com.lge.nfcaddon.INfcSecureElement"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 139
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/nfcaddon/INfcSecureElement$Stub;->selectSecureElement(I)I

    move-result v2

    .line 140
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    .line 146
    .end local v0    # "_arg0":I
    .end local v2    # "_result":I
    :sswitch_d3
    const-string v4, "com.lge.nfcaddon.INfcSecureElement"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/lge/nfcaddon/INfcSecureElement$Stub;->activeSwp()I

    move-result v2

    .line 148
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    .line 154
    .end local v2    # "_result":I
    :sswitch_e4
    const-string v4, "com.lge.nfcaddon.INfcSecureElement"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/lge/nfcaddon/INfcSecureElement$Stub;->deselectSecureElement()I

    move-result v2

    .line 156
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    .line 162
    .end local v2    # "_result":I
    :sswitch_f5
    const-string v4, "com.lge.nfcaddon.INfcSecureElement"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_109

    move v0, v3

    .line 165
    .local v0, "_arg0":Z
    :goto_101
    invoke-virtual {p0, v0}, Lcom/lge/nfcaddon/INfcSecureElement$Stub;->setSecureElementState(Z)V

    .line 166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 164
    .end local v0    # "_arg0":Z
    :cond_109
    const/4 v0, 0x0

    goto :goto_101

    .line 171
    :sswitch_10b
    const-string v4, "com.lge.nfcaddon.INfcSecureElement"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 174
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/nfcaddon/INfcSecureElement$Stub;->storeSePreference(I)V

    .line 175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 41
    :sswitch_data_11c
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_1f
        0x3 -> :sswitch_33
        0x4 -> :sswitch_4b
        0x5 -> :sswitch_5f
        0x6 -> :sswitch_73
        0x7 -> :sswitch_87
        0x8 -> :sswitch_9c
        0x9 -> :sswitch_ad
        0xa -> :sswitch_be
        0xb -> :sswitch_d3
        0xc -> :sswitch_e4
        0xd -> :sswitch_f5
        0xe -> :sswitch_10b
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
