.class Lcom/lge/cic/eden/generator/EventGenerator$2$1;
.super Ljava/lang/Object;
.source "EventGenerator.java"

# interfaces
.implements Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager$ImageAnalysisListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/cic/eden/generator/EventGenerator$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/cic/eden/generator/EventGenerator$2;

.field private final synthetic val$listener:Lcom/lge/cic/eden/generator/EventGenerator$ProgressListener;


# direct methods
.method constructor <init>(Lcom/lge/cic/eden/generator/EventGenerator$2;Lcom/lge/cic/eden/generator/EventGenerator$ProgressListener;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/cic/eden/generator/EventGenerator$2$1;->this$1:Lcom/lge/cic/eden/generator/EventGenerator$2;

    iput-object p2, p0, Lcom/lge/cic/eden/generator/EventGenerator$2$1;->val$listener:Lcom/lge/cic/eden/generator/EventGenerator$ProgressListener;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(F)V
    .registers 4
    .param p1, "progress"    # F

    .prologue
    .line 194
    iget-object v0, p0, Lcom/lge/cic/eden/generator/EventGenerator$2$1;->val$listener:Lcom/lge/cic/eden/generator/EventGenerator$ProgressListener;

    float-to-int v1, p1

    invoke-interface {v0, v1}, Lcom/lge/cic/eden/generator/EventGenerator$ProgressListener;->onProgress(I)V

    .line 195
    return-void
.end method

.method public onPublish(Lcom/lge/cic/eden/db/type/MediaInfo;)V
    .registers 5
    .param p1, "mediaInfo"    # Lcom/lge/cic/eden/db/type/MediaInfo;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/lge/cic/eden/generator/EventGenerator$2$1;->this$1:Lcom/lge/cic/eden/generator/EventGenerator$2;

    # getter for: Lcom/lge/cic/eden/generator/EventGenerator$2;->this$0:Lcom/lge/cic/eden/generator/EventGenerator;
    invoke-static {v0}, Lcom/lge/cic/eden/generator/EventGenerator$2;->access$0(Lcom/lge/cic/eden/generator/EventGenerator$2;)Lcom/lge/cic/eden/generator/EventGenerator;

    move-result-object v0

    # getter for: Lcom/lge/cic/eden/generator/EventGenerator;->shutdownFlag:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/lge/cic/eden/generator/EventGenerator;->access$2(Lcom/lge/cic/eden/generator/EventGenerator;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 210
    :goto_10
    return-void

    .line 204
    :cond_11
    iget-object v0, p0, Lcom/lge/cic/eden/generator/EventGenerator$2$1;->this$1:Lcom/lge/cic/eden/generator/EventGenerator$2;

    # getter for: Lcom/lge/cic/eden/generator/EventGenerator$2;->this$0:Lcom/lge/cic/eden/generator/EventGenerator;
    invoke-static {v0}, Lcom/lge/cic/eden/generator/EventGenerator$2;->access$0(Lcom/lge/cic/eden/generator/EventGenerator$2;)Lcom/lge/cic/eden/generator/EventGenerator;

    move-result-object v0

    # getter for: Lcom/lge/cic/eden/generator/EventGenerator;->eventPublishManager:Lcom/lge/cic/eden/generator/EventPublishManager;
    invoke-static {v0}, Lcom/lge/cic/eden/generator/EventGenerator;->access$3(Lcom/lge/cic/eden/generator/EventGenerator;)Lcom/lge/cic/eden/generator/EventPublishManager;

    move-result-object v0

    sget-object v1, Lcom/lge/cic/eden/generator/EventPublishManager$PublishType;->IMAGE_ANALYSIS:Lcom/lge/cic/eden/generator/EventPublishManager$PublishType;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/lge/cic/eden/generator/EventPublishManager;->publishAsync(Lcom/lge/cic/eden/generator/EventPublishManager$PublishType;Lcom/lge/cic/eden/db/type/MediaInfo;Ljava/lang/Integer;)V

    goto :goto_10
.end method

.method public onWrite(Lcom/lge/cic/eden/db/type/MediaInfo;)V
    .registers 7
    .param p1, "mediaInfo"    # Lcom/lge/cic/eden/db/type/MediaInfo;

    .prologue
    const/4 v4, 0x0

    .line 215
    iget-wide v0, p1, Lcom/lge/cic/eden/db/type/MediaInfo;->representativeId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    .line 216
    iput v4, p1, Lcom/lge/cic/eden/db/type/MediaInfo;->similarCount:I

    .line 218
    :cond_b
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "PHOTO_STATE"

    aput-object v1, v0, v4

    const/4 v1, 0x1

    .line 219
    const-string v2, "REPRESENTATIVE_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 220
    const-string v2, "PHOTO_NICENESSSCORE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 221
    const-string v2, "VISIBILITY_TYPE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 222
    const-string v2, "SIMILAR_COUNT"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 223
    const-string v2, "ROI_POINT"

    aput-object v2, v0, v1

    .line 218
    invoke-virtual {p1, v0}, Lcom/lge/cic/eden/db/type/MediaInfo;->save([Ljava/lang/String;)Z

    .line 224
    return-void
.end method
