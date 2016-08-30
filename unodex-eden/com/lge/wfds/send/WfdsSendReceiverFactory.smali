.class public Lcom/lge/wfds/send/WfdsSendReceiverFactory;
.super Ljava/lang/Object;
.source "WfdsSendReceiverFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WfdsSendReceiverFactory"

.field private static mWfdsSendReceiverClass:Ljava/lang/Class;

.field private static sWfdsSendReceiverIface:Lcom/lge/wfds/send/receiver/WfdsSendReceiverIface;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 14
    sput-object v2, Lcom/lge/wfds/send/WfdsSendReceiverFactory;->mWfdsSendReceiverClass:Ljava/lang/Class;

    .line 15
    sput-object v2, Lcom/lge/wfds/send/WfdsSendReceiverFactory;->sWfdsSendReceiverIface:Lcom/lge/wfds/send/receiver/WfdsSendReceiverIface;

    .line 18
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_WFDS_SEND:Z

    if-eqz v2, :cond_41

    .line 20
    :try_start_9
    sget-object v2, Lcom/lge/wfds/send/WfdsSendReceiverFactory;->mWfdsSendReceiverClass:Ljava/lang/Class;

    if-nez v2, :cond_2a

    .line 21
    const-string v2, "WfdsSendReceiverFactory"

    const-string v3, "Load Class"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    new-instance v0, Ldalvik/system/PathClassLoader;

    const-string v2, "/system/framework/com.lge.wfds.send.jar"

    .line 24
    const-class v3, Lcom/lge/wfds/send/WfdsSendReceiverFactory;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 23
    invoke-direct {v0, v2, v3}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 25
    .local v0, "cLoader":Ljava/lang/ClassLoader;
    const-string v2, "com.lge.wfds.send.receiver.WfdsSendReceiver"

    const/4 v3, 0x1

    invoke-static {v2, v3, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/lge/wfds/send/WfdsSendReceiverFactory;->mWfdsSendReceiverClass:Ljava/lang/Class;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2a} :catch_2b

    .line 34
    .local v1, "e":Ljava/lang/Exception;
    :cond_2a
    :goto_2a
    return-void

    .line 28
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2b
    move-exception v1

    .line 29
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v2, "WfdsSendReceiverFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Class not found: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 32
    .end local v0    # "cLoader":Ljava/lang/ClassLoader;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_41
    const-string v2, "WfdsSendReceiverFactory"

    const-string v3, "ConfigBuildFlags.CAPP_WFDS_SEND is not enabled!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static getInstance()Lcom/lge/wfds/send/receiver/WfdsSendReceiverIface;
    .registers 2

    .prologue
    .line 49
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_WFDS_SEND:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/lge/wfds/send/WfdsSendReceiverFactory;->sWfdsSendReceiverIface:Lcom/lge/wfds/send/receiver/WfdsSendReceiverIface;

    if-eqz v0, :cond_b

    .line 50
    sget-object v0, Lcom/lge/wfds/send/WfdsSendReceiverFactory;->sWfdsSendReceiverIface:Lcom/lge/wfds/send/receiver/WfdsSendReceiverIface;

    .line 55
    :goto_a
    return-object v0

    .line 52
    :cond_b
    const-string v0, "WfdsSendReceiverFactory"

    const-string v1, "ConfigBuildFlags.CAPP_WFDS_SEND is not enabled!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static setInstance(Lcom/lge/wfds/send/receiver/WfdsSendReceiverIface;)V
    .registers 3
    .param p0, "sendReceiver"    # Lcom/lge/wfds/send/receiver/WfdsSendReceiverIface;

    .prologue
    .line 41
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_WFDS_SEND:Z

    if-eqz v0, :cond_7

    .line 42
    sput-object p0, Lcom/lge/wfds/send/WfdsSendReceiverFactory;->sWfdsSendReceiverIface:Lcom/lge/wfds/send/receiver/WfdsSendReceiverIface;

    .line 46
    :goto_6
    return-void

    .line 44
    :cond_7
    const-string v0, "WfdsSendReceiverFactory"

    const-string v1, "can not set WfdsSendReceiverInstance Instance!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method
