.class public Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;
.super Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;
.source "WifiP2pProvDiscEventEx.java"


# static fields
.field public static final DEFAULT_PIN:I = 0x5


# instance fields
.field public go:Z

.field public ignore:Z

.field public join:Z

.field public wfds:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>()V

    .line 15
    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->wfds:Z

    .line 16
    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->join:Z

    .line 17
    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->go:Z

    .line 18
    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->ignore:Z

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 10
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>()V

    .line 15
    iput-boolean v3, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->wfds:Z

    .line 16
    iput-boolean v3, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->join:Z

    .line 17
    iput-boolean v3, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->go:Z

    .line 18
    iput-boolean v3, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->ignore:Z

    .line 37
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "tokens":[Ljava/lang/String;
    array-length v1, v0

    if-ge v1, v5, :cond_2e

    .line 40
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Malformed event "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 43
    :cond_2e
    aget-object v1, v0, v3

    const-string v2, "PBC-REQ"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_83

    .line 44
    iput v4, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->event:I

    .line 62
    :goto_3a
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 63
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    aget-object v2, v0, v4

    iput-object v2, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 65
    iget v1, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->event:I

    if-ne v1, v7, :cond_4f

    .line 66
    aget-object v1, v0, v5

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->pin:Ljava/lang/String;

    .line 72
    :cond_4f
    aget-object v1, v0, v3

    const-string v2, "WFDS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 73
    iget v1, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->event:I

    if-ne v1, v6, :cond_64

    array-length v1, v0

    if-le v1, v5, :cond_64

    .line 74
    aget-object v1, v0, v5

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->pin:Ljava/lang/String;

    .line 77
    :cond_64
    const-string v1, "join"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 78
    iput-boolean v4, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->join:Z

    .line 80
    :cond_6e
    const-string v1, "go"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 81
    iput-boolean v4, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->go:Z

    .line 83
    :cond_78
    const-string v1, "ignore"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 84
    iput-boolean v4, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->ignore:Z

    .line 86
    :cond_82
    return-void

    .line 46
    :cond_83
    aget-object v1, v0, v3

    const-string v2, "PBC-RESP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_90

    .line 47
    iput v5, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->event:I

    goto :goto_3a

    .line 49
    :cond_90
    aget-object v1, v0, v3

    const-string v2, "ENTER-PIN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 50
    iput v6, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->event:I

    goto :goto_3a

    .line 52
    :cond_9d
    aget-object v1, v0, v3

    const-string v2, "SHOW-PIN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 53
    iput v7, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->event:I

    goto :goto_3a

    .line 55
    :cond_aa
    aget-object v1, v0, v3

    const-string v2, "DEF-PIN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b8

    .line 56
    const/4 v1, 0x5

    iput v1, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->event:I

    goto :goto_3a

    .line 59
    :cond_b8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Malformed event "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 90
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    invoke-super {p0}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    const-string v1, "\n wfds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->wfds:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 92
    const-string v1, "\n join: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->join:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 93
    const-string v1, "\n go: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->go:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 94
    const-string v1, "\n ignore: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->ignore:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
