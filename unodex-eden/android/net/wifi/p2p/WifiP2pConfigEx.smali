.class public Landroid/net/wifi/p2p/WifiP2pConfigEx;
.super Landroid/net/wifi/p2p/WifiP2pConfig;
.source "WifiP2pConfigEx.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pConfigEx;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public pin:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 99
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfigEx$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfigEx$1;-><init>()V

    .line 98
    sput-object v0, Landroid/net/wifi/p2p/WifiP2pConfigEx;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 113
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/p2p/WifiP2pConfigEx;)V
    .registers 4
    .param p1, "source"    # Landroid/net/wifi/p2p/WifiP2pConfigEx;

    .prologue
    .line 81
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 82
    if-eqz p1, :cond_1e

    .line 83
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pConfigEx;->deviceAddress:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfigEx;->deviceAddress:Ljava/lang/String;

    .line 84
    new-instance v0, Landroid/net/wifi/WpsInfo;

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pConfigEx;->wps:Landroid/net/wifi/WpsInfo;

    invoke-direct {v0, v1}, Landroid/net/wifi/WpsInfo;-><init>(Landroid/net/wifi/WpsInfo;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfigEx;->wps:Landroid/net/wifi/WpsInfo;

    .line 85
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pConfigEx;->groupOwnerIntent:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pConfigEx;->groupOwnerIntent:I

    .line 86
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pConfigEx;->netId:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pConfigEx;->netId:I

    .line 87
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pConfigEx;->pin:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfigEx;->pin:Ljava/lang/String;

    .line 89
    :cond_1e
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
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 20
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 21
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 23
    .local v2, "tokens":[Ljava/lang/String;
    array-length v3, v2

    if-lt v3, v7, :cond_23

    aget-object v3, v2, v5

    const-string v4, "P2P-GO-NEG-REQUEST"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 24
    aget-object v3, v2, v5

    const-string v4, "WFDS-PROV-DISC-DEFER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 25
    :cond_23
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Malformed supplicant event"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 28
    :cond_2b
    aget-object v3, v2, v6

    iput-object v3, p0, Landroid/net/wifi/p2p/WifiP2pConfigEx;->deviceAddress:Ljava/lang/String;

    .line 29
    new-instance v3, Landroid/net/wifi/WpsInfo;

    invoke-direct {v3}, Landroid/net/wifi/WpsInfo;-><init>()V

    iput-object v3, p0, Landroid/net/wifi/p2p/WifiP2pConfigEx;->wps:Landroid/net/wifi/WpsInfo;

    .line 31
    array-length v3, v2

    if-le v3, v7, :cond_5a

    .line 32
    aget-object v3, v2, v7

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, "nameVal":[Ljava/lang/String;
    const/4 v3, 0x1

    :try_start_42
    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_47
    .catch Ljava/lang/NumberFormatException; {:try_start_42 .. :try_end_47} :catch_5b

    move-result v0

    .line 40
    .local v0, "devPasswdId":I
    :goto_48
    packed-switch v0, :pswitch_data_74

    .line 60
    :pswitch_4b
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pConfigEx;->wps:Landroid/net/wifi/WpsInfo;

    iput v5, v3, Landroid/net/wifi/WpsInfo;->setup:I

    .line 65
    :goto_4f
    array-length v3, v2

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5a

    .line 66
    if-ne v0, v6, :cond_5a

    .line 67
    const/4 v3, 0x3

    aget-object v3, v2, v3

    iput-object v3, p0, Landroid/net/wifi/p2p/WifiP2pConfigEx;->pin:Ljava/lang/String;

    .line 71
    .end local v0    # "devPasswdId":I
    .end local v1    # "nameVal":[Ljava/lang/String;
    :cond_5a
    return-void

    .line 37
    .restart local v1    # "nameVal":[Ljava/lang/String;
    :catch_5b
    move-exception v3

    const/4 v0, 0x0

    .restart local v0    # "devPasswdId":I
    goto :goto_48

    .line 43
    :pswitch_5e
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pConfigEx;->wps:Landroid/net/wifi/WpsInfo;

    iput v6, v3, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_4f

    .line 47
    :pswitch_63
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pConfigEx;->wps:Landroid/net/wifi/WpsInfo;

    iput v5, v3, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_4f

    .line 51
    :pswitch_68
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pConfigEx;->wps:Landroid/net/wifi/WpsInfo;

    iput v7, v3, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_4f

    .line 56
    :pswitch_6d
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pConfigEx;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v4, 0x5

    iput v4, v3, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_4f

    .line 40
    nop

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_5e
        :pswitch_4b
        :pswitch_4b
        :pswitch_63
        :pswitch_68
        :pswitch_4b
        :pswitch_4b
        :pswitch_6d
    .end packed-switch
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 75
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    invoke-super {p0}, Landroid/net/wifi/p2p/WifiP2pConfig;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    const-string v1, "\n pin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pConfigEx;->pin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 93
    invoke-super {p0, p1, p2}, Landroid/net/wifi/p2p/WifiP2pConfig;->writeToParcel(Landroid/os/Parcel;I)V

    .line 94
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfigEx;->pin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    return-void
.end method
