.class public Landroid/net/wifi/WifiManagerProxy;
.super Ljava/lang/Object;
.source "WifiManagerProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiManagerProxy"

.field private static setVZWWifiApEnabledMethod:Ljava/lang/reflect/Method;


# instance fields
.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 24
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 25
    const-class v2, Landroid/net/wifi/WifiConfiguration;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    .line 30
    .local v0, "setVZWWifiApEnabledParamType":[Ljava/lang/Class;
    :try_start_d
    const-class v1, Landroid/net/wifi/WifiManager;

    const-string v2, "setVZWWifiApEnabled"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/net/wifi/WifiManagerProxy;->setVZWWifiApEnabledMethod:Ljava/lang/reflect/Method;
    :try_end_17
    .catch Ljava/lang/NoSuchMethodException; {:try_start_d .. :try_end_17} :catch_18

    .line 35
    :goto_17
    return-void

    :catch_18
    move-exception v1

    goto :goto_17
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    if-eqz p1, :cond_17

    .line 44
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Landroid/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 45
    const-string v0, "WifiManagerProxy"

    const-string v1, "WifiManagerProxy is created"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :goto_16
    return-void

    .line 48
    :cond_17
    const-string v0, "WifiManagerProxy"

    const-string v1, "WifiManagerProxy is created - fail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method


# virtual methods
.method public getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Landroid/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_b

    .line 134
    iget-object v0, p0, Landroid/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 136
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isWifiApEnabled()Z
    .registers 4

    .prologue
    .line 124
    const-string v0, "WifiManagerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "E911 WiFi :isWifiApEnabled :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Landroid/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_28

    .line 126
    const-string v0, "WifiManagerProxy"

    const-string v1, "E911 WiFi :isWifiApEnabled start:"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Landroid/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    .line 129
    :goto_27
    return v0

    :cond_28
    const/4 v0, 0x0

    goto :goto_27
.end method

.method public setVZWWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z
    .registers 9
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 62
    sget-object v3, Landroid/net/wifi/WifiManagerProxy;->setVZWWifiApEnabledMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_3b

    iget-object v3, p0, Landroid/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v3, :cond_3b

    .line 63
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/Object;

    .line 64
    aput-object p1, v0, v4

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v0, v3

    .line 67
    .local v0, "args":[Ljava/lang/Object;
    :try_start_15
    sget-object v3, Landroid/net/wifi/WifiManagerProxy;->setVZWWifiApEnabledMethod:Ljava/lang/reflect/Method;

    iget-object v5, p0, Landroid/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_22
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_22} :catch_24
    .catch Ljava/lang/IllegalAccessException; {:try_start_15 .. :try_end_22} :catch_2a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_15 .. :try_end_22} :catch_2f

    move-result v3

    .line 83
    .end local v0    # "args":[Ljava/lang/Object;
    :goto_23
    return v3

    .line 68
    .restart local v0    # "args":[Ljava/lang/Object;
    :catch_24
    move-exception v2

    .line 69
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_28
    :goto_28
    move v3, v4

    .line 78
    goto :goto_23

    .line 70
    :catch_2a
    move-exception v2

    .line 71
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_28

    .line 72
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_2f
    move-exception v2

    .line 73
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 74
    .local v1, "cause":Ljava/lang/Throwable;
    instance-of v3, v1, Landroid/os/RemoteException;

    if-eqz v3, :cond_28

    .line 75
    check-cast v1, Landroid/os/RemoteException;

    .end local v1    # "cause":Ljava/lang/Throwable;
    throw v1

    .line 82
    .end local v0    # "args":[Ljava/lang/Object;
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_3b
    const-string v3, "WifiManagerProxy"

    const-string v5, "setVZWWifiApEnabled method isn\'t implemented yet"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 83
    goto :goto_23
.end method

.method public setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
    .registers 7
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "enabled"    # Z

    .prologue
    .line 141
    const-string v1, "WifiManagerProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "E911 WiFi :isWifiApEnabled :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v1, p0, Landroid/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_1f

    .line 144
    :try_start_1a
    iget-object v1, p0, Landroid/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p1, p2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z
    :try_end_1f
    .catch Ljava/lang/SecurityException; {:try_start_1a .. :try_end_1f} :catch_20

    .line 149
    :cond_1f
    :goto_1f
    return-void

    .line 145
    :catch_20
    move-exception v0

    .line 146
    .local v0, "se":Ljava/lang/SecurityException;
    const-string v1, "WifiManagerProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SecurityException : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f
.end method

.method public setWifiApEnabled(Z)V
    .registers 6
    .param p1, "enabled"    # Z

    .prologue
    .line 92
    iget-object v1, p0, Landroid/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_a

    .line 94
    :try_start_4
    iget-object v1, p0, Landroid/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z
    :try_end_a
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_a} :catch_b

    .line 99
    :cond_a
    :goto_a
    return-void

    .line 95
    :catch_b
    move-exception v0

    .line 96
    .local v0, "se":Ljava/lang/SecurityException;
    const-string v1, "WifiManagerProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SecurityException : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method public setWifiEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 107
    iget-object v0, p0, Landroid/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_9

    .line 108
    iget-object v0, p0, Landroid/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 110
    :cond_9
    return-void
.end method

.method public startScan()Z
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Landroid/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_b

    .line 119
    iget-object v0, p0, Landroid/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v0

    .line 121
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
