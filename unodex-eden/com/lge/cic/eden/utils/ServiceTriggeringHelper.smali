.class public Lcom/lge/cic/eden/utils/ServiceTriggeringHelper;
.super Ljava/lang/Object;
.source "ServiceTriggeringHelper.java"


# static fields
.field private static final EDEN_MANAGING_PACKAGE:Ljava/lang/String; = "com.lge.cic.eden.service"

.field private static final EDEN_MANAGING_SERVICE:Ljava/lang/String; = "com.lge.cic.eden.service.EdenService"

.field private static final MSG_TYPE:Ljava/lang/String; = "MSG_TYPE"

.field private static final logger:Lcom/lge/cic/eden/utils/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 8
    const-class v0, Lcom/lge/cic/eden/utils/ServiceTriggeringHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/cic/eden/utils/Logger;->getLogger(Ljava/lang/String;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v0

    sput-object v0, Lcom/lge/cic/eden/utils/ServiceTriggeringHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public startAnalysisService(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    sget-object v1, Lcom/lge/cic/eden/utils/ServiceTriggeringHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "startAnalysisService()"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 17
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 18
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.lge.cic.eden.service"

    const-string v3, "com.lge.cic.eden.service.EdenService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 19
    const-string v1, "MSG_TYPE"

    const-string v2, "START_ANALYSIS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 21
    return-void
.end method

.method public stopAnalysisService(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    sget-object v1, Lcom/lge/cic/eden/utils/ServiceTriggeringHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "stopAnalysisService()"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 26
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 27
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.lge.cic.eden.service"

    const-string v3, "com.lge.cic.eden.service.EdenService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 28
    const-string v1, "MSG_TYPE"

    const-string v2, "STOP_ANALYSIS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 30
    return-void
.end method
