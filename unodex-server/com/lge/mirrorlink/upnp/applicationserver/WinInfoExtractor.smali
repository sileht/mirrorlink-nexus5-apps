.class public Lcom/lge/mirrorlink/upnp/applicationserver/WinInfoExtractor;
.super Ljava/lang/Object;
.source "WinInfoExtractor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorLink_WinInfoExtractor"


# instance fields
.field private mWinInfoBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/WinInfoExtractor;->mWinInfoBundle:Landroid/os/Bundle;

    .line 14
    iput-object p1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/WinInfoExtractor;->mWinInfoBundle:Landroid/os/Bundle;

    .line 13
    return-void
.end method


# virtual methods
.method public getArea()I
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 38
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/WinInfoExtractor;->mWinInfoBundle:Landroid/os/Bundle;

    if-nez v2, :cond_f

    .line 39
    const-string/jumbo v2, "MirrorLink_WinInfoExtractor"

    const-string/jumbo v3, "mWinInfoBundle is null !"

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return v5

    .line 42
    :cond_f
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/WinInfoExtractor;->mWinInfoBundle:Landroid/os/Bundle;

    const-string/jumbo v3, "SHOWN_FRAME_SIZE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v1

    .line 43
    .local v1, "shownFrameSize":[F
    if-nez v1, :cond_24

    .line 44
    const-string/jumbo v2, "MirrorLink_WinInfoExtractor"

    const-string/jumbo v3, "shownFrameSize is null ! "

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return v5

    .line 47
    :cond_24
    array-length v2, v1

    const/4 v3, 0x4

    if-ge v2, v3, :cond_44

    .line 48
    const-string/jumbo v2, "MirrorLink_WinInfoExtractor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "shownFrameSize\'s length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return v5

    .line 52
    :cond_44
    new-instance v0, Landroid/graphics/Rect;

    aget v2, v1, v5

    float-to-int v2, v2

    .line 53
    const/4 v3, 0x1

    aget v3, v1, v3

    float-to-int v3, v3

    .line 54
    const/4 v4, 0x2

    aget v4, v1, v4

    float-to-int v4, v4

    .line 55
    const/4 v5, 0x3

    aget v5, v1, v5

    float-to-int v5, v5

    .line 52
    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 56
    .local v0, "shownFrameRect":Landroid/graphics/Rect;
    const-string/jumbo v2, "MirrorLink_WinInfoExtractor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "shownFrameRect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    mul-int/2addr v2, v3

    return v2
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 18
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/WinInfoExtractor;->mWinInfoBundle:Landroid/os/Bundle;

    if-nez v1, :cond_f

    .line 19
    const-string/jumbo v1, "MirrorLink_WinInfoExtractor"

    const-string/jumbo v2, "mWinInfoBundle is null !"

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-object v3

    .line 22
    :cond_f
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/WinInfoExtractor;->mWinInfoBundle:Landroid/os/Bundle;

    const-string/jumbo v2, "PACKAGE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, "packageName":Ljava/lang/String;
    const-string/jumbo v1, "MirrorLink_WinInfoExtractor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    return-object v0
.end method

.method public isFocused()Z
    .registers 5

    .prologue
    .line 28
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/WinInfoExtractor;->mWinInfoBundle:Landroid/os/Bundle;

    if-nez v1, :cond_f

    .line 29
    const-string/jumbo v1, "MirrorLink_WinInfoExtractor"

    const-string/jumbo v2, "mWinInfoBundle is null !"

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const/4 v1, 0x0

    return v1

    .line 32
    :cond_f
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/WinInfoExtractor;->mWinInfoBundle:Landroid/os/Bundle;

    const-string/jumbo v2, "IS_FOCUSED"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 33
    .local v0, "isFocused":Z
    const-string/jumbo v1, "MirrorLink_WinInfoExtractor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isFocused: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return v0
.end method
