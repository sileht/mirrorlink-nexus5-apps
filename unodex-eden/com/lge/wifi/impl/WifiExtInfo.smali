.class public Lcom/lge/wifi/impl/WifiExtInfo;
.super Ljava/lang/Object;
.source "WifiExtInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/wifi/impl/WifiExtInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCipher:Ljava/lang/String;

.field private mDevMode:Ljava/lang/String;

.field private mEAPMethod:Ljava/lang/String;

.field private mFreq:I

.field private mKeyMgmt:Ljava/lang/String;

.field private mSecurity:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 126
    new-instance v0, Lcom/lge/wifi/impl/WifiExtInfo$1;

    invoke-direct {v0}, Lcom/lge/wifi/impl/WifiExtInfo$1;-><init>()V

    .line 125
    sput-object v0, Lcom/lge/wifi/impl/WifiExtInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 141
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/wifi/impl/WifiExtInfo;->mFreq:I

    .line 22
    iput-object v1, p0, Lcom/lge/wifi/impl/WifiExtInfo;->mDevMode:Ljava/lang/String;

    .line 23
    iput-object v1, p0, Lcom/lge/wifi/impl/WifiExtInfo;->mKeyMgmt:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/lge/wifi/impl/WifiExtInfo;->mCipher:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/lge/wifi/impl/WifiExtInfo;->mSecurity:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/lge/wifi/impl/WifiExtInfo;->mEAPMethod:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/lge/wifi/impl/WifiExtInfo;)V
    .registers 3
    .param p1, "source"    # Lcom/lge/wifi/impl/WifiExtInfo;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    if-eqz p1, :cond_1d

    .line 35
    iget v0, p1, Lcom/lge/wifi/impl/WifiExtInfo;->mFreq:I

    iput v0, p0, Lcom/lge/wifi/impl/WifiExtInfo;->mFreq:I

    .line 36
    iget-object v0, p1, Lcom/lge/wifi/impl/WifiExtInfo;->mDevMode:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/wifi/impl/WifiExtInfo;->mDevMode:Ljava/lang/String;

    .line 37
    iget-object v0, p1, Lcom/lge/wifi/impl/WifiExtInfo;->mKeyMgmt:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/wifi/impl/WifiExtInfo;->mKeyMgmt:Ljava/lang/String;

    .line 38
    iget-object v0, p1, Lcom/lge/wifi/impl/WifiExtInfo;->mCipher:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/wifi/impl/WifiExtInfo;->mCipher:Ljava/lang/String;

    .line 39
    iget-object v0, p1, Lcom/lge/wifi/impl/WifiExtInfo;->mSecurity:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/wifi/impl/WifiExtInfo;->mSecurity:Ljava/lang/String;

    .line 40
    iget-object v0, p1, Lcom/lge/wifi/impl/WifiExtInfo;->mEAPMethod:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/wifi/impl/WifiExtInfo;->mEAPMethod:Ljava/lang/String;

    .line 42
    :cond_1d
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public getCipher()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiExtInfo;->mCipher:Ljava/lang/String;

    return-object v0
.end method

.method public getDevMode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiExtInfo;->mDevMode:Ljava/lang/String;

    return-object v0
.end method

.method public getEAPMETHOD()Ljava/lang/String;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiExtInfo;->mEAPMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getFreq()I
    .registers 2

    .prologue
    .line 50
    iget v0, p0, Lcom/lge/wifi/impl/WifiExtInfo;->mFreq:I

    return v0
.end method

.method public getKeyMgmt()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiExtInfo;->mKeyMgmt:Ljava/lang/String;

    return-object v0
.end method

.method public getSECTYPE()Ljava/lang/String;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiExtInfo;->mSecurity:Ljava/lang/String;

    return-object v0
.end method

.method public setCipher(Ljava/lang/String;)V
    .registers 2
    .param p1, "cipher"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/lge/wifi/impl/WifiExtInfo;->mCipher:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setDevMode(Ljava/lang/String;)V
    .registers 2
    .param p1, "devMode"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/lge/wifi/impl/WifiExtInfo;->mDevMode:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setEAPMETHOD(Ljava/lang/String;)V
    .registers 2
    .param p1, "EAPMETHOD"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/lge/wifi/impl/WifiExtInfo;->mEAPMethod:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setFreq(I)V
    .registers 2
    .param p1, "freq"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/lge/wifi/impl/WifiExtInfo;->mFreq:I

    .line 47
    return-void
.end method

.method public setKeyMgmt(Ljava/lang/String;)V
    .registers 2
    .param p1, "key_mgmt"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/lge/wifi/impl/WifiExtInfo;->mKeyMgmt:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setSECTYPE(Ljava/lang/String;)V
    .registers 2
    .param p1, "SECTYPE"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/lge/wifi/impl/WifiExtInfo;->mSecurity:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 95
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 96
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string v0, "<none>"

    .line 98
    .local v0, "none":Ljava/lang/String;
    const-string v2, "Freq: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lcom/lge/wifi/impl/WifiExtInfo;->mFreq:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 99
    const-string v3, ", DevMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Lcom/lge/wifi/impl/WifiExtInfo;->mDevMode:Ljava/lang/String;

    if-nez v2, :cond_61

    move-object v2, v0

    :goto_1e
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 100
    const-string v3, ", KeyMgmt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Lcom/lge/wifi/impl/WifiExtInfo;->mKeyMgmt:Ljava/lang/String;

    if-nez v2, :cond_64

    move-object v2, v0

    :goto_2d
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 101
    const-string v3, ", Cipher: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Lcom/lge/wifi/impl/WifiExtInfo;->mCipher:Ljava/lang/String;

    if-nez v2, :cond_67

    move-object v2, v0

    :goto_3c
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 102
    const-string v3, ", EAPMETHOD: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Lcom/lge/wifi/impl/WifiExtInfo;->mEAPMethod:Ljava/lang/String;

    if-nez v2, :cond_6a

    move-object v2, v0

    :goto_4b
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 103
    const-string v3, ", SECTYPE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/wifi/impl/WifiExtInfo;->mSecurity:Ljava/lang/String;

    if-nez v3, :cond_6d

    .end local v0    # "none":Ljava/lang/String;
    :goto_59
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 99
    .restart local v0    # "none":Ljava/lang/String;
    :cond_61
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiExtInfo;->mDevMode:Ljava/lang/String;

    goto :goto_1e

    .line 100
    :cond_64
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiExtInfo;->mKeyMgmt:Ljava/lang/String;

    goto :goto_2d

    .line 101
    :cond_67
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiExtInfo;->mCipher:Ljava/lang/String;

    goto :goto_3c

    .line 102
    :cond_6a
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiExtInfo;->mEAPMethod:Ljava/lang/String;

    goto :goto_4b

    .line 103
    :cond_6d
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiExtInfo;->mSecurity:Ljava/lang/String;

    goto :goto_59
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 116
    iget v0, p0, Lcom/lge/wifi/impl/WifiExtInfo;->mFreq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiExtInfo;->mDevMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiExtInfo;->mKeyMgmt:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiExtInfo;->mCipher:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiExtInfo;->mSecurity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiExtInfo;->mEAPMethod:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    return-void
.end method
