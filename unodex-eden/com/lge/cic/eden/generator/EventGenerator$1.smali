.class Lcom/lge/cic/eden/generator/EventGenerator$1;
.super Ljava/lang/Object;
.source "EventGenerator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/cic/eden/generator/EventGenerator;->process(Lcom/lge/cic/eden/generator/EventGenerator$ProgressListener;I)Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/lge/cic/eden/db/type/MediaInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/cic/eden/generator/EventGenerator;


# direct methods
.method constructor <init>(Lcom/lge/cic/eden/generator/EventGenerator;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/cic/eden/generator/EventGenerator$1;->this$0:Lcom/lge/cic/eden/generator/EventGenerator;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/lge/cic/eden/db/type/MediaInfo;Lcom/lge/cic/eden/db/type/MediaInfo;)I
    .registers 11
    .param p1, "lhs"    # Lcom/lge/cic/eden/db/type/MediaInfo;
    .param p2, "rhs"    # Lcom/lge/cic/eden/db/type/MediaInfo;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 160
    iget-wide v4, p1, Lcom/lge/cic/eden/db/type/MediaInfo;->dateTaken:J

    iget-wide v6, p2, Lcom/lge/cic/eden/db/type/MediaInfo;->dateTaken:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_c

    .line 173
    :cond_b
    :goto_b
    return v0

    .line 162
    :cond_c
    iget-wide v4, p1, Lcom/lge/cic/eden/db/type/MediaInfo;->dateTaken:J

    iget-wide v6, p2, Lcom/lge/cic/eden/db/type/MediaInfo;->dateTaken:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_16

    move v0, v1

    .line 163
    goto :goto_b

    .line 165
    :cond_16
    iget-object v3, p1, Lcom/lge/cic/eden/db/type/MediaInfo;->filePath:Ljava/lang/String;

    if-eqz v3, :cond_1e

    iget-object v3, p2, Lcom/lge/cic/eden/db/type/MediaInfo;->filePath:Ljava/lang/String;

    if-nez v3, :cond_20

    :cond_1e
    move v0, v2

    .line 166
    goto :goto_b

    .line 167
    :cond_20
    iget-object v3, p1, Lcom/lge/cic/eden/db/type/MediaInfo;->filePath:Ljava/lang/String;

    iget-object v4, p2, Lcom/lge/cic/eden/db/type/MediaInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_b

    .line 169
    iget-object v0, p1, Lcom/lge/cic/eden/db/type/MediaInfo;->filePath:Ljava/lang/String;

    iget-object v3, p2, Lcom/lge/cic/eden/db/type/MediaInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_36

    move v0, v1

    .line 170
    goto :goto_b

    :cond_36
    move v0, v2

    .line 173
    goto :goto_b
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 1
    check-cast p1, Lcom/lge/cic/eden/db/type/MediaInfo;

    check-cast p2, Lcom/lge/cic/eden/db/type/MediaInfo;

    invoke-virtual {p0, p1, p2}, Lcom/lge/cic/eden/generator/EventGenerator$1;->compare(Lcom/lge/cic/eden/db/type/MediaInfo;Lcom/lge/cic/eden/db/type/MediaInfo;)I

    move-result v0

    return v0
.end method
