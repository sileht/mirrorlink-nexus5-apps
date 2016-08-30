.class public Lcom/lge/cic/eden/controller/notification/EdenNotificationManager;
.super Ljava/lang/Object;
.source "EdenNotificationManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final SHOW_NOTIFICATION_BAR:Z = false

.field private static final maxProgress:I = 0x64

.field public static final notificationId:I = 0x2


# instance fields
.field private completeNotificationBuilder:Landroid/app/Notification$Builder;

.field private final context:Landroid/content/Context;

.field private errorNotificationBuilder:Landroid/app/Notification$Builder;

.field private final logger:Lcom/lge/cic/eden/utils/Logger;

.field private notificationManager:Landroid/app/NotificationManager;

.field private progressNotificationBuilder:Landroid/app/Notification$Builder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-class v0, Lcom/lge/cic/eden/controller/notification/EdenNotificationManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/cic/eden/utils/Logger;->getLogger(Ljava/lang/String;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/cic/eden/controller/notification/EdenNotificationManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    .line 22
    iput-object v1, p0, Lcom/lge/cic/eden/controller/notification/EdenNotificationManager;->notificationManager:Landroid/app/NotificationManager;

    .line 23
    iput-object v1, p0, Lcom/lge/cic/eden/controller/notification/EdenNotificationManager;->progressNotificationBuilder:Landroid/app/Notification$Builder;

    .line 24
    iput-object v1, p0, Lcom/lge/cic/eden/controller/notification/EdenNotificationManager;->errorNotificationBuilder:Landroid/app/Notification$Builder;

    .line 25
    iput-object v1, p0, Lcom/lge/cic/eden/controller/notification/EdenNotificationManager;->completeNotificationBuilder:Landroid/app/Notification$Builder;

    .line 30
    iput-object p1, p0, Lcom/lge/cic/eden/controller/notification/EdenNotificationManager;->context:Landroid/content/Context;

    .line 60
    iget-object v0, p0, Lcom/lge/cic/eden/controller/notification/EdenNotificationManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "EdenNotificationManager  SHOW_NOTIFICATION_BAR? false"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method private getStackTraceArray(Ljava/lang/Exception;)[Ljava/lang/String;
    .registers 10
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 99
    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 100
    .local v3, "stackTraceElements":[Ljava/lang/StackTraceElement;
    array-length v5, v3

    new-array v4, v5, [Ljava/lang/String;

    .line 101
    .local v4, "stackTraceLines":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 102
    .local v0, "i":I
    array-length v6, v3

    const/4 v5, 0x0

    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_b
    if-lt v5, v6, :cond_e

    .line 105
    return-object v4

    .line 102
    :cond_e
    aget-object v2, v3, v5

    .line 103
    .local v2, "se":Ljava/lang/StackTraceElement;
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v1

    .line 102
    add-int/lit8 v5, v5, 0x1

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_b
.end method


# virtual methods
.method public notifyComplete(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "isVibrate"    # Z

    .prologue
    .line 86
    iget-object v0, p0, Lcom/lge/cic/eden/controller/notification/EdenNotificationManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "notifyComplete() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public notifyError(Ljava/lang/Exception;)V
    .registers 2
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 83
    return-void
.end method

.method public notifyProgress(ILjava/lang/String;)V
    .registers 6
    .param p1, "progress"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lge/cic/eden/controller/notification/EdenNotificationManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "% \ubd84\uc11d\uc911\uc785\ub2c8\ub2e4."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 71
    return-void
.end method
