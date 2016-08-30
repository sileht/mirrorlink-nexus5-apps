.class Lcom/lge/cic/eden/generator/EventPublishManager$PublishParams;
.super Ljava/lang/Object;
.source "EventPublishManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/cic/eden/generator/EventPublishManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PublishParams"
.end annotation


# instance fields
.field public eventId:Ljava/lang/Integer;

.field public mediaInfo:Lcom/lge/cic/eden/db/type/MediaInfo;

.field public type:Lcom/lge/cic/eden/generator/EventPublishManager$PublishType;


# direct methods
.method public constructor <init>(Lcom/lge/cic/eden/generator/EventPublishManager$PublishType;Lcom/lge/cic/eden/db/type/MediaInfo;Ljava/lang/Integer;)V
    .registers 4
    .param p1, "type"    # Lcom/lge/cic/eden/generator/EventPublishManager$PublishType;
    .param p2, "mediaInfo"    # Lcom/lge/cic/eden/db/type/MediaInfo;
    .param p3, "eventId"    # Ljava/lang/Integer;

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lcom/lge/cic/eden/generator/EventPublishManager$PublishParams;->type:Lcom/lge/cic/eden/generator/EventPublishManager$PublishType;

    .line 123
    iput-object p2, p0, Lcom/lge/cic/eden/generator/EventPublishManager$PublishParams;->mediaInfo:Lcom/lge/cic/eden/db/type/MediaInfo;

    .line 124
    iput-object p3, p0, Lcom/lge/cic/eden/generator/EventPublishManager$PublishParams;->eventId:Ljava/lang/Integer;

    .line 125
    return-void
.end method
