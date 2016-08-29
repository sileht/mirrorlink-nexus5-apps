.class public Lcom/lge/mirrorlink/misc/LineFeedRemover;
.super Ljava/lang/Object;
.source "LineFeedRemover.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorLink-LineFeedRemover"

.field private static final sLineFeed:B = 0xat


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private countLineFeed([B)I
    .registers 6
    .param p1, "input"    # [B

    .prologue
    .line 41
    const/4 v1, 0x0

    .line 43
    .local v1, "lineFeedNumber":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v2, p1

    if-ge v0, v2, :cond_10

    .line 44
    aget-byte v2, p1, v0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_d

    .line 45
    add-int/lit8 v1, v1, 0x1

    .line 43
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 49
    :cond_10
    return v1
.end method


# virtual methods
.method public remove([B)[B
    .registers 9
    .param p1, "input"    # [B

    .prologue
    const/4 v6, 0x0

    .line 11
    if-nez p1, :cond_d

    .line 12
    const-string/jumbo v4, "MirrorLink-LineFeedRemover"

    const-string/jumbo v5, "input is null !"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    return-object v6

    .line 16
    :cond_d
    array-length v4, p1

    invoke-direct {p0, p1}, Lcom/lge/mirrorlink/misc/LineFeedRemover;->countLineFeed([B)I

    move-result v5

    sub-int v3, v4, v5

    .line 17
    .local v3, "outputLen":I
    if-gtz v3, :cond_20

    .line 18
    const-string/jumbo v4, "MirrorLink-LineFeedRemover"

    const-string/jumbo v5, "all members are LineFeed !"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    return-object v6

    .line 22
    :cond_20
    new-array v2, v3, [B

    .line 24
    .local v2, "output":[B
    const/4 v1, 0x0

    .line 25
    .local v1, "outCnt":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_24
    array-length v4, p1

    if-ge v0, v4, :cond_42

    .line 26
    if-le v1, v3, :cond_33

    .line 27
    const-string/jumbo v4, "MirrorLink-LineFeedRemover"

    const-string/jumbo v5, "can\'t convert anymore because outCnt exceeds outputLen !"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-object v6

    .line 31
    :cond_33
    aget-byte v4, p1, v0

    const/16 v5, 0xa

    if-eq v4, v5, :cond_3f

    .line 32
    aget-byte v4, p1, v0

    aput-byte v4, v2, v1

    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 25
    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 37
    :cond_42
    return-object v2
.end method
