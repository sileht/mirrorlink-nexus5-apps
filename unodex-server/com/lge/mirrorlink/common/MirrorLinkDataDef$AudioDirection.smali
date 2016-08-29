.class public final enum Lcom/lge/mirrorlink/common/MirrorLinkDataDef$AudioDirection;
.super Ljava/lang/Enum;
.source "MirrorLinkDataDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mirrorlink/common/MirrorLinkDataDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AudioDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/mirrorlink/common/MirrorLinkDataDef$AudioDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/mirrorlink/common/MirrorLinkDataDef$AudioDirection;

.field public static final enum bi:Lcom/lge/mirrorlink/common/MirrorLinkDataDef$AudioDirection;

.field public static final enum in:Lcom/lge/mirrorlink/common/MirrorLinkDataDef$AudioDirection;

.field public static final enum out:Lcom/lge/mirrorlink/common/MirrorLinkDataDef$AudioDirection;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 79
    new-instance v0, Lcom/lge/mirrorlink/common/MirrorLinkDataDef$AudioDirection;

    const-string/jumbo v1, "in"

    invoke-direct {v0, v1, v2}, Lcom/lge/mirrorlink/common/MirrorLinkDataDef$AudioDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/mirrorlink/common/MirrorLinkDataDef$AudioDirection;->in:Lcom/lge/mirrorlink/common/MirrorLinkDataDef$AudioDirection;

    new-instance v0, Lcom/lge/mirrorlink/common/MirrorLinkDataDef$AudioDirection;

    const-string/jumbo v1, "out"

    invoke-direct {v0, v1, v3}, Lcom/lge/mirrorlink/common/MirrorLinkDataDef$AudioDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/mirrorlink/common/MirrorLinkDataDef$AudioDirection;->out:Lcom/lge/mirrorlink/common/MirrorLinkDataDef$AudioDirection;

    new-instance v0, Lcom/lge/mirrorlink/common/MirrorLinkDataDef$AudioDirection;

    const-string/jumbo v1, "bi"

    invoke-direct {v0, v1, v4}, Lcom/lge/mirrorlink/common/MirrorLinkDataDef$AudioDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/mirrorlink/common/MirrorLinkDataDef$AudioDirection;->bi:Lcom/lge/mirrorlink/common/MirrorLinkDataDef$AudioDirection;

    .line 78
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/lge/mirrorlink/common/MirrorLinkDataDef$AudioDirection;

    sget-object v1, Lcom/lge/mirrorlink/common/MirrorLinkDataDef$AudioDirection;->in:Lcom/lge/mirrorlink/common/MirrorLinkDataDef$AudioDirection;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/mirrorlink/common/MirrorLinkDataDef$AudioDirection;->out:Lcom/lge/mirrorlink/common/MirrorLinkDataDef$AudioDirection;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/mirrorlink/common/MirrorLinkDataDef$AudioDirection;->bi:Lcom/lge/mirrorlink/common/MirrorLinkDataDef$AudioDirection;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lge/mirrorlink/common/MirrorLinkDataDef$AudioDirection;->$VALUES:[Lcom/lge/mirrorlink/common/MirrorLinkDataDef$AudioDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/mirrorlink/common/MirrorLinkDataDef$AudioDirection;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 78
    const-class v0, Lcom/lge/mirrorlink/common/MirrorLinkDataDef$AudioDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/common/MirrorLinkDataDef$AudioDirection;

    return-object v0
.end method

.method public static values()[Lcom/lge/mirrorlink/common/MirrorLinkDataDef$AudioDirection;
    .registers 1

    .prologue
    .line 78
    sget-object v0, Lcom/lge/mirrorlink/common/MirrorLinkDataDef$AudioDirection;->$VALUES:[Lcom/lge/mirrorlink/common/MirrorLinkDataDef$AudioDirection;

    return-object v0
.end method
