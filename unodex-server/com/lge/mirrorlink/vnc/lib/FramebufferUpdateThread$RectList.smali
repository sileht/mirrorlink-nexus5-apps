.class Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$RectList;
.super Ljava/util/ArrayList;
.source "FramebufferUpdateThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RectList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/lge/mirrorlink/vnc/lib/Rectangle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;


# direct methods
.method private constructor <init>(Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$RectList;->this$0:Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$RectList;)V
    .registers 3
    .param p1, "this$0"    # Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;

    .prologue
    invoke-direct {p0, p1}, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$RectList;-><init>(Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;)V

    return-void
.end method


# virtual methods
.method public hasEmptyRect()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 302
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "r$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/vnc/lib/Rectangle;

    .line 304
    .local v0, "r":Lcom/lge/mirrorlink/vnc/lib/Rectangle;
    iget v2, v0, Lcom/lge/mirrorlink/vnc/lib/Rectangle;->w:I

    if-nez v2, :cond_5

    iget v2, v0, Lcom/lge/mirrorlink/vnc/lib/Rectangle;->h:I

    if-nez v2, :cond_5

    .line 305
    const/4 v2, 0x1

    return v2

    .line 308
    .end local v0    # "r":Lcom/lge/mirrorlink/vnc/lib/Rectangle;
    :cond_1b
    return v3
.end method

.method public hasEncodingRect(I)Z
    .registers 5
    .param p1, "encoding"    # I

    .prologue
    .line 270
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "r$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/vnc/lib/Rectangle;

    .line 271
    .local v0, "r":Lcom/lge/mirrorlink/vnc/lib/Rectangle;
    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/lib/Rectangle;->getEncoding()I

    move-result v2

    if-ne v2, p1, :cond_4

    .line 272
    const/4 v2, 0x1

    return v2

    .line 275
    .end local v0    # "r":Lcom/lge/mirrorlink/vnc/lib/Rectangle;
    :cond_18
    const/4 v2, 0x0

    return v2
.end method

.method public varargs hasEncodingRect([I)Z
    .registers 9
    .param p1, "encodings"    # [I

    .prologue
    const/4 v4, 0x0

    .line 285
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "r$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mirrorlink/vnc/lib/Rectangle;

    .line 286
    .local v1, "r":Lcom/lge/mirrorlink/vnc/lib/Rectangle;
    array-length v5, p1

    move v3, v4

    :goto_13
    if-ge v3, v5, :cond_5

    aget v0, p1, v3

    .line 287
    .local v0, "encoding":I
    invoke-virtual {v1}, Lcom/lge/mirrorlink/vnc/lib/Rectangle;->getEncoding()I

    move-result v6

    if-ne v6, v0, :cond_1f

    .line 288
    const/4 v3, 0x1

    return v3

    .line 286
    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 292
    .end local v0    # "encoding":I
    .end local v1    # "r":Lcom/lge/mirrorlink/vnc/lib/Rectangle;
    :cond_22
    return v4
.end method
