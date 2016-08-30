.class public abstract Lcom/lge/wifi/p2p/WifiP2pExtNative;
.super Ljava/lang/Object;
.source "WifiP2pExtNative.java"


# static fields
.field private static final mLock:Ljava/lang/Object;


# instance fields
.field public final mInterface:Ljava/lang/String;

.field public final mInterfacePrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/lge/wifi/p2p/WifiP2pExtNative;->mLock:Ljava/lang/Object;

    .line 24
    const-string v0, "wifip2pext_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/lge/wifi/p2p/WifiP2pExtNative;->mInterface:Ljava/lang/String;

    .line 29
    iget-object v0, p0, Lcom/lge/wifi/p2p/WifiP2pExtNative;->mInterface:Ljava/lang/String;

    const-string v1, "p2p0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IFNAME="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wifi/p2p/WifiP2pExtNative;->mInterfacePrefix:Ljava/lang/String;

    .line 34
    :goto_26
    return-void

    .line 32
    :cond_27
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/wifi/p2p/WifiP2pExtNative;->mInterfacePrefix:Ljava/lang/String;

    goto :goto_26
.end method

.method private native connectToSupplicantNative()Z
.end method

.method private native disconnectToSupplicantNative()V
.end method

.method private native doBooleanCommandNative(Ljava/lang/String;)Z
.end method

.method private native doIntCommandNative(Ljava/lang/String;)I
.end method

.method private native doStringCommandNative(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native interruptForEventNative()V
.end method

.method private native waitForEventNative()Ljava/lang/String;
.end method


# virtual methods
.method public connectToSupplicant()Z
    .registers 2

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/lge/wifi/p2p/WifiP2pExtNative;->connectToSupplicantNative()Z

    move-result v0

    return v0
.end method

.method public disconnectToSupplicant()V
    .registers 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/lge/wifi/p2p/WifiP2pExtNative;->disconnectToSupplicantNative()V

    .line 60
    return-void
.end method

.method public doBooleanCommand(Ljava/lang/String;)Z
    .registers 5
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 37
    sget-object v1, Lcom/lge/wifi/p2p/WifiP2pExtNative;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 38
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lge/wifi/p2p/WifiP2pExtNative;->mInterfacePrefix:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/wifi/p2p/WifiP2pExtNative;->doBooleanCommandNative(Ljava/lang/String;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 37
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public doIntCommand(Ljava/lang/String;)I
    .registers 5
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 43
    sget-object v1, Lcom/lge/wifi/p2p/WifiP2pExtNative;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 44
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lge/wifi/p2p/WifiP2pExtNative;->mInterfacePrefix:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/wifi/p2p/WifiP2pExtNative;->doIntCommandNative(Ljava/lang/String;)I

    move-result v0

    monitor-exit v1

    return v0

    .line 43
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public doStringCommand(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 49
    sget-object v1, Lcom/lge/wifi/p2p/WifiP2pExtNative;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 50
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lge/wifi/p2p/WifiP2pExtNative;->mInterfacePrefix:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/wifi/p2p/WifiP2pExtNative;->doStringCommandNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 49
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public interruptForEvent()V
    .registers 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/lge/wifi/p2p/WifiP2pExtNative;->interruptForEventNative()V

    .line 68
    return-void
.end method

.method public waitForEvent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/lge/wifi/p2p/WifiP2pExtNative;->waitForEventNative()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
