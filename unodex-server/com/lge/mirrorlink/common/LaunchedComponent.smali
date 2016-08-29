.class public Lcom/lge/mirrorlink/common/LaunchedComponent;
.super Ljava/lang/Object;
.source "LaunchedComponent.java"


# static fields
.field public static MIRRORLINK_RTP_DEFAULT_PORT:I = 0x0

.field public static MIRRORLINK_UPNP_DEFAULT_PORT:I = 0x0

.field public static MIRRORLINK_VNC_DEFAULT_PORT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MirrorLinkServer"

.field private static _instance:Lcom/lge/mirrorlink/common/LaunchedComponent;


# instance fields
.field private CompInfo_Port:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private CompInfo_ProtocolID:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private IPaddress:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const/16 v0, 0x170d

    sput v0, Lcom/lge/mirrorlink/common/LaunchedComponent;->MIRRORLINK_VNC_DEFAULT_PORT:I

    .line 14
    const/16 v0, 0x1770

    sput v0, Lcom/lge/mirrorlink/common/LaunchedComponent;->MIRRORLINK_RTP_DEFAULT_PORT:I

    .line 15
    const/16 v0, 0x76c

    sput v0, Lcom/lge/mirrorlink/common/LaunchedComponent;->MIRRORLINK_UPNP_DEFAULT_PORT:I

    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mirrorlink/common/LaunchedComponent;->_instance:Lcom/lge/mirrorlink/common/LaunchedComponent;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/lge/mirrorlink/common/LaunchedComponent;->IPaddress:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/lge/mirrorlink/common/LaunchedComponent;->CompInfo_Port:Ljava/util/Map;

    .line 41
    iput-object v0, p0, Lcom/lge/mirrorlink/common/LaunchedComponent;->CompInfo_ProtocolID:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/mirrorlink/common/LaunchedComponent;->CompInfo_Port:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/mirrorlink/common/LaunchedComponent;->CompInfo_ProtocolID:Ljava/util/Map;

    .line 46
    return-void
.end method

.method private containsPortInfo(Ljava/lang/String;)Z
    .registers 3
    .param p1, "compid"    # Ljava/lang/String;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/lge/mirrorlink/common/LaunchedComponent;->CompInfo_Port:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private containsProtocolIDInfo(Ljava/lang/String;)Z
    .registers 3
    .param p1, "compid"    # Ljava/lang/String;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/lge/mirrorlink/common/LaunchedComponent;->CompInfo_ProtocolID:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static getInstance()Lcom/lge/mirrorlink/common/LaunchedComponent;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcom/lge/mirrorlink/common/LaunchedComponent;->_instance:Lcom/lge/mirrorlink/common/LaunchedComponent;

    if-nez v0, :cond_b

    .line 28
    new-instance v0, Lcom/lge/mirrorlink/common/LaunchedComponent;

    invoke-direct {v0}, Lcom/lge/mirrorlink/common/LaunchedComponent;-><init>()V

    sput-object v0, Lcom/lge/mirrorlink/common/LaunchedComponent;->_instance:Lcom/lge/mirrorlink/common/LaunchedComponent;

    .line 30
    :cond_b
    sget-object v0, Lcom/lge/mirrorlink/common/LaunchedComponent;->_instance:Lcom/lge/mirrorlink/common/LaunchedComponent;

    return-object v0
.end method

.method private getPortInfo(Ljava/lang/String;)I
    .registers 4
    .param p1, "compid"    # Ljava/lang/String;

    .prologue
    .line 112
    iget-object v1, p0, Lcom/lge/mirrorlink/common/LaunchedComponent;->CompInfo_Port:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 113
    .local v0, "port":Ljava/lang/Integer;
    if-eqz v0, :cond_f

    .line 114
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 116
    :cond_f
    const/4 v1, -0x1

    return v1
.end method

.method private getProtocolIDInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "compid"    # Ljava/lang/String;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/lge/mirrorlink/common/LaunchedComponent;->CompInfo_ProtocolID:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private putPortInfo(Ljava/lang/String;I)V
    .registers 4
    .param p1, "compid"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 76
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/lge/mirrorlink/common/LaunchedComponent;->putPortInfo(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 74
    return-void
.end method

.method private putPortInfo(Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 4
    .param p1, "compid"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/Integer;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lge/mirrorlink/common/LaunchedComponent;->CompInfo_Port:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    return-void
.end method

.method private putProtocolIDInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "compid"    # Ljava/lang/String;
    .param p2, "protocoID"    # Ljava/lang/String;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/lge/mirrorlink/common/LaunchedComponent;->CompInfo_ProtocolID:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lge/mirrorlink/common/LaunchedComponent;->CompInfo_Port:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 60
    iget-object v0, p0, Lcom/lge/mirrorlink/common/LaunchedComponent;->CompInfo_ProtocolID:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 57
    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .registers 3
    .param p1, "compid"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/lge/mirrorlink/common/LaunchedComponent;->containsPortInfo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0, p1}, Lcom/lge/mirrorlink/common/LaunchedComponent;->containsProtocolIDInfo(Ljava/lang/String;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getDefaultURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "componentID"    # Ljava/lang/String;
    .param p2, "ipAddress"    # Ljava/lang/String;

    .prologue
    .line 144
    const-string/jumbo v1, ""

    .line 145
    .local v1, "protocolID":Ljava/lang/String;
    const/4 v0, -0x1

    .line 147
    .local v0, "defaultPort":I
    if-nez p2, :cond_13

    .line 148
    const-string/jumbo v3, "MirrorLinkServer"

    const-string/jumbo v4, "[getDefaultURL] null ip address"

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string/jumbo v3, ""

    return-object v3

    .line 152
    :cond_13
    const-string/jumbo v3, "TerminalMode:VNC-Server"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 153
    const-string/jumbo v1, "VNC"

    .line 154
    sget v0, Lcom/lge/mirrorlink/common/LaunchedComponent;->MIRRORLINK_VNC_DEFAULT_PORT:I

    .line 169
    :goto_21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 171
    return-object v2

    .line 155
    .end local v2    # "url":Ljava/lang/String;
    :cond_52
    const-string/jumbo v3, "TerminalMode:RTP-Server"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 156
    const-string/jumbo v1, "RTP"

    .line 157
    sget v0, Lcom/lge/mirrorlink/common/LaunchedComponent;->MIRRORLINK_RTP_DEFAULT_PORT:I

    goto :goto_21

    .line 158
    :cond_61
    const-string/jumbo v3, "TerminalMode:UPnP-Server"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 159
    const-string/jumbo v1, "HTTP"

    .line 160
    sget v0, Lcom/lge/mirrorlink/common/LaunchedComponent;->MIRRORLINK_UPNP_DEFAULT_PORT:I

    goto :goto_21

    .line 165
    :cond_70
    const-string/jumbo v3, "MirrorLinkServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[getDefaultURL] invalid component id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string/jumbo v3, ""

    return-object v3
.end method

.method public getURL(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "compid"    # Ljava/lang/String;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/lge/mirrorlink/common/LaunchedComponent;->IPaddress:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/lge/mirrorlink/common/LaunchedComponent;->getURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "compid"    # Ljava/lang/String;
    .param p2, "ipAddress"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 131
    invoke-virtual {p0, p1}, Lcom/lge/mirrorlink/common/LaunchedComponent;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    if-eqz p2, :cond_42

    .line 132
    invoke-direct {p0, p1}, Lcom/lge/mirrorlink/common/LaunchedComponent;->getProtocolIDInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lge/mirrorlink/common/LaunchedComponent;->getPortInfo(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    return-object v0

    .line 138
    .end local v0    # "url":Ljava/lang/String;
    :cond_42
    const-string/jumbo v1, "MirrorLinkServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[getURL] fail to make url for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-object v4
.end method

.method public putCompInfo(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .param p1, "compid"    # Ljava/lang/String;
    .param p2, "protocolID"    # Ljava/lang/String;
    .param p3, "port"    # I

    .prologue
    .line 91
    invoke-direct {p0, p1, p3}, Lcom/lge/mirrorlink/common/LaunchedComponent;->putPortInfo(Ljava/lang/String;I)V

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/lge/mirrorlink/common/LaunchedComponent;->putProtocolIDInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public removeCompInfo(Ljava/lang/String;)V
    .registers 3
    .param p1, "compid"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/lge/mirrorlink/common/LaunchedComponent;->containsPortInfo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 66
    iget-object v0, p0, Lcom/lge/mirrorlink/common/LaunchedComponent;->CompInfo_Port:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_b
    invoke-direct {p0, p1}, Lcom/lge/mirrorlink/common/LaunchedComponent;->containsProtocolIDInfo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 70
    iget-object v0, p0, Lcom/lge/mirrorlink/common/LaunchedComponent;->CompInfo_ProtocolID:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_16
    return-void
.end method

.method public setIPaddress(Ljava/lang/String;)V
    .registers 2
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/lge/mirrorlink/common/LaunchedComponent;->IPaddress:Ljava/lang/String;

    .line 52
    return-void
.end method
