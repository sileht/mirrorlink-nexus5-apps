.class public Lcom/lge/mirrorlink/MirrorLinkNotificationManager;
.super Ljava/lang/Object;
.source "MirrorLinkNotificationManager.java"


# static fields
.field public static final STATUS_DISABLED:I = 0x2

.field public static final STATUS_ENABLED:I = 0x1

.field public static final STATUS_NONE:I

.field private static mCurrentStatus:I

.field private static mId:I

.field private static mLastClientName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const/4 v0, 0x1

    sput v0, Lcom/lge/mirrorlink/MirrorLinkNotificationManager;->mId:I

    .line 17
    const/4 v0, 0x0

    sput v0, Lcom/lge/mirrorlink/MirrorLinkNotificationManager;->mCurrentStatus:I

    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mirrorlink/MirrorLinkNotificationManager;->mLastClientName:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static makeNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 34
    new-instance v6, Landroid/app/Notification$Builder;

    invoke-direct {v6, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 37
    const v7, 0x7f020002

    .line 34
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 40
    .local v0, "mBuilder":Landroid/app/Notification$Builder;
    new-instance v3, Landroid/content/Intent;

    const-class v6, Lcom/lge/mirrorlink/MirrorLinkSettings;

    invoke-direct {v3, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    .local v3, "resultIntent":Landroid/content/Intent;
    invoke-static {p0}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v5

    .line 48
    .local v5, "stackBuilder":Landroid/app/TaskStackBuilder;
    const-class v6, Lcom/lge/mirrorlink/MirrorLinkSettings;

    invoke-virtual {v5, v6}, Landroid/app/TaskStackBuilder;->addParentStack(Ljava/lang/Class;)Landroid/app/TaskStackBuilder;

    .line 50
    invoke-virtual {v5, v3}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    .line 51
    const/4 v6, 0x0

    const/high16 v7, 0x8000000

    invoke-virtual {v5, v6, v7}, Landroid/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v4

    .line 52
    .local v4, "resultPendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 54
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 55
    .local v2, "noti":Landroid/app/Notification;
    iget v6, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x20

    iput v6, v2, Landroid/app/Notification;->flags:I

    .line 58
    const-string/jumbo v6, "notification"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 60
    .local v1, "mNotificationManager":Landroid/app/NotificationManager;
    sget v6, Lcom/lge/mirrorlink/MirrorLinkNotificationManager;->mId:I

    invoke-virtual {v1, v6, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 31
    return-void
.end method

.method private static removeNotification(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    const-string/jumbo v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 67
    .local v0, "mNotificationManager":Landroid/app/NotificationManager;
    sget v1, Lcom/lge/mirrorlink/MirrorLinkNotificationManager;->mId:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 63
    return-void
.end method

.method public static updateNotification(Landroid/content/Context;ILjava/lang/String;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "status"    # I
    .param p2, "extra"    # Ljava/lang/String;

    .prologue
    .line 22
    if-eqz p1, :cond_5

    const/4 v2, 0x2

    if-ne p1, v2, :cond_9

    .line 23
    :cond_5
    invoke-static {p0}, Lcom/lge/mirrorlink/MirrorLinkNotificationManager;->removeNotification(Landroid/content/Context;)V

    .line 20
    :cond_8
    :goto_8
    return-void

    .line 24
    :cond_9
    const/4 v2, 0x1

    if-ne p1, v2, :cond_8

    .line 25
    const/high16 v2, 0x7f090000

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 26
    .local v1, "title":Ljava/lang/String;
    const v2, 0x7f09000b

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "description":Ljava/lang/String;
    invoke-static {p0, v1, v0}, Lcom/lge/mirrorlink/MirrorLinkNotificationManager;->makeNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method
