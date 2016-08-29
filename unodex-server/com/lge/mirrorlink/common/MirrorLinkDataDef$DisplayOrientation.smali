.class public final enum Lcom/lge/mirrorlink/common/MirrorLinkDataDef$DisplayOrientation;
.super Ljava/lang/Enum;
.source "MirrorLinkDataDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mirrorlink/common/MirrorLinkDataDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisplayOrientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/mirrorlink/common/MirrorLinkDataDef$DisplayOrientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/mirrorlink/common/MirrorLinkDataDef$DisplayOrientation;

.field public static final enum both:Lcom/lge/mirrorlink/common/MirrorLinkDataDef$DisplayOrientation;

.field public static final enum landscape:Lcom/lge/mirrorlink/common/MirrorLinkDataDef$DisplayOrientation;

.field public static final enum mixed:Lcom/lge/mirrorlink/common/MirrorLinkDataDef$DisplayOrientation;

.field public static final enum portrait:Lcom/lge/mirrorlink/common/MirrorLinkDataDef$DisplayOrientation;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 84
    new-instance v0, Lcom/lge/mirrorlink/common/MirrorLinkDataDef$DisplayOrientation;

    const-string/jumbo v1, "landscape"

    invoke-direct {v0, v1, v2}, Lcom/lge/mirrorlink/common/MirrorLinkDataDef$DisplayOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/mirrorlink/common/MirrorLinkDataDef$DisplayOrientation;->landscape:Lcom/lge/mirrorlink/common/MirrorLinkDataDef$DisplayOrientation;

    new-instance v0, Lcom/lge/mirrorlink/common/MirrorLinkDataDef$DisplayOrientation;

    const-string/jumbo v1, "portrait"

    invoke-direct {v0, v1, v3}, Lcom/lge/mirrorlink/common/MirrorLinkDataDef$DisplayOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/mirrorlink/common/MirrorLinkDataDef$DisplayOrientation;->portrait:Lcom/lge/mirrorlink/common/MirrorLinkDataDef$DisplayOrientation;

    new-instance v0, Lcom/lge/mirrorlink/common/MirrorLinkDataDef$DisplayOrientation;

    const-string/jumbo v1, "both"

    invoke-direct {v0, v1, v4}, Lcom/lge/mirrorlink/common/MirrorLinkDataDef$DisplayOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/mirrorlink/common/MirrorLinkDataDef$DisplayOrientation;->both:Lcom/lge/mirrorlink/common/MirrorLinkDataDef$DisplayOrientation;

    new-instance v0, Lcom/lge/mirrorlink/common/MirrorLinkDataDef$DisplayOrientation;

    const-string/jumbo v1, "mixed"

    invoke-direct {v0, v1, v5}, Lcom/lge/mirrorlink/common/MirrorLinkDataDef$DisplayOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/mirrorlink/common/MirrorLinkDataDef$DisplayOrientation;->mixed:Lcom/lge/mirrorlink/common/MirrorLinkDataDef$DisplayOrientation;

    .line 83
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/lge/mirrorlink/common/MirrorLinkDataDef$DisplayOrientation;

    sget-object v1, Lcom/lge/mirrorlink/common/MirrorLinkDataDef$DisplayOrientation;->landscape:Lcom/lge/mirrorlink/common/MirrorLinkDataDef$DisplayOrientation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/mirrorlink/common/MirrorLinkDataDef$DisplayOrientation;->portrait:Lcom/lge/mirrorlink/common/MirrorLinkDataDef$DisplayOrientation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/mirrorlink/common/MirrorLinkDataDef$DisplayOrientation;->both:Lcom/lge/mirrorlink/common/MirrorLinkDataDef$DisplayOrientation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lge/mirrorlink/common/MirrorLinkDataDef$DisplayOrientation;->mixed:Lcom/lge/mirrorlink/common/MirrorLinkDataDef$DisplayOrientation;

    aput-object v1, v0, v5

    sput-object v0, Lcom/lge/mirrorlink/common/MirrorLinkDataDef$DisplayOrientation;->$VALUES:[Lcom/lge/mirrorlink/common/MirrorLinkDataDef$DisplayOrientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/mirrorlink/common/MirrorLinkDataDef$DisplayOrientation;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 83
    const-class v0, Lcom/lge/mirrorlink/common/MirrorLinkDataDef$DisplayOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/common/MirrorLinkDataDef$DisplayOrientation;

    return-object v0
.end method

.method public static values()[Lcom/lge/mirrorlink/common/MirrorLinkDataDef$DisplayOrientation;
    .registers 1

    .prologue
    .line 83
    sget-object v0, Lcom/lge/mirrorlink/common/MirrorLinkDataDef$DisplayOrientation;->$VALUES:[Lcom/lge/mirrorlink/common/MirrorLinkDataDef$DisplayOrientation;

    return-object v0
.end method
