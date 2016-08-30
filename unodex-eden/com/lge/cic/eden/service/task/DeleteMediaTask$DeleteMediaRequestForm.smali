.class public Lcom/lge/cic/eden/service/task/DeleteMediaTask$DeleteMediaRequestForm;
.super Ljava/lang/Object;
.source "DeleteMediaTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/cic/eden/service/task/DeleteMediaTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeleteMediaRequestForm"
.end annotation


# instance fields
.field private deletedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private requestId:J


# direct methods
.method public constructor <init>(JLjava/util/ArrayList;)V
    .registers 5
    .param p1, "requestId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p3, "deletedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-wide p1, p0, Lcom/lge/cic/eden/service/task/DeleteMediaTask$DeleteMediaRequestForm;->requestId:J

    .line 22
    iput-object p3, p0, Lcom/lge/cic/eden/service/task/DeleteMediaTask$DeleteMediaRequestForm;->deletedList:Ljava/util/ArrayList;

    .line 23
    return-void
.end method

.method static synthetic access$0(Lcom/lge/cic/eden/service/task/DeleteMediaTask$DeleteMediaRequestForm;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lge/cic/eden/service/task/DeleteMediaTask$DeleteMediaRequestForm;->deletedList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lge/cic/eden/service/task/DeleteMediaTask$DeleteMediaRequestForm;)J
    .registers 3

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/lge/cic/eden/service/task/DeleteMediaTask$DeleteMediaRequestForm;->requestId:J

    return-wide v0
.end method
