.class Lcom/lge/wifi/impl/mobilehotspot/MHPBatteryUsageEnabler$1;
.super Ljava/lang/Object;
.source "MHPBatteryUsageEnabler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/mobilehotspot/MHPBatteryUsageEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPBatteryUsageEnabler;


# direct methods
.method constructor <init>(Lcom/lge/wifi/impl/mobilehotspot/MHPBatteryUsageEnabler;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPBatteryUsageEnabler$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPBatteryUsageEnabler;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 34
    const-string v0, "MHPBatteryUsageEnabler"

    const-string v1, "[MHP_GOOKY] updateTimerCountdownSummary"

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPBatteryUsageEnabler$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPBatteryUsageEnabler;

    # invokes: Lcom/lge/wifi/impl/mobilehotspot/MHPBatteryUsageEnabler;->updateTimerCountdownSummary()V
    invoke-static {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPBatteryUsageEnabler;->access$0(Lcom/lge/wifi/impl/mobilehotspot/MHPBatteryUsageEnabler;)V

    .line 36
    return-void
.end method
