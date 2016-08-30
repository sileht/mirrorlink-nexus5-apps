.class Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationMainThread;
.super Ljava/lang/Thread;
.source "VZWAggregation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/aggregation/VZWAggregation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AggregationMainThread"
.end annotation


# instance fields
.field SUB_TIMEOUT_COUNT:J

.field SUB_TIMEOUT_UNIT:J

.field final synthetic this$0:Lcom/lge/wifi/impl/aggregation/VZWAggregation;


# direct methods
.method constructor <init>(Lcom/lge/wifi/impl/aggregation/VZWAggregation;)V
    .registers 4

    .prologue
    .line 116
    iput-object p1, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationMainThread;->this$0:Lcom/lge/wifi/impl/aggregation/VZWAggregation;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 119
    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationMainThread;->SUB_TIMEOUT_COUNT:J

    .line 120
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationMainThread;->SUB_TIMEOUT_UNIT:J

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 131
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    const/4 v2, 0x3

    if-lt v1, v2, :cond_12

    .line 172
    :cond_4
    const-string v2, "WiFiAggregation"

    const-string v3, "[Main Thread]Now exit"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v2, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationMainThread;->this$0:Lcom/lge/wifi/impl/aggregation/VZWAggregation;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->access$3(Lcom/lge/wifi/impl/aggregation/VZWAggregation;I)V

    .line 176
    return-void

    .line 133
    :cond_12
    invoke-static {v1}, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->access$0(I)V

    .line 134
    iget-object v2, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationMainThread;->this$0:Lcom/lge/wifi/impl/aggregation/VZWAggregation;

    new-instance v3, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;

    iget-object v4, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationMainThread;->this$0:Lcom/lge/wifi/impl/aggregation/VZWAggregation;

    invoke-direct {v3, v4}, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;-><init>(Lcom/lge/wifi/impl/aggregation/VZWAggregation;)V

    invoke-static {v2, v3}, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->access$1(Lcom/lge/wifi/impl/aggregation/VZWAggregation;Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;)V

    .line 135
    iget-object v2, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationMainThread;->this$0:Lcom/lge/wifi/impl/aggregation/VZWAggregation;

    # getter for: Lcom/lge/wifi/impl/aggregation/VZWAggregation;->subThread:Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;
    invoke-static {v2}, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->access$2(Lcom/lge/wifi/impl/aggregation/VZWAggregation;)Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;->start()V

    .line 139
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2b
    int-to-long v2, v0

    :try_start_2c
    iget-wide v4, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationMainThread;->SUB_TIMEOUT_COUNT:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_6c

    .line 149
    :goto_32
    iget-object v2, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationMainThread;->this$0:Lcom/lge/wifi/impl/aggregation/VZWAggregation;

    # getter for: Lcom/lge/wifi/impl/aggregation/VZWAggregation;->subThread:Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;
    invoke-static {v2}, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->access$2(Lcom/lge/wifi/impl/aggregation/VZWAggregation;)Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;

    move-result-object v2

    iget-boolean v2, v2, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;->isComplete:Z

    if-nez v2, :cond_4

    .line 155
    const-string v2, "WiFiAggregation"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[Main Thread]Aggregation SubThread work incomplete. Retry Cnt="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const-string v2, "WiFiAggregation"

    const-string v3, "[Main Thread]subThread.interrupt()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v2, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationMainThread;->this$0:Lcom/lge/wifi/impl/aggregation/VZWAggregation;

    # getter for: Lcom/lge/wifi/impl/aggregation/VZWAggregation;->subThread:Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;
    invoke-static {v2}, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->access$2(Lcom/lge/wifi/impl/aggregation/VZWAggregation;)Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;->interrupt()V

    .line 158
    iget-object v2, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationMainThread;->this$0:Lcom/lge/wifi/impl/aggregation/VZWAggregation;

    # getter for: Lcom/lge/wifi/impl/aggregation/VZWAggregation;->subThread:Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;
    invoke-static {v2}, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->access$2(Lcom/lge/wifi/impl/aggregation/VZWAggregation;)Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;->join()V

    .line 131
    :goto_69
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 141
    :cond_6c
    iget-object v2, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationMainThread;->this$0:Lcom/lge/wifi/impl/aggregation/VZWAggregation;

    # getter for: Lcom/lge/wifi/impl/aggregation/VZWAggregation;->subThread:Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;
    invoke-static {v2}, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->access$2(Lcom/lge/wifi/impl/aggregation/VZWAggregation;)Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;

    move-result-object v2

    iget-wide v4, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationMainThread;->SUB_TIMEOUT_UNIT:J

    invoke-virtual {v2, v4, v5}, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;->join(J)V

    .line 142
    iget-object v2, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationMainThread;->this$0:Lcom/lge/wifi/impl/aggregation/VZWAggregation;

    # getter for: Lcom/lge/wifi/impl/aggregation/VZWAggregation;->subThread:Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;
    invoke-static {v2}, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->access$2(Lcom/lge/wifi/impl/aggregation/VZWAggregation;)Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;

    move-result-object v2

    iget-boolean v2, v2, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;->isComplete:Z

    if-eqz v2, :cond_8b

    .line 144
    const-string v2, "WiFiAggregation"

    const-string v3, "[Main Thread]Aggregation SubThread work complete."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catch Ljava/lang/InterruptedException; {:try_start_2c .. :try_end_88} :catch_89

    goto :goto_32

    :catch_89
    move-exception v2

    goto :goto_69

    .line 139
    :cond_8b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b
.end method
