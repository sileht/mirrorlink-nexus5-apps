.class public Lcom/lge/internal/hardware/fmradio/ChipsetHandlerFactory;
.super Ljava/lang/Object;
.source "ChipsetHandlerFactory.java"


# static fields
.field private static T:Ljava/lang/String;

.field private static libAndHandlerClasses:Ljava/util/Map;
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


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 23
    const-string v0, "FMFRW_ChipsetHandlerFactory"

    sput-object v0, Lcom/lge/internal/hardware/fmradio/ChipsetHandlerFactory;->T:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/internal/hardware/fmradio/ChipsetHandlerFactory;->libAndHandlerClasses:Ljava/util/Map;

    .line 27
    sget-object v0, Lcom/lge/internal/hardware/fmradio/ChipsetHandlerFactory;->libAndHandlerClasses:Ljava/util/Map;

    const-string v1, "/system/framework/com.brcm.bt.jar"

    const-string v2, "com.lge.internal.hardware.fmradio.broadcom.BCSerialCommandHandler"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/lge/internal/hardware/fmradio/ChipsetHandlerFactory;->libAndHandlerClasses:Ljava/util/Map;

    const-string v1, "/system/framework/com.broadcom.fm.jar"

    const-string v2, "com.lge.internal.hardware.fmradio.broadcom2.BC2SerialCommandHandler"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/lge/internal/hardware/fmradio/ChipsetHandlerFactory;->libAndHandlerClasses:Ljava/util/Map;

    const-string v1, "/system/framework/qcom.fmradio.jar"

    const-string v2, "com.lge.internal.hardware.fmradio.qct.QctSerialCommandHandler"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/lge/internal/hardware/fmradio/ChipsetHandlerFactory;->libAndHandlerClasses:Ljava/util/Map;

    const-string v1, "/system/framework/com.mtk.fmradio.jar"

    const-string v2, "com.lge.internal.hardware.fmradio.mtk.MtkSerialCommandHandler"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createChipsetHandler(Landroid/content/Context;)Lcom/lge/internal/hardware/fmradio/DefaultCommandHandler;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    sget-object v7, Lcom/lge/internal/hardware/fmradio/ChipsetHandlerFactory;->libAndHandlerClasses:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_a
    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_15

    .line 54
    invoke-static {p0}, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;->getInstance(Landroid/content/Context;)Lcom/lge/internal/hardware/fmradio/DefaultCommandHandler;

    move-result-object v2

    :goto_14
    return-object v2

    .line 35
    :cond_15
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 36
    .local v4, "libPath":Ljava/lang/String;
    sget-object v8, Lcom/lge/internal/hardware/fmradio/ChipsetHandlerFactory;->libAndHandlerClasses:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 37
    .local v3, "handlerClassName":Ljava/lang/String;
    new-instance v5, Ldalvik/system/PathClassLoader;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ":/system/framework/com.lge.fmradio.framework.jar"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-class v9, Lcom/lge/internal/hardware/fmradio/DefaultCommandHandler;

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-direct {v5, v8, v9}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 38
    .local v5, "loader":Ldalvik/system/PathClassLoader;
    sget-object v8, Lcom/lge/internal/hardware/fmradio/ChipsetHandlerFactory;->T:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Looking for chipset handler class: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    sget-object v8, Lcom/lge/internal/hardware/fmradio/ChipsetHandlerFactory;->T:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "using class loader: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ldalvik/system/PathClassLoader;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :try_start_6d
    invoke-virtual {v5, v3}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 43
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v8, "getInstance"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v9, v10

    invoke-virtual {v0, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 44
    .local v6, "m":Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p0, v9, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/internal/hardware/fmradio/DefaultCommandHandler;

    .line 45
    .local v2, "handler":Lcom/lge/internal/hardware/fmradio/DefaultCommandHandler;
    if-eqz v2, :cond_a

    .line 46
    sget-object v8, Lcom/lge/internal/hardware/fmradio/ChipsetHandlerFactory;->T:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Chipset handler class found: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_a2} :catch_a4

    goto/16 :goto_14

    .line 50
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "handler":Lcom/lge/internal/hardware/fmradio/DefaultCommandHandler;
    .end local v6    # "m":Ljava/lang/reflect/Method;
    :catch_a4
    move-exception v1

    .line 51
    .local v1, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/lge/internal/hardware/fmradio/ChipsetHandlerFactory;->T:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Failed to load handler class: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a
.end method
