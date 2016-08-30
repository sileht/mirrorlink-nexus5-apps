.class Lcom/lge/cic/eden/generator/EventGenerator$2;
.super Ljava/lang/Object;
.source "EventGenerator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/cic/eden/generator/EventGenerator;->process(Lcom/lge/cic/eden/generator/EventGenerator$ProgressListener;I)Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/cic/eden/generator/EventGenerator;

.field private final synthetic val$listener:Lcom/lge/cic/eden/generator/EventGenerator$ProgressListener;

.field private final synthetic val$mediaInfosForImageAnalysis:Ljava/util/ArrayList;

.field private final synthetic val$newMediaCnt:I


# direct methods
.method constructor <init>(Lcom/lge/cic/eden/generator/EventGenerator;Ljava/util/ArrayList;ILcom/lge/cic/eden/generator/EventGenerator$ProgressListener;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/cic/eden/generator/EventGenerator$2;->this$0:Lcom/lge/cic/eden/generator/EventGenerator;

    iput-object p2, p0, Lcom/lge/cic/eden/generator/EventGenerator$2;->val$mediaInfosForImageAnalysis:Ljava/util/ArrayList;

    iput p3, p0, Lcom/lge/cic/eden/generator/EventGenerator$2;->val$newMediaCnt:I

    iput-object p4, p0, Lcom/lge/cic/eden/generator/EventGenerator$2;->val$listener:Lcom/lge/cic/eden/generator/EventGenerator$ProgressListener;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lge/cic/eden/generator/EventGenerator$2;)Lcom/lge/cic/eden/generator/EventGenerator;
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/lge/cic/eden/generator/EventGenerator$2;->this$0:Lcom/lge/cic/eden/generator/EventGenerator;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 187
    .local v0, "chkTime":J
    # getter for: Lcom/lge/cic/eden/generator/EventGenerator;->logger:Lcom/lge/cic/eden/utils/Logger;
    invoke-static {}, Lcom/lge/cic/eden/generator/EventGenerator;->access$0()Lcom/lge/cic/eden/utils/Logger;

    move-result-object v2

    const-string v3, "imageAnalysisManager start"

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 188
    iget-object v2, p0, Lcom/lge/cic/eden/generator/EventGenerator$2;->this$0:Lcom/lge/cic/eden/generator/EventGenerator;

    # getter for: Lcom/lge/cic/eden/generator/EventGenerator;->imageAnalysisManager:Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;
    invoke-static {v2}, Lcom/lge/cic/eden/generator/EventGenerator;->access$1(Lcom/lge/cic/eden/generator/EventGenerator;)Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;->clear()V

    .line 189
    iget-object v2, p0, Lcom/lge/cic/eden/generator/EventGenerator$2;->this$0:Lcom/lge/cic/eden/generator/EventGenerator;

    # getter for: Lcom/lge/cic/eden/generator/EventGenerator;->imageAnalysisManager:Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;
    invoke-static {v2}, Lcom/lge/cic/eden/generator/EventGenerator;->access$1(Lcom/lge/cic/eden/generator/EventGenerator;)Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;

    move-result-object v2

    .line 190
    iget-object v3, p0, Lcom/lge/cic/eden/generator/EventGenerator$2;->val$mediaInfosForImageAnalysis:Ljava/util/ArrayList;

    .line 191
    new-instance v4, Lcom/lge/cic/eden/generator/EventGenerator$2$1;

    iget-object v5, p0, Lcom/lge/cic/eden/generator/EventGenerator$2;->val$listener:Lcom/lge/cic/eden/generator/EventGenerator$ProgressListener;

    invoke-direct {v4, p0, v5}, Lcom/lge/cic/eden/generator/EventGenerator$2$1;-><init>(Lcom/lge/cic/eden/generator/EventGenerator$2;Lcom/lge/cic/eden/generator/EventGenerator$ProgressListener;)V

    .line 189
    invoke-virtual {v2, v3, v4}, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;->request(Ljava/util/ArrayList;Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager$ImageAnalysisListener;)V

    .line 226
    iget-object v2, p0, Lcom/lge/cic/eden/generator/EventGenerator$2;->this$0:Lcom/lge/cic/eden/generator/EventGenerator;

    # getter for: Lcom/lge/cic/eden/generator/EventGenerator;->imageAnalysisManager:Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;
    invoke-static {v2}, Lcom/lge/cic/eden/generator/EventGenerator;->access$1(Lcom/lge/cic/eden/generator/EventGenerator;)Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;

    move-result-object v2

    const-wide/16 v4, 0xa

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;->awaitTermination(JLjava/util/concurrent/TimeUnit;)V

    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 229
    # getter for: Lcom/lge/cic/eden/generator/EventGenerator;->logger:Lcom/lge/cic/eden/utils/Logger;
    invoke-static {}, Lcom/lge/cic/eden/generator/EventGenerator;->access$0()Lcom/lge/cic/eden/utils/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "imageAnalysisManager end: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 230
    iget v2, p0, Lcom/lge/cic/eden/generator/EventGenerator$2;->val$newMediaCnt:I

    if-lez v2, :cond_7c

    .line 231
    # getter for: Lcom/lge/cic/eden/generator/EventGenerator;->logger:Lcom/lge/cic/eden/utils/Logger;
    invoke-static {}, Lcom/lge/cic/eden/generator/EventGenerator;->access$0()Lcom/lge/cic/eden/utils/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "    time per image = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    long-to-float v4, v0

    iget v5, p0, Lcom/lge/cic/eden/generator/EventGenerator$2;->val$newMediaCnt:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 233
    :cond_7c
    return-void
.end method
