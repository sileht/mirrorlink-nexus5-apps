.class public final enum Lcom/lge/cic/eden/generator/EventPublishManager$PublishType;
.super Ljava/lang/Enum;
.source "EventPublishManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/cic/eden/generator/EventPublishManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PublishType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/cic/eden/generator/EventPublishManager$PublishType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/lge/cic/eden/generator/EventPublishManager$PublishType;

.field public static final enum EVENT_CLUSTERING:Lcom/lge/cic/eden/generator/EventPublishManager$PublishType;

.field public static final enum IMAGE_ANALYSIS:Lcom/lge/cic/eden/generator/EventPublishManager$PublishType;

.field public static final enum STORY_CLUSTERING:Lcom/lge/cic/eden/generator/EventPublishManager$PublishType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-instance v0, Lcom/lge/cic/eden/generator/EventPublishManager$PublishType;

    const-string v1, "IMAGE_ANALYSIS"

    invoke-direct {v0, v1, v2}, Lcom/lge/cic/eden/generator/EventPublishManager$PublishType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/cic/eden/generator/EventPublishManager$PublishType;->IMAGE_ANALYSIS:Lcom/lge/cic/eden/generator/EventPublishManager$PublishType;

    .line 40
    new-instance v0, Lcom/lge/cic/eden/generator/EventPublishManager$PublishType;

    const-string v1, "EVENT_CLUSTERING"

    invoke-direct {v0, v1, v3}, Lcom/lge/cic/eden/generator/EventPublishManager$PublishType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/cic/eden/generator/EventPublishManager$PublishType;->EVENT_CLUSTERING:Lcom/lge/cic/eden/generator/EventPublishManager$PublishType;

    .line 41
    new-instance v0, Lcom/lge/cic/eden/generator/EventPublishManager$PublishType;

    const-string v1, "STORY_CLUSTERING"

    invoke-direct {v0, v1, v4}, Lcom/lge/cic/eden/generator/EventPublishManager$PublishType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/cic/eden/generator/EventPublishManager$PublishType;->STORY_CLUSTERING:Lcom/lge/cic/eden/generator/EventPublishManager$PublishType;

    .line 38
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/lge/cic/eden/generator/EventPublishManager$PublishType;

    sget-object v1, Lcom/lge/cic/eden/generator/EventPublishManager$PublishType;->IMAGE_ANALYSIS:Lcom/lge/cic/eden/generator/EventPublishManager$PublishType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/cic/eden/generator/EventPublishManager$PublishType;->EVENT_CLUSTERING:Lcom/lge/cic/eden/generator/EventPublishManager$PublishType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/cic/eden/generator/EventPublishManager$PublishType;->STORY_CLUSTERING:Lcom/lge/cic/eden/generator/EventPublishManager$PublishType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lge/cic/eden/generator/EventPublishManager$PublishType;->ENUM$VALUES:[Lcom/lge/cic/eden/generator/EventPublishManager$PublishType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/cic/eden/generator/EventPublishManager$PublishType;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/lge/cic/eden/generator/EventPublishManager$PublishType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/generator/EventPublishManager$PublishType;

    return-object v0
.end method

.method public static values()[Lcom/lge/cic/eden/generator/EventPublishManager$PublishType;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/lge/cic/eden/generator/EventPublishManager$PublishType;->ENUM$VALUES:[Lcom/lge/cic/eden/generator/EventPublishManager$PublishType;

    array-length v1, v0

    new-array v2, v1, [Lcom/lge/cic/eden/generator/EventPublishManager$PublishType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
