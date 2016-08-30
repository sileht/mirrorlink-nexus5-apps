.class public Landroid/net/wifi/p2p/WifiP2pGroupEx;
.super Landroid/net/wifi/p2p/WifiP2pGroup;
.source "WifiP2pGroupEx.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pGroupEx;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mUseStaticIp:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 67
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pGroupEx$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pGroupEx$1;-><init>()V

    .line 66
    sput-object v0, Landroid/net/wifi/p2p/WifiP2pGroupEx;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 87
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pGroupEx;->mUseStaticIp:Z

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/p2p/WifiP2pGroupEx;)V
    .registers 3
    .param p1, "source"    # Landroid/net/wifi/p2p/WifiP2pGroupEx;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Landroid/net/wifi/p2p/WifiP2pGroup;)V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pGroupEx;->mUseStaticIp:Z

    .line 54
    if-eqz p1, :cond_c

    .line 55
    iget-boolean v0, p1, Landroid/net/wifi/p2p/WifiP2pGroupEx;->mUseStaticIp:Z

    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pGroupEx;->mUseStaticIp:Z

    .line 57
    :cond_c
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 10
    .param p1, "supplicantEvent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 17
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Ljava/lang/String;)V

    .line 11
    iput-boolean v4, p0, Landroid/net/wifi/p2p/WifiP2pGroupEx;->mUseStaticIp:Z

    .line 19
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 21
    .local v2, "tokens":[Ljava/lang/String;
    aget-object v3, v2, v4

    const-string v5, "P2P-GROUP"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 22
    array-length v5, v2

    move v3, v4

    :goto_18
    if-lt v3, v5, :cond_1b

    .line 29
    :cond_1a
    return-void

    .line 22
    :cond_1b
    aget-object v1, v2, v3

    .line 23
    .local v1, "token":Ljava/lang/String;
    const-string v6, "="

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, "nameValue":[Ljava/lang/String;
    aget-object v6, v0, v4

    const-string v7, "ip_addr"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_30

    .line 25
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/net/wifi/p2p/WifiP2pGroupEx;->mUseStaticIp:Z

    .line 22
    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_18
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public getUseStaticIp()Z
    .registers 2

    .prologue
    .line 32
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pGroupEx;->mUseStaticIp:Z

    return v0
.end method

.method public setUseStaticIp(Z)V
    .registers 2
    .param p1, "useStaticIp"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pGroupEx;->mUseStaticIp:Z

    .line 37
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 41
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    invoke-super {p0}, Landroid/net/wifi/p2p/WifiP2pGroup;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    const-string v1, "\n UseStaticIp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/p2p/WifiP2pGroupEx;->mUseStaticIp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 61
    invoke-super {p0, p1, p2}, Landroid/net/wifi/p2p/WifiP2pGroup;->writeToParcel(Landroid/os/Parcel;I)V

    .line 62
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pGroupEx;->mUseStaticIp:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 63
    return-void

    .line 62
    :cond_c
    const/4 v0, 0x0

    goto :goto_8
.end method
