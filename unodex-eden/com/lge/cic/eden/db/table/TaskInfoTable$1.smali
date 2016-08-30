.class Lcom/lge/cic/eden/db/table/TaskInfoTable$1;
.super Lcom/lge/cic/eden/utils/Singleton;
.source "TaskInfoTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/cic/eden/db/table/TaskInfoTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lge/cic/eden/utils/Singleton",
        "<",
        "Lcom/lge/cic/eden/db/table/TableInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/lge/cic/eden/utils/Singleton;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method protected create()Lcom/lge/cic/eden/db/table/TableInfo;
    .registers 2

    .prologue
    .line 33
    new-instance v0, Lcom/lge/cic/eden/db/table/TaskInfoTable;

    invoke-direct {v0}, Lcom/lge/cic/eden/db/table/TaskInfoTable;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lge/cic/eden/db/table/TaskInfoTable$1;->create()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v0

    return-object v0
.end method
