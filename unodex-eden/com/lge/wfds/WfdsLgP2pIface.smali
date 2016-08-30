.class public Lcom/lge/wfds/WfdsLgP2pIface;
.super Ljava/lang/Object;
.source "WfdsLgP2pIface.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WfdsLgP2pIface"

.field private static final mLGP2pEventListener:Lcom/lge/wifi/p2p/LGP2pManager$LGP2pEventListener;

.field private static mLGP2pManager:Lcom/lge/wifi/p2p/LGP2pManager;

.field private static mLGP2pManagerChannel:Lcom/lge/wifi/p2p/LGP2pManager$LGP2pChannel;

.field private static mWfdsLgP2pIface:Lcom/lge/wfds/WfdsLgP2pIface;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 20
    sput-object v0, Lcom/lge/wfds/WfdsLgP2pIface;->mWfdsLgP2pIface:Lcom/lge/wfds/WfdsLgP2pIface;

    .line 23
    sput-object v0, Lcom/lge/wfds/WfdsLgP2pIface;->mLGP2pManager:Lcom/lge/wifi/p2p/LGP2pManager;

    .line 24
    sput-object v0, Lcom/lge/wfds/WfdsLgP2pIface;->mLGP2pManagerChannel:Lcom/lge/wifi/p2p/LGP2pManager$LGP2pChannel;

    .line 29
    new-instance v0, Lcom/lge/wfds/WfdsLgP2pIface$1;

    invoke-direct {v0}, Lcom/lge/wfds/WfdsLgP2pIface$1;-><init>()V

    sput-object v0, Lcom/lge/wfds/WfdsLgP2pIface;->mLGP2pEventListener:Lcom/lge/wifi/p2p/LGP2pManager$LGP2pEventListener;

    .line 51
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/wfds/WfdsLgP2pIface;->mContext:Landroid/content/Context;

    .line 54
    iput-object p1, p0, Lcom/lge/wfds/WfdsLgP2pIface;->mContext:Landroid/content/Context;

    .line 55
    invoke-direct {p0}, Lcom/lge/wfds/WfdsLgP2pIface;->initLGP2pManager()V

    .line 56
    return-void
.end method

.method static synthetic access$0(Lcom/lge/wifi/p2p/LGP2pManager$LGP2pChannel;)V
    .registers 1

    .prologue
    .line 24
    sput-object p0, Lcom/lge/wfds/WfdsLgP2pIface;->mLGP2pManagerChannel:Lcom/lge/wifi/p2p/LGP2pManager$LGP2pChannel;

    return-void
.end method

.method static synthetic access$1(Lcom/lge/wifi/p2p/LGP2pManager;)V
    .registers 1

    .prologue
    .line 23
    sput-object p0, Lcom/lge/wfds/WfdsLgP2pIface;->mLGP2pManager:Lcom/lge/wifi/p2p/LGP2pManager;

    return-void
.end method

.method static synthetic access$2(Lcom/lge/wfds/WfdsLgP2pIface;)V
    .registers 1

    .prologue
    .line 20
    sput-object p0, Lcom/lge/wfds/WfdsLgP2pIface;->mWfdsLgP2pIface:Lcom/lge/wfds/WfdsLgP2pIface;

    return-void
.end method

.method private deinitLGP2pManager()V
    .registers 3

    .prologue
    .line 102
    sget-object v0, Lcom/lge/wfds/WfdsLgP2pIface;->mLGP2pManager:Lcom/lge/wifi/p2p/LGP2pManager;

    if-eqz v0, :cond_12

    .line 103
    sget-object v0, Lcom/lge/wfds/WfdsLgP2pIface;->mLGP2pManagerChannel:Lcom/lge/wifi/p2p/LGP2pManager$LGP2pChannel;

    if-eqz v0, :cond_f

    .line 104
    sget-object v0, Lcom/lge/wfds/WfdsLgP2pIface;->mLGP2pManager:Lcom/lge/wifi/p2p/LGP2pManager;

    sget-object v1, Lcom/lge/wfds/WfdsLgP2pIface;->mLGP2pManagerChannel:Lcom/lge/wifi/p2p/LGP2pManager$LGP2pChannel;

    invoke-virtual {v0, v1}, Lcom/lge/wifi/p2p/LGP2pManager;->deinitialize(Lcom/lge/wifi/p2p/LGP2pManager$LGP2pChannel;)V

    .line 106
    :cond_f
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/wfds/WfdsLgP2pIface;->mLGP2pManager:Lcom/lge/wifi/p2p/LGP2pManager;

    .line 108
    :cond_12
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lge/wfds/WfdsLgP2pIface;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-static {}, Lcom/lge/wifi/p2p/LGP2pManagerFactory;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_8

    .line 71
    :goto_7
    return-object v0

    .line 63
    :cond_8
    sget-object v1, Lcom/lge/wfds/WfdsLgP2pIface;->mWfdsLgP2pIface:Lcom/lge/wfds/WfdsLgP2pIface;

    if-eqz v1, :cond_14

    .line 64
    sget-object v1, Lcom/lge/wfds/WfdsLgP2pIface;->mLGP2pManager:Lcom/lge/wifi/p2p/LGP2pManager;

    if-eqz v1, :cond_14

    .line 65
    sget-object v1, Lcom/lge/wfds/WfdsLgP2pIface;->mLGP2pManagerChannel:Lcom/lge/wifi/p2p/LGP2pManager$LGP2pChannel;

    if-nez v1, :cond_21

    .line 66
    :cond_14
    sput-object v0, Lcom/lge/wfds/WfdsLgP2pIface;->mWfdsLgP2pIface:Lcom/lge/wfds/WfdsLgP2pIface;

    .line 67
    sput-object v0, Lcom/lge/wfds/WfdsLgP2pIface;->mLGP2pManager:Lcom/lge/wifi/p2p/LGP2pManager;

    .line 68
    sput-object v0, Lcom/lge/wfds/WfdsLgP2pIface;->mLGP2pManagerChannel:Lcom/lge/wifi/p2p/LGP2pManager$LGP2pChannel;

    .line 69
    new-instance v0, Lcom/lge/wfds/WfdsLgP2pIface;

    invoke-direct {v0, p0}, Lcom/lge/wfds/WfdsLgP2pIface;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lge/wfds/WfdsLgP2pIface;->mWfdsLgP2pIface:Lcom/lge/wfds/WfdsLgP2pIface;

    .line 71
    :cond_21
    sget-object v0, Lcom/lge/wfds/WfdsLgP2pIface;->mWfdsLgP2pIface:Lcom/lge/wfds/WfdsLgP2pIface;

    goto :goto_7
.end method

.method private initLGP2pManager()V
    .registers 5

    .prologue
    .line 79
    invoke-static {}, Lcom/lge/wifi/p2p/LGP2pManagerFactory;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 96
    :cond_6
    :goto_6
    return-void

    .line 86
    :cond_7
    sget-object v0, Lcom/lge/wfds/WfdsLgP2pIface;->mLGP2pManager:Lcom/lge/wifi/p2p/LGP2pManager;

    if-nez v0, :cond_11

    .line 87
    invoke-static {}, Lcom/lge/wifi/p2p/LGP2pManagerFactory;->getInstance()Lcom/lge/wifi/p2p/LGP2pManager;

    move-result-object v0

    sput-object v0, Lcom/lge/wfds/WfdsLgP2pIface;->mLGP2pManager:Lcom/lge/wifi/p2p/LGP2pManager;

    .line 90
    :cond_11
    sget-object v0, Lcom/lge/wfds/WfdsLgP2pIface;->mLGP2pManager:Lcom/lge/wifi/p2p/LGP2pManager;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/lge/wfds/WfdsLgP2pIface;->mLGP2pManagerChannel:Lcom/lge/wifi/p2p/LGP2pManager$LGP2pChannel;

    if-nez v0, :cond_6

    .line 94
    sget-object v0, Lcom/lge/wfds/WfdsLgP2pIface;->mLGP2pManager:Lcom/lge/wifi/p2p/LGP2pManager;

    iget-object v1, p0, Lcom/lge/wfds/WfdsLgP2pIface;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/wfds/WfdsLgP2pIface;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    sget-object v3, Lcom/lge/wfds/WfdsLgP2pIface;->mLGP2pEventListener:Lcom/lge/wifi/p2p/LGP2pManager$LGP2pEventListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/wifi/p2p/LGP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Lcom/lge/wifi/p2p/LGP2pManager$LGP2pEventListener;)Lcom/lge/wifi/p2p/LGP2pManager$LGP2pChannel;

    move-result-object v0

    sput-object v0, Lcom/lge/wfds/WfdsLgP2pIface;->mLGP2pManagerChannel:Lcom/lge/wifi/p2p/LGP2pManager$LGP2pChannel;

    goto :goto_6
.end method

.method public static isEnabled()Z
    .registers 1

    .prologue
    .line 75
    invoke-static {}, Lcom/lge/wifi/p2p/LGP2pManagerFactory;->isEnabled()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public p2pFind(I)Z
    .registers 6
    .param p1, "channel"    # I

    .prologue
    const/4 v0, 0x0

    .line 123
    sget-object v1, Lcom/lge/wfds/WfdsLgP2pIface;->mLGP2pManager:Lcom/lge/wifi/p2p/LGP2pManager;

    if-eqz v1, :cond_9

    .line 124
    sget-object v1, Lcom/lge/wfds/WfdsLgP2pIface;->mLGP2pManagerChannel:Lcom/lge/wifi/p2p/LGP2pManager$LGP2pChannel;

    if-nez v1, :cond_a

    .line 130
    :cond_9
    :goto_9
    return v0

    .line 127
    :cond_a
    const/4 v1, 0x1

    if-lt p1, v1, :cond_11

    const/16 v1, 0xb

    if-le p1, v1, :cond_19

    :cond_11
    const/16 v1, 0x24

    if-lt p1, v1, :cond_24

    const/16 v1, 0xa5

    if-gt p1, v1, :cond_24

    .line 128
    :cond_19
    sget-object v1, Lcom/lge/wfds/WfdsLgP2pIface;->mLGP2pManager:Lcom/lge/wifi/p2p/LGP2pManager;

    sget-object v2, Lcom/lge/wfds/WfdsLgP2pIface;->mLGP2pManagerChannel:Lcom/lge/wifi/p2p/LGP2pManager$LGP2pChannel;

    sget-object v3, Lcom/lge/wifi/p2p/LGP2pFindType;->ONE_CHANNEL:Lcom/lge/wifi/p2p/LGP2pFindType;

    invoke-virtual {v1, v2, v0, v3, p1}, Lcom/lge/wifi/p2p/LGP2pManager;->p2pFind(Lcom/lge/wifi/p2p/LGP2pManager$LGP2pChannel;ILcom/lge/wifi/p2p/LGP2pFindType;I)Z

    move-result v0

    goto :goto_9

    .line 130
    :cond_24
    sget-object v1, Lcom/lge/wfds/WfdsLgP2pIface;->mLGP2pManager:Lcom/lge/wifi/p2p/LGP2pManager;

    sget-object v2, Lcom/lge/wfds/WfdsLgP2pIface;->mLGP2pManagerChannel:Lcom/lge/wifi/p2p/LGP2pManager$LGP2pChannel;

    invoke-virtual {v1, v2, v0}, Lcom/lge/wifi/p2p/LGP2pManager;->p2pFind(Lcom/lge/wifi/p2p/LGP2pManager$LGP2pChannel;I)Z

    move-result v0

    goto :goto_9
.end method

.method public p2pFind(Z)Z
    .registers 6
    .param p1, "social"    # Z

    .prologue
    const/4 v0, 0x0

    .line 111
    sget-object v1, Lcom/lge/wfds/WfdsLgP2pIface;->mLGP2pManager:Lcom/lge/wifi/p2p/LGP2pManager;

    if-eqz v1, :cond_9

    .line 112
    sget-object v1, Lcom/lge/wfds/WfdsLgP2pIface;->mLGP2pManagerChannel:Lcom/lge/wifi/p2p/LGP2pManager$LGP2pChannel;

    if-nez v1, :cond_a

    .line 118
    :cond_9
    :goto_9
    return v0

    .line 115
    :cond_a
    if-eqz p1, :cond_17

    .line 116
    sget-object v1, Lcom/lge/wfds/WfdsLgP2pIface;->mLGP2pManager:Lcom/lge/wifi/p2p/LGP2pManager;

    sget-object v2, Lcom/lge/wfds/WfdsLgP2pIface;->mLGP2pManagerChannel:Lcom/lge/wifi/p2p/LGP2pManager$LGP2pChannel;

    sget-object v3, Lcom/lge/wifi/p2p/LGP2pFindType;->SOCIAL:Lcom/lge/wifi/p2p/LGP2pFindType;

    invoke-virtual {v1, v2, v0, v3, v0}, Lcom/lge/wifi/p2p/LGP2pManager;->p2pFind(Lcom/lge/wifi/p2p/LGP2pManager$LGP2pChannel;ILcom/lge/wifi/p2p/LGP2pFindType;I)Z

    move-result v0

    goto :goto_9

    .line 118
    :cond_17
    sget-object v1, Lcom/lge/wfds/WfdsLgP2pIface;->mLGP2pManager:Lcom/lge/wifi/p2p/LGP2pManager;

    sget-object v2, Lcom/lge/wfds/WfdsLgP2pIface;->mLGP2pManagerChannel:Lcom/lge/wifi/p2p/LGP2pManager$LGP2pChannel;

    invoke-virtual {v1, v2, v0}, Lcom/lge/wifi/p2p/LGP2pManager;->p2pFind(Lcom/lge/wifi/p2p/LGP2pManager$LGP2pChannel;I)Z

    move-result v0

    goto :goto_9
.end method

.method public p2pFindBlock(Z)Z
    .registers 4
    .param p1, "findBlock"    # Z

    .prologue
    .line 143
    sget-object v0, Lcom/lge/wfds/WfdsLgP2pIface;->mLGP2pManager:Lcom/lge/wifi/p2p/LGP2pManager;

    if-eqz v0, :cond_8

    .line 144
    sget-object v0, Lcom/lge/wfds/WfdsLgP2pIface;->mLGP2pManagerChannel:Lcom/lge/wifi/p2p/LGP2pManager$LGP2pChannel;

    if-nez v0, :cond_a

    .line 145
    :cond_8
    const/4 v0, 0x0

    .line 147
    :goto_9
    return v0

    :cond_a
    sget-object v0, Lcom/lge/wfds/WfdsLgP2pIface;->mLGP2pManager:Lcom/lge/wifi/p2p/LGP2pManager;

    sget-object v1, Lcom/lge/wfds/WfdsLgP2pIface;->mLGP2pManagerChannel:Lcom/lge/wifi/p2p/LGP2pManager$LGP2pChannel;

    invoke-virtual {v0, v1, p1}, Lcom/lge/wifi/p2p/LGP2pManager;->p2pFindBlock(Lcom/lge/wifi/p2p/LGP2pManager$LGP2pChannel;Z)Z

    move-result v0

    goto :goto_9
.end method

.method public p2pStopFind(Z)Z
    .registers 4
    .param p1, "forced"    # Z

    .prologue
    .line 135
    sget-object v0, Lcom/lge/wfds/WfdsLgP2pIface;->mLGP2pManager:Lcom/lge/wifi/p2p/LGP2pManager;

    if-eqz v0, :cond_8

    .line 136
    sget-object v0, Lcom/lge/wfds/WfdsLgP2pIface;->mLGP2pManagerChannel:Lcom/lge/wifi/p2p/LGP2pManager$LGP2pChannel;

    if-nez v0, :cond_a

    .line 137
    :cond_8
    const/4 v0, 0x0

    .line 139
    :goto_9
    return v0

    :cond_a
    sget-object v0, Lcom/lge/wfds/WfdsLgP2pIface;->mLGP2pManager:Lcom/lge/wifi/p2p/LGP2pManager;

    sget-object v1, Lcom/lge/wfds/WfdsLgP2pIface;->mLGP2pManagerChannel:Lcom/lge/wifi/p2p/LGP2pManager$LGP2pChannel;

    invoke-virtual {v0, v1, p1}, Lcom/lge/wifi/p2p/LGP2pManager;->p2pStopFind(Lcom/lge/wifi/p2p/LGP2pManager$LGP2pChannel;Z)Z

    move-result v0

    goto :goto_9
.end method
