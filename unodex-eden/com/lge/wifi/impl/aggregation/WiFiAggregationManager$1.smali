.class Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager$1;
.super Ljava/lang/Object;
.source "WiFiAggregationManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .prologue
    .line 93
    const-string v0, "WiFiAggregation"

    const-string v1, " Binder death, we will clean-up rest thing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void
.end method
