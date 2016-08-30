.class public Lcom/lge/cic/eden/utils/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# instance fields
.field tag:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/cic/eden/utils/Logger;->tag:Ljava/lang/String;

    .line 8
    iput-object p1, p0, Lcom/lge/cic/eden/utils/Logger;->tag:Ljava/lang/String;

    .line 9
    return-void
.end method

.method public static getLogger(Ljava/lang/String;)Lcom/lge/cic/eden/utils/Logger;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    new-instance v0, Lcom/lge/cic/eden/utils/Logger;

    invoke-direct {v0, p0}, Lcom/lge/cic/eden/utils/Logger;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 19
    if-eqz p1, :cond_7

    .line 20
    iget-object v0, p0, Lcom/lge/cic/eden/utils/Logger;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_7
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 44
    if-eqz p1, :cond_7

    .line 45
    iget-object v0, p0, Lcom/lge/cic/eden/utils/Logger;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_7
    return-void
.end method

.method public info(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 24
    if-eqz p1, :cond_7

    .line 25
    iget-object v0, p0, Lcom/lge/cic/eden/utils/Logger;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :cond_7
    return-void
.end method

.method public trace(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 14
    if-eqz p1, :cond_7

    .line 15
    iget-object v0, p0, Lcom/lge/cic/eden/utils/Logger;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :cond_7
    return-void
.end method

.method public warn(Ljava/lang/Exception;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 39
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 40
    iget-object v0, p0, Lcom/lge/cic/eden/utils/Logger;->tag:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_11
    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 29
    if-eqz p1, :cond_7

    .line 30
    iget-object v0, p0, Lcom/lge/cic/eden/utils/Logger;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_7
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 6
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 34
    if-eqz p1, :cond_24

    if-eqz p2, :cond_24

    .line 35
    iget-object v0, p0, Lcom/lge/cic/eden/utils/Logger;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_24
    return-void
.end method
